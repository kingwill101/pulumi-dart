// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exception object for all custom exceptions
class ReportableExceptionResponse {
  /// Actionable steps for this exception
  final pulumi.Input<String>? actionableMessage;
  /// The path to the file where exception occurred
  final pulumi.Input<String>? filePath;
  /// Coded numerical value that is assigned to a specific exception
  final pulumi.Input<int>? hResult;
  /// The line number where exception occurred
  final pulumi.Input<String>? lineNumber;
  /// Error message
  final pulumi.Input<String>? message;
  /// Stack trace
  final pulumi.Input<String>? stackTrace;

  /// Creates a new [ReportableExceptionResponse].
  /// [actionableMessage] Actionable steps for this exception
  /// [filePath] The path to the file where exception occurred
  /// [hResult] Coded numerical value that is assigned to a specific exception
  /// [lineNumber] The line number where exception occurred
  /// [message] Error message
  /// [stackTrace] Stack trace
  const ReportableExceptionResponse({
    this.actionableMessage,
    this.filePath,
    this.hResult,
    this.lineNumber,
    this.message,
    this.stackTrace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionableMessage': ?actionableMessage,
      'filePath': ?filePath,
      'hResult': ?hResult,
      'lineNumber': ?lineNumber,
      'message': ?message,
      'stackTrace': ?stackTrace,
    };
  }

  factory ReportableExceptionResponse.fromMap(Map<String, dynamic> map) {
    return ReportableExceptionResponse(
      actionableMessage: (() { final guardedValue = map['actionableMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hResult: (() { final guardedValue = map['hResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lineNumber: (() { final guardedValue = map['lineNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackTrace: (() { final guardedValue = map['stackTrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

