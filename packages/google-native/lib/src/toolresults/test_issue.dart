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
    return <String, dynamic>{
      'category': ?category == null ? null : category!.value,
      'errorMessage': ?errorMessage,
      'severity': ?severity == null ? null : severity!.value,
      'stackTrace': ?stackTrace == null ? null : stackTrace!.toMap(),
      'type': ?type == null ? null : type!.value,
      'warning': ?warning == null ? null : warning!.toMap(),
    };
  }

  factory TestIssue.fromMap(Map<String, dynamic> map) {
    return TestIssue(
      category: map['category'] == null
          ? null
          : TestIssueCategory.fromValue(map['category'] as String),
      errorMessage: map['errorMessage'] == null
          ? null
          : map['errorMessage'] as String,
      severity: map['severity'] == null
          ? null
          : TestIssueSeverity.fromValue(map['severity'] as String),
      stackTrace: map['stackTrace'] == null
          ? null
          : StackTrace.fromMap(
              (map['stackTrace'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] == null
          ? null
          : TestIssueType.fromValue(map['type'] as String),
      warning: map['warning'] == null
          ? null
          : Any.fromMap((map['warning'] as Map).cast<String, dynamic>()),
    );
  }
}
