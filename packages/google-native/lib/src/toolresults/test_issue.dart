// ignore_for_file: unused_element, unnecessary_cast

import 'any.dart';
import 'stack_trace.dart';
import 'test_issue_category.dart';
import 'test_issue_severity.dart';
import 'test_issue_type.dart';

/// An issue detected occurring during a test execution.
class TestIssue {
  /// Category of issue. Required.
  final TestIssueCategory? category;

  /// A brief human-readable message describing the issue. Required.
  final String? errorMessage;

  /// Severity of issue. Required.
  final TestIssueSeverity? severity;

  /// Deprecated in favor of stack trace fields inside specific warnings.
  final StackTrace? stackTrace;

  /// Type of issue. Required.
  final TestIssueType? type;

  /// Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  final Any? warning;

  /// Creates a new [TestIssue].
  /// [category] Category of issue. Required.
  /// [errorMessage] A brief human-readable message describing the issue. Required.
  /// [severity] Severity of issue. Required.
  /// [stackTrace] Deprecated in favor of stack trace fields inside specific warnings.
  /// [type] Type of issue. Required.
  /// [warning] Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  TestIssue({
    this.category,
    this.errorMessage,
    this.severity,
    this.stackTrace,
    this.type,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue.value;
    }
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue.value;
    }
    final stackTraceValue = stackTrace;
    if (stackTraceValue != null) {
      map['stackTrace'] = stackTraceValue.toMap();
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    final warningValue = warning;
    if (warningValue != null) {
      map['warning'] = warningValue.toMap();
    }
    return map;
  }

  factory TestIssue.fromMap(Map<String, dynamic> map) {
    return TestIssue(
      category: map['category'] == null
          ? null
          : TestIssueCategory.fromValue(map['category'] as String),
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
      severity: map['severity'] == null
          ? null
          : TestIssueSeverity.fromValue(map['severity'] as String),
      stackTrace: map['stackTrace'] == null
          ? null
          : StackTrace.fromMap(
              (map['stackTrace'] as Map).cast<String, dynamic>()),
      type: map['type'] == null
          ? null
          : TestIssueType.fromValue(map['type'] as String),
      warning: map['warning'] == null
          ? null
          : Any.fromMap((map['warning'] as Map).cast<String, dynamic>()),
    );
  }
}
