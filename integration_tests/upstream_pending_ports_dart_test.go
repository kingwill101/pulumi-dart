package integration_tests

import (
	"bytes"
	"path/filepath"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/assert"
)

// Regression test for https://github.com/pulumi/pulumi/issues/13551.
//
// Upstream Python temporarily marks this scenario flaky. For Dart we keep the
// fixture and assertion active to ensure implicit dependency cycles fail fast
// with actionable diagnostics.
func TestFailsOnImplicitDependencyCyclesDart(t *testing.T) {
	stdout := &bytes.Buffer{}
	stderr := &bytes.Buffer{}

	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:           filepath.Join("implicit_dependency_cycles", "dart"),
		Quick:         true,
		ExpectFailure: true,
		Stdout:        stdout,
		Stderr:        stderr,
		ExtraRuntimeValidation: func(t *testing.T, _ integration.RuntimeValidationStackInfo) {
			output := stdout.String() + stderr.String()
			assert.Contains(
				t,
				output,
				"We have detected a circular dependency involving a resource of type my:module:Child-1 named a-child-1.",
			)
			assert.Contains(
				t,
				output,
				"Please review any `depends_on`, `parent` or other dependency relationships between your resources to ensure no cycles have been introduced in your program.",
			)
		},
	})
}
