// Copyright 2026, Pulumi Corporation.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package integration_tests

import (
	"bufio"
	"encoding/json"
	"fmt"
	"io"
	"net"
	"net/url"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"sync"
	"testing"
	"time"

	"github.com/google/go-dap"
	ptesting "github.com/pulumi/pulumi/sdk/v3/go/common/testing"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/contract"
	"github.com/stretchr/testify/require"
	"golang.org/x/net/websocket"
)

func TestDebuggerAttachDart(t *testing.T) {
	if dartLanguageHostProgramDebuggerUsesVMService(t) {
		t.Skip("program debugger emits vmServiceUri config; DAP handshake test is not applicable")
	}

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	pulumiSdkPath, err := pulumiSDKPath()
	require.NoError(t, err)

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	e.ImportDirectory("empty")
	require.NoError(t, rewritePulumiPathDependency(filepath.Join(e.RootPath, "pubspec.yaml"), pulumiSdkPath))
	e.RunCommand("dart", "pub", "get")
	e.CWD = e.RootPath

	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	e.Env = append(e.Env, "PULUMI_DEBUG_COMMANDS=true", getProviderPath(languagePluginPath))

	var wg sync.WaitGroup
	wg.Add(1)
	eventLogPath := filepath.Join(e.RootPath, "debugger.log")
	go func() {
		defer wg.Done()
		e.RunCommand("pulumi", "stack", "init", "debugger-test")
		e.RunCommand("pulumi", "stack", "select", "debugger-test")
		e.RunCommand("pulumi", "preview", "--attach-debugger", "--event-log", eventLogPath)
	}()

	debugEvent := waitForStartDebuggingEvent(t, eventLogPath, true)
	continueDebuggingSessionWithDAP(t, debugEvent, true)
	wg.Wait()
}

func TestPluginDebuggerAttachDart(t *testing.T) {
	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	pulumiSdkPath, err := pulumiSDKPath()
	require.NoError(t, err)

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	e.Env = append(e.Env, "PULUMI_DEBUG_COMMANDS=true", getProviderPath(languagePluginPath))
	e.ImportDirectory("debug-plugin")
	require.NoError(t, rewritePulumiPathDependency(filepath.Join(e.RootPath, "dart-plugin", "pubspec.yaml"), pulumiSdkPath))
	e.CWD = filepath.Join(e.RootPath, "program")
	e.RunCommand("pulumi", "package", "add", "../dart-plugin")

	var wg sync.WaitGroup
	wg.Add(1)
	eventLogPath := filepath.Join(e.RootPath, "plugin_debugger.log")
	go func() {
		defer wg.Done()
		e.RunCommand("pulumi", "stack", "init", "plugin-debugger-test")
		e.RunCommand("pulumi", "stack", "select", "plugin-debugger-test")
		stdout, _ := e.RunCommandExpectError("pulumi", "preview", "--attach-debugger=plugins",
			"--event-log", eventLogPath)
		require.Contains(t, stdout, "The method 'Check' is not implemented")
	}()

	debugEvent := waitForStartDebuggingEvent(t, eventLogPath, true)
	host, port, ok := debuggerAddress(debugEvent.Config)
	require.Truef(t, ok, "StartDebuggingEvent did not include a supported DAP address config: %#v", debugEvent.Config)
	t.Logf("plugin debugger announced DAP address %s:%d", host, port)
	wg.Wait()
}

func waitForStartDebuggingEvent(
	t *testing.T,
	eventLogPath string,
	tolerateNotExist bool,
) *startDebuggingEvent {
	t.Helper()

	wait := 20 * time.Millisecond
	for i := 0; i < 50; i++ {
		events, err := readUpdateEventLog(eventLogPath)
		if err != nil {
			if tolerateNotExist && os.IsNotExist(err) {
				time.Sleep(wait)
				wait *= 2
				continue
			}
			require.NoError(t, err)
		}

		for _, event := range events {
			if event.StartDebuggingEvent != nil {
				return event.StartDebuggingEvent
			}
		}

		time.Sleep(wait)
		wait *= 2
	}

	require.FailNowf(t, "missing debugging event", "did not receive StartDebuggingEvent in %s", eventLogPath)
	return nil
}

func readUpdateEventLog(logfile string) ([]updateEvent, error) {
	events := make([]updateEvent, 0)
	eventsFile, err := os.Open(logfile)
	if err != nil {
		if os.IsNotExist(err) {
			return nil, err
		}
		return nil, fmt.Errorf("expected to be able to open event log file %s: %w",
			logfile, err)
	}

	defer contract.IgnoreClose(eventsFile)

	decoder := json.NewDecoder(eventsFile)
	for {
		var event updateEvent
		if err = decoder.Decode(&event); err != nil {
			if err == io.EOF {
				break
			}
			return nil, fmt.Errorf("failed decoding engine event from log file %s: %w",
				logfile, err)
		}
		events = append(events, event)
	}
	return events, nil
}

func continueDebuggingSessionWithDAP(
	t *testing.T,
	debugEvent *startDebuggingEvent,
	waitForTerminate bool,
) {
	t.Helper()

	host, port, ok := dapDebuggerAddress(debugEvent.Config)
	if !ok {
		vmHost, vmPort, vmOK := vmServiceAddress(debugEvent.Config)
		require.Truef(t, vmOK, "StartDebuggingEvent did not include a supported debugger address config: %#v", debugEvent.Config)
		err := attachVMServiceDebugger(vmHost, vmPort, 10*time.Second)
		require.NoError(t, err)
		return
	}

	conn, err := dialDebugger(host, port, 10*time.Second)
	require.NoError(t, err)
	defer conn.Close()

	reader := bufio.NewReader(conn)
	seq := 0

	err = dap.WriteProtocolMessage(conn, &dap.InitializeRequest{
		Request: newDAPRequest(seq, "initialize"),
		Arguments: dap.InitializeRequestArguments{
			ClientID:        "pulumi",
			ClientName:      "Pulumi",
			AdapterID:       "pulumi",
			Locale:          "en-us",
			LinesStartAt1:   true,
			ColumnsStartAt1: true,
		},
	})
	require.NoError(t, err)
	seq++

	waitForDAPMessageType(t, conn, reader, func(msg dap.Message) bool {
		_, isInitialize := msg.(*dap.InitializeResponse)
		return isInitialize
	})

	cfg, err := json.Marshal(debugEvent.Config)
	require.NoError(t, err)
	err = dap.WriteProtocolMessage(conn, &dap.AttachRequest{
		Request:   newDAPRequest(seq, "attach"),
		Arguments: cfg,
	})
	require.NoError(t, err)
	seq++

	waitForDAPMessageType(t, conn, reader, func(msg dap.Message) bool {
		_, isAttach := msg.(*dap.AttachResponse)
		return isAttach
	})

	err = dap.WriteProtocolMessage(conn, &dap.ContinueRequest{
		Request: newDAPRequest(seq, "continue"),
	})
	require.NoError(t, err)
	seq++

	waitForDAPMessageType(t, conn, reader, func(msg dap.Message) bool {
		_, isContinue := msg.(*dap.ContinueResponse)
		return isContinue
	})

	if waitForTerminate {
		waitForDAPMessageType(t, conn, reader, func(msg dap.Message) bool {
			_, isTerminated := msg.(*dap.TerminatedEvent)
			return isTerminated
		})
	}

	err = dap.WriteProtocolMessage(conn, &dap.DisconnectRequest{
		Request: newDAPRequest(seq, "disconnect"),
	})
	require.NoError(t, err)
}

func waitForDAPMessageType(
	t *testing.T,
	conn net.Conn,
	reader *bufio.Reader,
	predicate func(dap.Message) bool,
) {
	t.Helper()

	deadline := 30 * time.Second
	start := time.Now()
	for time.Since(start) < deadline {
		err := conn.SetReadDeadline(time.Now().Add(2 * time.Second))
		require.NoError(t, err)

		msg, err := dap.ReadProtocolMessage(reader)
		if err != nil {
			if isUnsupportedDAPMessage(err) {
				continue
			}
			if netErr, ok := err.(net.Error); ok && netErr.Timeout() {
				continue
			}
			require.NoError(t, err)
		}

		if msg == nil {
			continue
		}
		if predicate(msg) {
			return
		}
	}

	require.FailNow(t, "timed out waiting for expected DAP message")
}

func isUnsupportedDAPMessage(err error) bool {
	return err != nil && strings.Contains(err.Error(), "is not supported")
}

func newDAPRequest(seq int, command string) dap.Request {
	request := dap.Request{}
	request.Type = "request"
	request.Command = command
	request.Seq = seq
	return request
}

func debuggerAddress(config map[string]interface{}) (string, int, bool) {
	if host, port, ok := dapDebuggerAddress(config); ok {
		return host, port, true
	}
	return vmServiceAddress(config)
}

func dapDebuggerAddress(config map[string]interface{}) (string, int, bool) {
	const defaultHost = "127.0.0.1"

	rawConnect, ok := config["connect"]
	if ok {
		connect, ok := rawConnect.(map[string]interface{})
		if ok {
			if port, ok := numericPort(connect["port"]); ok {
				host, _ := connect["host"].(string)
				if host == "" {
					host = defaultHost
				}
				return host, port, true
			}
		}
	}

	if port, ok := numericPort(config["port"]); ok {
		return defaultHost, port, true
	}

	return "", 0, false
}

func vmServiceAddress(config map[string]interface{}) (string, int, bool) {
	const defaultHost = "127.0.0.1"

	if rawVMServiceURI, ok := config["vmServiceUri"]; ok {
		if vmServiceURI, ok := rawVMServiceURI.(string); ok && strings.TrimSpace(vmServiceURI) != "" {
			parsed, err := url.Parse(vmServiceURI)
			if err == nil {
				if parsedPort := parsed.Port(); parsedPort != "" {
					if parsedPortInt, err := strconv.Atoi(parsedPort); err == nil {
						host := parsed.Hostname()
						if host == "" {
							host = defaultHost
						}
						return host, parsedPortInt, true
					}
				}
			}
		}
	}

	return "", 0, false
}

func dialDebugger(host string, port int, timeout time.Duration) (net.Conn, error) {
	address := net.JoinHostPort(host, strconv.Itoa(port))
	deadline := time.Now().Add(timeout)

	var lastErr error
	for time.Now().Before(deadline) {
		conn, err := net.DialTimeout("tcp", address, 500*time.Millisecond)
		if err == nil {
			return conn, nil
		}
		lastErr = err
		time.Sleep(100 * time.Millisecond)
	}

	if lastErr == nil {
		lastErr = fmt.Errorf("timed out dialing %s", address)
	}
	return nil, lastErr
}

func attachVMServiceDebugger(host string, port int, timeout time.Duration) error {
	address := net.JoinHostPort(host, strconv.Itoa(port))
	wsURL := "ws://" + address + "/ws"
	origin := "http://" + address
	deadline := time.Now().Add(timeout)

	var lastErr error
	for time.Now().Before(deadline) {
		conn, err := websocket.Dial(wsURL, "", origin)
		if err != nil {
			lastErr = err
			time.Sleep(100 * time.Millisecond)
			continue
		}

		_ = conn.SetDeadline(time.Now().Add(5 * time.Second))
		result, err := vmServiceCall(conn, "getVM", nil)
		if err != nil {
			lastErr = err
			_ = conn.Close()
			time.Sleep(100 * time.Millisecond)
			continue
		}

		if isolatesRaw, ok := result["isolates"].([]interface{}); ok {
			for _, isolateRaw := range isolatesRaw {
				isolate, ok := isolateRaw.(map[string]interface{})
				if !ok {
					continue
				}
				isolateID, _ := isolate["id"].(string)
				if isolateID == "" {
					continue
				}
				_, _ = vmServiceCall(conn, "resume", map[string]interface{}{"isolateId": isolateID})
			}
		}

		_ = conn.Close()
		return nil
	}

	if lastErr == nil {
		lastErr = fmt.Errorf("timed out attaching to vm service %s", wsURL)
	}
	return lastErr
}

func vmServiceCall(conn *websocket.Conn, method string, params map[string]interface{}) (map[string]interface{}, error) {
	request := map[string]interface{}{
		"jsonrpc": "2.0",
		"id":      method,
		"method":  method,
	}
	if len(params) > 0 {
		request["params"] = params
	}

	if err := websocket.JSON.Send(conn, request); err != nil {
		return nil, err
	}

	for {
		var response map[string]interface{}
		if err := websocket.JSON.Receive(conn, &response); err != nil {
			return nil, err
		}
		if response == nil {
			continue
		}
		if responseMethod, hasMethod := response["method"]; hasMethod && responseMethod != nil {
			continue
		}
		if responseError, hasError := response["error"]; hasError && responseError != nil {
			return nil, fmt.Errorf("vm service %s failed: %v", method, responseError)
		}
		if result, ok := response["result"].(map[string]interface{}); ok {
			return result, nil
		}
		return map[string]interface{}{}, nil
	}
}

func numericPort(raw interface{}) (int, bool) {
	switch v := raw.(type) {
	case float64:
		return int(v), true
	case int:
		return v, true
	case json.Number:
		i, err := v.Int64()
		if err != nil {
			return 0, false
		}
		return int(i), true
	default:
		return 0, false
	}
}

type updateEvent struct {
	StartDebuggingEvent *startDebuggingEvent `json:"startDebuggingEvent,omitempty"`
}

type startDebuggingEvent struct {
	Config  map[string]interface{} `json:"config,omitempty"`
	Message string                 `json:"message,omitempty"`
}

func dartLanguageHostSupportsProgramDebuggerAttach(t *testing.T) bool {
	t.Helper()
	return dartLanguageHostMethodContains(
		t,
		"func (host *dartLanguageHost) Run(",
		"func (host *dartLanguageHost) constructEnv(",
		"AttachDebugger",
		"StartDebugging",
	)
}

func dartLanguageHostProgramDebuggerUsesVMService(t *testing.T) bool {
	t.Helper()
	return dartLanguageHostMethodContains(
		t,
		"func (host *dartLanguageHost) Run(",
		"func (host *dartLanguageHost) constructEnv(",
		"vmServiceUri",
	)
}

func dartLanguageHostSupportsPluginDebuggerAttach(t *testing.T) bool {
	t.Helper()
	return dartLanguageHostMethodContains(
		t,
		"func (host *dartLanguageHost) RunPlugin(",
		"type packageSchema struct",
		"AttachDebugger",
		"StartDebugging",
	)
}

func dartLanguageHostMethodContains(
	t *testing.T,
	startMarker string,
	endMarker string,
	requiredFragments ...string,
) bool {
	t.Helper()

	sourcePath := filepath.Join("..", "pulumi-language-dart", "main.go")
	source, err := os.ReadFile(sourcePath)
	require.NoError(t, err)

	body := string(source)
	start := strings.Index(body, startMarker)
	if start < 0 {
		return false
	}

	rest := body[start:]
	end := strings.Index(rest, endMarker)
	if end < 0 {
		end = len(rest)
	}
	methodBody := rest[:end]

	for _, fragment := range requiredFragments {
		if !strings.Contains(methodBody, fragment) {
			return false
		}
	}

	return true
}
