package integration_tests

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	ptesting "github.com/pulumi/pulumi/sdk/v3/go/common/testing"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func configureAutomationDartProject(t *testing.T, e *ptesting.Environment) {
	t.Helper()

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	t.Setenv("PATH", languagePluginPath+string(os.PathListSeparator)+os.Getenv("PATH"))
	t.Setenv("PULUMI_CONFIG_PASSPHRASE", "pulumi-dart-dev")

	e.ImportDirectory(filepath.Join("automation", "dart"))
	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())

	require.NoError(t, rewritePulumiDependency(e.CWD))
	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)
}

func configureAutomationDartProjectService(t *testing.T, e *ptesting.Environment) {
	t.Helper()

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	t.Setenv("PATH", languagePluginPath+string(os.PathListSeparator)+os.Getenv("PATH"))
	t.Setenv("PULUMI_CONFIG_PASSPHRASE", "pulumi-dart-dev")

	e.ImportDirectory(filepath.Join("automation", "dart"))
	e.RunCommand("pulumi", "login")

	require.NoError(t, rewritePulumiDependency(e.CWD))
	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)
}

func runAutomationDriver(t *testing.T, e *ptesting.Environment) map[string]any {
	t.Helper()

	stdout, stderr, err := e.GetCommandResultsIn(e.CWD, "dart", "run", "bin/automation_driver.dart")
	require.NoError(t, err, "stdout: %s\nstderr: %s", stdout, stderr)
	return parseAutomationResult(t, stdout)
}

func runAutomationVersionDriver(t *testing.T, e *ptesting.Environment) map[string]any {
	t.Helper()

	stdout, stderr, err := e.GetCommandResultsIn(e.CWD, "dart", "run", "bin/version_driver.dart")
	require.NoError(t, err, "stdout: %s\nstderr: %s", stdout, stderr)
	return parseAutomationResult(t, stdout)
}

func runAutomationEnvironmentDriver(t *testing.T, e *ptesting.Environment) map[string]any {
	t.Helper()

	stdout, stderr, err := e.GetCommandResultsIn(e.CWD, "dart", "run", "bin/environment_driver.dart")
	require.NoError(t, err, "stdout: %s\nstderr: %s", stdout, stderr)
	return parseAutomationResult(t, stdout)
}

func runAutomationRemoteDriver(t *testing.T, e *ptesting.Environment) map[string]any {
	t.Helper()

	stdout, stderr, err := e.GetCommandResultsIn(e.CWD, "dart", "run", "bin/remote_driver.dart")
	require.NoError(t, err, "stdout: %s\nstderr: %s", stdout, stderr)
	return parseAutomationResult(t, stdout)
}

func runAutomationRemoteLifecycleDriver(t *testing.T, e *ptesting.Environment) map[string]any {
	t.Helper()

	stdout, stderr, err := e.GetCommandResultsIn(e.CWD, "dart", "run", "bin/remote_lifecycle_driver.dart")
	require.NoError(t, err, "stdout: %s\nstderr: %s", stdout, stderr)
	return parseAutomationResult(t, stdout)
}

func parseAutomationResult(t *testing.T, stdout string) map[string]any {
	t.Helper()

	const marker = "AUTOMATION_RESULT:"
	for _, line := range strings.Split(stdout, "\n") {
		line = strings.TrimSpace(line)
		if strings.HasPrefix(line, marker) {
			raw := strings.TrimPrefix(line, marker)
			var result map[string]any
			require.NoError(t, json.Unmarshal([]byte(raw), &result))
			return result
		}
	}

	t.Fatalf("missing automation result marker in stdout:\n%s", stdout)
	return nil
}

func TestAutomationLocalWorkspaceLifecycleDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProject(t, e)
	result := runAutomationDriver(t, e)

	assert.Equal(t, float64(0), result["upExitCode"])
	assert.Equal(t, "ok", result["outputStatus"])
}

func TestAutomationStackLifecycleAndHistoryDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProject(t, e)
	result := runAutomationDriver(t, e)

	historyCount, ok := result["historyCount"].(float64)
	require.True(t, ok)
	assert.GreaterOrEqual(t, historyCount, float64(1))
	assert.Equal(t, true, result["infoPresent"])
}

func TestAutomationConfigAndConfigFileDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProject(t, e)
	result := runAutomationDriver(t, e)

	assert.Equal(t, "value", result["configValue"])
	assert.Equal(t, true, result["missingAfterRemove"])
}

func TestAutomationCommandAndVersionValidationDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProject(t, e)
	result := runAutomationVersionDriver(t, e)

	assert.NotEmpty(t, result["resolvedPulumiVersion"])
	assert.Equal(t, true, result["allVersionValidationCasesPassed"])
}

func TestAutomationEnvironmentManagementDart(t *testing.T) {
	if os.Getenv("PULUMI_ACCESS_TOKEN") == "" {
		t.Skip("requires Pulumi service access token (ESC env commands are cloud-only; file backend is unsupported)")
	}

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProjectService(t, e)

	envName := fmt.Sprintf("automation-dart-env-%d", time.Now().UnixNano())
	e.RunCommand("pulumi", "env", "init", envName, "--non-interactive")
	defer func() {
		e.RunCommand("pulumi", "env", "rm", envName, "--yes", "--non-interactive")
	}()

	e.Env = append(e.Env, "AUTOMATION_ESC_ENV="+envName)
	result := runAutomationEnvironmentDriver(t, e)

	assert.Equal(t, true, result["environmentAdded"])
	assert.Equal(t, true, result["environmentRemoved"])
}

func TestAutomationRemoteWorkspaceDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProject(t, e)
	result := runAutomationRemoteDriver(t, e)

	assert.Equal(t, float64(3), result["requestCount"])
	assert.Equal(t, true, result["selectContainsRemote"])
	assert.Equal(t, true, result["previewContainsRemote"])
	assert.Equal(t, true, result["upContainsRemote"])
	assert.Equal(t, true, result["experimentalEnvSet"])
	assert.Equal(t, true, result["remoteEnvFlagPresent"])
	assert.Equal(t, true, result["remoteEnvSecretFlagPresent"])
}

func TestAutomationRemoteWorkspaceLifecycleDart(t *testing.T) {
	if os.Getenv("PULUMI_ACCESS_TOKEN") == "" {
		t.Skip("requires Pulumi service access token (remote workspace lifecycle is cloud-only)")
	}
	if os.Getenv("PULUMI_TEST_DEPLOYMENTS_API") == "" {
		t.Skip("requires Pulumi deployments API test environment (remote deployments endpoint)")
	}

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	configureAutomationDartProjectService(t, e)

	org := os.Getenv("PULUMI_TEST_ORG")
	if org == "" {
		stdout, _ := e.RunCommand("pulumi", "whoami")
		org = strings.TrimSpace(stdout)
	}
	require.NotEmpty(t, org)

	stackName := fmt.Sprintf("%s/automation-dart-remote/dev-%d", org, time.Now().UnixNano())
	e.Env = append(e.Env, "AUTOMATION_REMOTE_STACK="+stackName)
	result := runAutomationRemoteLifecycleDriver(t, e)

	assert.Equal(t, float64(0), result["upExitCode"])
	assert.Equal(t, float64(0), result["previewExitCode"])
	assert.Equal(t, float64(0), result["refreshExitCode"])
	assert.Equal(t, float64(0), result["destroyExitCode"])
	assert.Equal(t, "foo", result["outputStatic"])
	assert.Equal(t, "abc", result["outputConfig"])
	assert.Equal(t, "secret", result["outputSecret"])
}
