package integration_tests

import (
	"encoding/json"
	"os"
	"path/filepath"
	"strings"
	"testing"

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

func runAutomationDriver(t *testing.T, e *ptesting.Environment) map[string]any {
	t.Helper()

	stdout, stderr, err := e.GetCommandResultsIn(e.CWD, "dart", "run", "bin/automation_driver.dart")
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
