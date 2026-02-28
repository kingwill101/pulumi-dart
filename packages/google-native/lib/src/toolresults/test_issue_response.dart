// ignore_for_file: unused_element, unnecessary_cast

import 'any_response.dart';
import 'stack_trace_response.dart';

/// An issue detected occurring during a test execution.
class TestIssueResponse {
  /// Category of issue. Required.
  final String category;
  /// A brief human-readable message describing the issue. Required.
  final String errorMessage;
  /// Severity of issue. Required.
  final String severity;
  /// Deprecated in favor of stack trace fields inside specific warnings.
  final StackTraceResponse stackTrace;
  /// Type of issue. Required.
  final String type;
  /// Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  final AnyResponse warning;

  /// Creates a new [TestIssueResponse].
  /// [category] Category of issue. Required.
  /// [errorMessage] A brief human-readable message describing the issue. Required.
  /// [severity] Severity of issue. Required.
  /// [stackTrace] Deprecated in favor of stack trace fields inside specific warnings.
  /// [type] Type of issue. Required.
  /// [warning] Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  TestIssueResponse({
    required this.category,
    required this.errorMessage,
    required this.severity,
    required this.stackTrace,
    required this.type,
    required this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'errorMessage': errorMessage,
      'severity': severity,
      'stackTrace': stackTrace.toMap(),
      'type': type,
      'warning': warning.toMap(),
    };
  }

  factory TestIssueResponse.fromMap(Map<String, dynamic> map) {
    return TestIssueResponse(
      category: map['category'] as String,
      errorMessage: map['errorMessage'] as String,
      severity: map['severity'] as String,
      stackTrace: StackTraceResponse.fromMap((map['stackTrace'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      warning: AnyResponse.fromMap((map['warning'] as Map).cast<String, dynamic>()),
    );
  }
}

