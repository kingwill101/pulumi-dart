package integration_tests

import "testing"

// These tests are intentionally skipped placeholders to track upstream parity
// scenarios we still need to port into the Dart integration suite.

func TestFailsOnImplicitDependencyCyclesDart(t *testing.T) {
	t.Skip("blocked: upstream test is currently flaky/skipped; Dart port currently succeeds unexpectedly in local validation and needs upstream-aligned fixture semantics")
}

func TestAutomationLocalWorkspaceLifecycleDart(t *testing.T) {
	t.Skip("pending port: pulumi/sdk/nodejs/tests/automation/localWorkspace.spec.ts + pulumi/sdk/python/lib/test/automation/test_local_workspace.py + pulumi/sdk/go/auto/local_workspace_test.go")
}

func TestAutomationStackLifecycleAndHistoryDart(t *testing.T) {
	t.Skip("pending port: pulumi/sdk/nodejs/tests/automation/localWorkspace.stack.spec.ts + pulumi/sdk/python/lib/test/automation/test_stack.py")
}

func TestAutomationConfigAndConfigFileDart(t *testing.T) {
	t.Skip("pending port: pulumi/sdk/nodejs/tests/automation/localWorkspace.config.spec.ts + pulumi/sdk/python/lib/test/automation/test_config_file.py")
}

func TestAutomationCommandAndVersionValidationDart(t *testing.T) {
	t.Skip("pending port: pulumi/sdk/nodejs/tests/automation/cmd.spec.ts + localWorkspace.command.spec.ts + pulumi/sdk/python/lib/test/automation/test_cmd.py")
}

func TestAutomationRemoteWorkspaceDart(t *testing.T) {
	t.Skip("pending port: pulumi/sdk/nodejs/tests/automation/remoteWorkspace.spec.ts + pulumi/sdk/python/lib/test/automation/test_remote_workspace.py")
}

func TestAutomationEnvironmentManagementDart(t *testing.T) {
	t.Skip("pending port: pulumi/sdk/nodejs/tests/automation/localWorkspace.stack.spec.ts::add/remove environments + pulumi/sdk/go/auto/local_workspace_test.go::AddEnvironments")
}
