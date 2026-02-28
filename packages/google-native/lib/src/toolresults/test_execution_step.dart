// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_issue.dart';
import 'test_suite_overview.dart';
import 'test_timing.dart';
import 'tool_execution.dart';

/// A step that represents running tests. It accepts ant-junit xml files which will be parsed into structured test results by the service. Xml file paths are updated in order to append more files, however they can't be deleted. Users can also add test results manually by using the test_result field.
class TestExecutionStep {
  /// Issues observed during the test execution. For example, if the mobile app under test crashed during the test, the error message and the stack trace content can be recorded here to assist debugging. - In response: present if set by create or update - In create/update request: optional
  final List<TestIssue>? testIssues;

  /// List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploaded directly by user. This references should only be called when test suites are fully parsed or uploaded. The maximum allowed number of test suite overviews per step is 1000. - In response: always set - In create request: optional - In update request: never (use publishXunitXmlFiles custom method instead)
  final List<TestSuiteOverview>? testSuiteOverviews;

  /// The timing break down of the test execution. - In response: present if set by create or update - In create/update request: optional
  final TestTiming? testTiming;

  /// Represents the execution of the test runner. The exit code of this tool will be used to determine if the test passed. - In response: always set - In create/update request: optional
  final ToolExecution? toolExecution;

  /// Creates a new [TestExecutionStep].
  /// [testIssues] Issues observed during the test execution. For example, if the mobile app under test crashed during the test, the error message and the stack trace content can be recorded here to assist debugging. - In response: present if set by create or update - In create/update request: optional
  /// [testSuiteOverviews] List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploaded directly by user. This references should only be called when test suites are fully parsed or uploaded. The maximum allowed number of test suite overviews per step is 1000. - In response: always set - In create request: optional - In update request: never (use publishXunitXmlFiles custom method instead)
  /// [testTiming] The timing break down of the test execution. - In response: present if set by create or update - In create/update request: optional
  /// [toolExecution] Represents the execution of the test runner. The exit code of this tool will be used to determine if the test passed. - In response: always set - In create/update request: optional
  TestExecutionStep({
    this.testIssues,
    this.testSuiteOverviews,
    this.testTiming,
    this.toolExecution,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final testIssuesValue = testIssues;
    if (testIssuesValue != null) {
      map['testIssues'] =
          pulumi.Input.encodeList<TestIssue, Map<String, dynamic>>(
              testIssuesValue, (value) => value.toMap());
    }
    final testSuiteOverviewsValue = testSuiteOverviews;
    if (testSuiteOverviewsValue != null) {
      map['testSuiteOverviews'] =
          pulumi.Input.encodeList<TestSuiteOverview, Map<String, dynamic>>(
              testSuiteOverviewsValue, (value) => value.toMap());
    }
    final testTimingValue = testTiming;
    if (testTimingValue != null) {
      map['testTiming'] = testTimingValue.toMap();
    }
    final toolExecutionValue = toolExecution;
    if (toolExecutionValue != null) {
      map['toolExecution'] = toolExecutionValue.toMap();
    }
    return map;
  }

  factory TestExecutionStep.fromMap(Map<String, dynamic> map) {
    return TestExecutionStep(
      testIssues: map['testIssues'] == null
          ? null
          : pulumi.Input.decodeList<TestIssue>(
              map['testIssues'],
              (value) =>
                  TestIssue.fromMap((value as Map).cast<String, dynamic>())),
      testSuiteOverviews: map['testSuiteOverviews'] == null
          ? null
          : pulumi.Input.decodeList<TestSuiteOverview>(
              map['testSuiteOverviews'],
              (value) => TestSuiteOverview.fromMap(
                  (value as Map).cast<String, dynamic>())),
      testTiming: map['testTiming'] == null
          ? null
          : TestTiming.fromMap(
              (map['testTiming'] as Map).cast<String, dynamic>()),
      toolExecution: map['toolExecution'] == null
          ? null
          : ToolExecution.fromMap(
              (map['toolExecution'] as Map).cast<String, dynamic>()),
    );
  }
}
