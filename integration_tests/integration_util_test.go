// Copyright 2016-2022, Pulumi Corporation.
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

// The linter doesn't see the uses since the consumers are conditionally compiled tests.
//
// nolint:unused,deadcode,varcheck
package integration_tests

import (
	"bufio"
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"
	"testing"
	"time"

	"github.com/pulumi/pulumi/pkg/v3/engine"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/pulumi/pulumi/sdk/v3/go/common/apitype"
	"github.com/pulumi/pulumi/sdk/v3/go/common/resource"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/contract"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"gopkg.in/yaml.v3"
)

const WindowsOS = "windows"

func pulumiSubmoduleRoot() (string, error) {
	candidates := make([]string, 0, 2)

	if out, err := exec.Command("git", "rev-parse", "--show-toplevel").Output(); err == nil {
		repoRoot := strings.TrimSpace(string(out))
		if repoRoot != "" {
			candidates = append(candidates, filepath.Join(repoRoot, "pulumi"))
		}
	}

	if root, err := filepath.Abs("../pulumi"); err == nil {
		candidates = append(candidates, root)
	}

	for _, root := range candidates {
		info, err := os.Stat(root)
		if err == nil && info.IsDir() {
			return root, nil
		}
	}

	if len(candidates) > 0 {
		return "", fmt.Errorf("pulumi submodule is not available at %s", candidates[0])
	}
	return "", fmt.Errorf("unable to resolve pulumi submodule path")
}

func pulumiSubmodulePath(parts ...string) (string, error) {
	root, err := pulumiSubmoduleRoot()
	if err != nil {
		return "", err
	}
	path := filepath.Join(append([]string{root}, parts...)...)
	if _, err := os.Stat(path); err != nil {
		return "", fmt.Errorf("pulumi submodule path is not available: %s (%w)", path, err)
	}
	return path, nil
}

func testProviderPath() string {
	path, err := pulumiSubmodulePath("tests", "testprovider")
	if err != nil {
		return "testprovider"
	}
	return path
}

// assertPerfBenchmark implements the integration.TestStatsReporter interface, and reports test
// failures when a scenario exceeds the provided threshold.
type assertPerfBenchmark struct {
	T                  *testing.T
	MaxPreviewDuration time.Duration
	MaxUpdateDuration  time.Duration
}

func prepareDartProject(projInfo *engine.Projinfo) error {
	cwd, _, err := projInfo.GetPwdMain()
	if err != nil {
		return err
	}

	pulumiSdkPath, err := filepath.Abs("../pulumi-dart")
	if err != nil {
		return err
	}

	err = filepath.Walk(cwd, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}

		if info.IsDir() && info.Name() == "build" {
			err = os.RemoveAll(path)
			if err != nil {
				return err
			}
			return filepath.SkipDir
		}

		if info.Name() == "pubspec.yaml" {
			// Read the pubspec.yaml file
			data, err := os.ReadFile(path)
			if err != nil {
				return err
			}

			// Parse the YAML
			var pubspec map[string]interface{}
			err = yaml.Unmarshal(data, &pubspec)
			if err != nil {
				return err
			}

			// Update the dependencies
			dependencies, ok := pubspec["dependencies"].(map[string]interface{})
			if !ok {
				dependencies = make(map[string]interface{})
				pubspec["dependencies"] = dependencies
			}

			// Remove existing Pulumi dependency and add the new one
			delete(dependencies, "pulumi")
			dependencies["pulumi"] = map[string]string{
				"path": pulumiSdkPath,
			}

			// Marshal the updated YAML
			updatedData, err := yaml.Marshal(pubspec)
			if err != nil {
				return err
			}

			// Write the updated content back to the file
			err = os.WriteFile(path, updatedData, 0644)
			if err != nil {
				return err
			}

			// Run 'dart pub get' to update dependencies
			cmd := exec.Command("dart", "pub", "get")
			cmd.Dir = filepath.Dir(path)
			err = cmd.Run()
			if err != nil {
				return fmt.Errorf("failed to run 'dart pub get': %v", err)
			}
		}

		return nil
	})

	return err
}

func getProviderPath(providerDir string) string {
	environ := os.Environ()
	for _, env := range environ {
		split := strings.SplitN(env, "=", 2)
		contract.Assertf(len(split) == 2, "expected split to be of length 2")
		key, value := split[0], split[1]

		// Case-insensitive compare, as Windows will normally be "Path", not "PATH".
		if strings.EqualFold(key, "PATH") {
			// Prepend the provider directory to PATH so any calls to run
			// pulumi-language-dotnet pick up the locally built one.
			path := fmt.Sprintf("%s=%s%s%s", key, providerDir, string(os.PathListSeparator), value)
			return path
		}
	}
	return fmt.Sprintf("PATH=%s", providerDir)
}

func testDartProgram(t *testing.T, options *integration.ProgramTestOptions) {
	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	assert.NoError(t, err)
	existingPrepare := options.PrepareProject
	options.PrepareProject = func(projInfo *engine.Projinfo) error {
		if err := prepareDartProject(projInfo); err != nil {
			return err
		}
		if existingPrepare != nil {
			return existingPrepare(projInfo)
		}
		return nil
	}
	options.Env = append(options.Env, getProviderPath(languagePluginPath))
	integration.ProgramTest(t, options)
}

func (t assertPerfBenchmark) ReportCommand(stats integration.TestCommandStats) {
	var maxDuration *time.Duration
	if strings.HasPrefix(stats.StepName, "pulumi-preview") {
		maxDuration = &t.MaxPreviewDuration
	}
	if strings.HasPrefix(stats.StepName, "pulumi-update") {
		maxDuration = &t.MaxUpdateDuration
	}

	if maxDuration != nil && *maxDuration != 0 {
		if stats.ElapsedSeconds < maxDuration.Seconds() {
			t.T.Logf(
				"Test step %q was under threshold. %.2fs (max %.2fs)",
				stats.StepName, stats.ElapsedSeconds, maxDuration.Seconds())
		} else {
			t.T.Errorf(
				"Test step %q took longer than expected. %.2fs vs. max %.2fs",
				stats.StepName, stats.ElapsedSeconds, maxDuration.Seconds())
		}
	}
}

func testComponentSlowLocalProvider(t *testing.T) integration.LocalDependency {
	return integration.LocalDependency{
		Package: "testcomponent",
		Path:    filepath.Join("construct_component_slow", "testcomponent-go"),
	}
}

// Test throwing an error within an apply in a remote component provider.
func testConstructErrorApply(t *testing.T, lang string) {
	const testDir = "construct_component_error_apply"

	stderr := &bytes.Buffer{}
	expectedError := "intentional error from within an apply"

	localProvider := integration.LocalDependency{
		Package: "testcomponent",
		Path:    filepath.Join(testDir, "testcomponent-go"),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		Stderr:         stderr,
		ExpectFailure:  true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Contains(t, stderr.String(), expectedError)
		},
	})
}

func testComponentProviderSchema(t *testing.T, path string) {
	t.Parallel()

	tests := []struct {
		name          string
		env           []string
		version       int32
		expected      string
		expectedError string
	}{
		{
			name:     "Default",
			expected: "{}",
		},
		{
			name:     "Schema",
			env:      []string{"INCLUDE_SCHEMA=true"},
			expected: `{"hello": "world"}`,
		},
		{
			name:          "Invalid Version",
			version:       15,
			expectedError: "unsupported schema version 15",
		},
	}
	for _, test := range tests {
		test := test
		t.Run(test.name, func(t *testing.T) {
			t.Parallel()
			// Start the plugin binary.
			cmd := exec.Command(path, "ignored")
			cmd.Env = append(os.Environ(), test.env...)
			stdout, err := cmd.StdoutPipe()
			assert.NoError(t, err)
			err = cmd.Start()
			assert.NoError(t, err)
			defer func() {
				// Ignore the error as it may fail with access denied on Windows.
				cmd.Process.Kill() // nolint: errcheck
			}()

			// Read the port from standard output.
			reader := bufio.NewReader(stdout)
			bytes, err := reader.ReadBytes('\n')
			assert.NoError(t, err)
			port := strings.TrimSpace(string(bytes))

			// Create a connection to the server.
			conn, err := grpc.Dial("127.0.0.1:"+port, grpc.WithInsecure(), rpcutil.GrpcChannelOptions())
			assert.NoError(t, err)
			client := pulumirpc.NewResourceProviderClient(conn)

			// Call GetSchema and verify the results.
			resp, err := client.GetSchema(context.Background(), &pulumirpc.GetSchemaRequest{Version: test.version})
			if test.expectedError != "" {
				assert.Error(t, err)
				assert.Contains(t, err.Error(), test.expectedError)
			} else {
				assert.Equal(t, test.expected, resp.GetSchema())
			}
		})
	}
}

// Test remote component inputs properly handle unknowns.
func testConstructUnknown(t *testing.T, lang string) {
	const testDir = "construct_component_unknown"
	componentDir := "testcomponent-go"

	localProviders := []integration.LocalDependency{
		{Package: "testprovider", Path: testProviderPath()},
		{Package: "testcomponent", Path: filepath.Join(testDir, componentDir)},
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    filepath.Join(testDir, lang),
		LocalProviders:         localProviders,
		SkipRefresh:            true,
		SkipPreview:            false,
		SkipUpdate:             true,
		SkipExportImport:       true,
		SkipEmptyPreviewUpdate: true,
		Quick:                  false,
	})
}

// Test methods properly handle unknowns.
func testConstructMethodsUnknown(t *testing.T, lang string) {
	const testDir = "construct_component_methods_unknown"
	componentDir := "testcomponent-go"

	localProviders := []integration.LocalDependency{
		{Package: "testprovider", Path: testProviderPath()},
		{Package: "testcomponent", Path: filepath.Join(testDir, componentDir)},
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                    filepath.Join(testDir, lang),
		LocalProviders:         localProviders,
		SkipRefresh:            true,
		SkipPreview:            false,
		SkipUpdate:             true,
		SkipExportImport:       true,
		SkipEmptyPreviewUpdate: true,
		Quick:                  false,
	})
}

// Test methods that create resources.
func testConstructMethodsResources(t *testing.T, lang string) {
	const testDir = "construct_component_methods_resources"
	componentDir := "testcomponent-go"

	localProviders := []integration.LocalDependency{
		{Package: "testprovider", Path: testProviderPath()},
		{Package: "testcomponent", Path: filepath.Join(testDir, componentDir)},
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		LocalProviders: localProviders,
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stackInfo.Deployment)
			assert.Equal(t, 6, len(stackInfo.Deployment.Resources))
			var hasExpectedResource bool
			var result string
			for _, res := range stackInfo.Deployment.Resources {
				if res.URN.Name() == "myrandom" {
					hasExpectedResource = true
					result = res.Outputs["result"].(string)
					assert.Equal(t, float64(10), res.Inputs["length"])
					assert.Equal(t, 10, len(result))
				}
			}
			assert.True(t, hasExpectedResource)
			assert.Equal(t, result, stackInfo.Outputs["result"])
		},
	})
}

// Test failures returned from methods are observed.
func testConstructMethodsErrors(t *testing.T, lang string) {
	const testDir = "construct_component_methods_errors"
	componentDir := "testcomponent-go"

	stderr := &bytes.Buffer{}
	expectedError := "the failure reason (the failure property)"

	localProvider := integration.LocalDependency{
		Package: "testcomponent", Path: filepath.Join(testDir, componentDir),
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		Stderr:         stderr,
		ExpectFailure:  true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			output := stderr.String()
			assert.Contains(t, output, expectedError)
		},
	})
}

// Test failures returned from construct.
func testConstructFailures(t *testing.T, lang string) {
	const testDir = "construct_component_failures"

	stderr := &bytes.Buffer{}

	localProvider := integration.LocalDependency{
		Package: "testcomponent",
		Path:    filepath.Join(testDir, "testcomponent-go"),
	}
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		Stderr:         stderr,
		ExpectFailure:  true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			output := stderr.String()
			assert.Contains(t, output, "failing for a reason")
			assert.Contains(t, output, "property foo")
			assert.Contains(t, output, "the failure reason")
		},
	})
}

// Tests methods work when there is an explicit provider for another provider set on the component.
func testConstructMethodsProvider(t *testing.T, lang string) {
	const testDir = "construct_component_methods_provider"
	componentDir := "testcomponent-go"

	localProvider := integration.LocalDependency{
		Package: "testcomponent", Path: filepath.Join(testDir, componentDir),
	}
	testProvider := integration.LocalDependency{
		Package: "testprovider", Path: testProviderPath(),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		LocalProviders: []integration.LocalDependency{localProvider, testProvider},
		Quick:          true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "Hello World, Alice!", stackInfo.Outputs["message1"])
			assert.Equal(t, "Hi There, Bob!", stackInfo.Outputs["message2"])
		},
	})
}

func testConstructProviderExplicit(t *testing.T, lang string) {
	const testDir = "construct_component_provider_explicit"

	localProvider := integration.LocalDependency{
		Package: "testcomponent", Path: filepath.Join(testDir, "testcomponent-go"),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		LocalProviders: []integration.LocalDependency{localProvider},
		Quick:          true,
		NoParallel:     true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Equal(t, "hello world", stackInfo.Outputs["message"])
			assert.Equal(t, "hello world", stackInfo.Outputs["nestedMessage"])
		},
	})
}

// Test to validate that various resource options are propagated for MLCs.
func testConstructResourceOptions(t *testing.T, lang string) {
	const testDir = "construct_component_resource_options"

	validate := func(t *testing.T, resources []apitype.ResourceV3) {
		urns := make(map[string]resource.URN)
		for _, res := range resources {
			urns[res.URN.Name()] = res.URN
		}

		for _, res := range resources {
			switch name := res.URN.Name(); name {
			case "Protect":
				assert.True(t, res.Protect, "Protect(%s)", name)

			case "DependsOn":
				wantDeps := []resource.URN{urns["Dep1"], urns["Dep2"]}
				assert.ElementsMatch(t, wantDeps, res.Dependencies, "DependsOn(%s)", name)

			case "AdditionalSecretOutputs":
				assert.Equal(
					t,
					[]resource.PropertyKey{"foo"},
					res.AdditionalSecretOutputs,
					"AdditionalSecretOutputs(%s)",
					name,
				)

			case "CustomTimeouts":
				ct := res.CustomTimeouts
				if assert.NotNil(t, ct, "CustomTimeouts(%s)", name) {
					assert.Equal(t, float64(60), ct.Create, "CustomTimeouts.Create(%s)", name)
					assert.Equal(t, float64(120), ct.Update, "CustomTimeouts.Update(%s)", name)
					assert.Equal(t, float64(180), ct.Delete, "CustomTimeouts.Delete(%s)", name)
				}

			case "DeletedWith":
				assert.Equal(t, urns["getDeletedWithMe"], res.DeletedWith, "DeletedWith(%s)", name)

			case "RetainOnDelete":
				assert.True(t, res.RetainOnDelete, "RetainOnDelete(%s)", name)
			}
		}
	}

	localProvider := integration.LocalDependency{
		Package: "testcomponent",
		Path:    filepath.Join(testDir, "testcomponent-go"),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:                     filepath.Join(testDir, lang),
		LocalProviders:          []integration.LocalDependency{localProvider},
		Quick:                   true,
		NoParallel:              true,
		DestroyExcludeProtected: true,
		SkipStackRemoval:        true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			validate(t, stackInfo.Deployment.Resources)
		},
	})
}

func testConstructConfigureProvider(t *testing.T, lang string) {
	const testDir = "construct_component_configure_provider"

	localProvider := integration.LocalDependency{
		Package: "metaprovider",
		Path:    filepath.Join(testDir, "testcomponent-go"),
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join(testDir, lang),
		Config: map[string]string{
			"proxy": "FromEnv",
		},
		LocalProviders:           []integration.LocalDependency{localProvider},
		Quick:                    false,
		NoParallel:               true,
		AllowEmptyPreviewChanges: true,
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			assert.Contains(t, stackInfo.Outputs, "keyAlgo")
			assert.Equal(t, "ECDSA", stackInfo.Outputs["keyAlgo"])
			assert.Contains(t, stackInfo.Outputs, "keyAlgo2")
			assert.Equal(t, "ECDSA", stackInfo.Outputs["keyAlgo2"])
			assert.Equal(t, float64(42), stackInfo.Outputs["meaningOfLife"])
			assert.Equal(t, float64(42), stackInfo.Outputs["meaningOfLife2"])

			var privateKeyProviderRef string
			for _, res := range stackInfo.Deployment.Resources {
				if strings.Contains(string(res.URN), "PrivateKey") {
					privateKeyProviderRef = res.Provider
					break
				}
			}
			assert.NotEmpty(t, privateKeyProviderRef, "expected PrivateKey provider reference to be set")

			var providerFromEnv *bool
			for _, res := range stackInfo.Deployment.Resources {
				if fmt.Sprintf("%s::%s", res.URN, res.ID) != privateKeyProviderRef {
					continue
				}

				rawProxy, ok := res.Inputs["proxy"]
				assert.True(t, ok, "expected provider input to contain proxy")
				if !ok {
					break
				}

				proxy, ok := rawProxy.(map[string]interface{})
				assert.True(t, ok, "expected provider input proxy to be object")
				if !ok {
					break
				}

				rawFromEnv, ok := proxy["fromEnv"]
				assert.True(t, ok, "expected provider input proxy.fromEnv to be present")
				if !ok {
					break
				}

				fromEnv, ok := rawFromEnv.(bool)
				assert.True(t, ok, "expected provider input proxy.fromEnv to be bool")
				if !ok {
					break
				}

				providerFromEnv = &fromEnv
				break
			}

			if assert.NotNil(t, providerFromEnv, "expected to find provider inputs used by PrivateKey") {
				assert.True(t, *providerFromEnv, "expected provider to be configured with proxy.fromEnv=true")
			}
		},
	})
}

func testConstructOutputValues(t *testing.T, lang string, dependencies ...string) {
	const testDir = "construct_component_output_values"
	componentDir := "testcomponent-go"

	localProviders := []integration.LocalDependency{
		{Package: "testprovider", Path: testProviderPath()},
		{Package: "testcomponent", Path: filepath.Join(testDir, componentDir)},
	}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:            filepath.Join(testDir, lang),
		Dependencies:   dependencies,
		LocalProviders: localProviders,
		Quick:          true,
	})
}

var previewSummaryRegex = regexp.MustCompile(
	`{\s+"steps": \[[\s\S]+],\s+"duration": \d+,\s+"changeSummary": {[\s\S]+}\s+}`)

func assertOutputContainsEvent(t *testing.T, evt apitype.EngineEvent, output string) {
	evtJSON := bytes.Buffer{}
	encoder := json.NewEncoder(&evtJSON)
	encoder.SetEscapeHTML(false)
	err := encoder.Encode(evt)
	assert.NoError(t, err)
	assert.Contains(t, output, evtJSON.String())
}

// printfTestValidation is used by the TestPrintfXYZ test cases in the language-specific test
// files. It validates that there are a precise count of expected stdout/stderr lines in the test output.
func printfTestValidation(t *testing.T, stack integration.RuntimeValidationStackInfo) {
	var foundStdout int
	var foundStderr int
	for _, ev := range stack.Events {
		if de := ev.DiagnosticEvent; de != nil {
			if strings.HasPrefix(de.Message, fmt.Sprintf("Line %d", foundStdout)) {
				foundStdout++
			} else if strings.HasPrefix(de.Message, fmt.Sprintf("Errln %d", foundStderr+10)) {
				foundStderr++
			}
		}
	}
	assert.Equal(t, 11, foundStdout)
	assert.Equal(t, 11, foundStderr)
}
