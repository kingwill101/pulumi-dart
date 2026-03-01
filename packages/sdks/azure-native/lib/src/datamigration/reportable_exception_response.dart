// ignore_for_file: unused_element, unnecessary_cast


/// Exception object for all custom exceptions
class ReportableExceptionResponse {
  /// Actionable steps for this exception
  final String? actionableMessage;
  /// The path to the file where exception occurred
  final String? filePath;
  /// Coded numerical value that is assigned to a specific exception
  final int? hResult;
  /// The line number where exception occurred
  final String? lineNumber;
  /// Error message
  final String? message;
  /// Stack trace
  final String? stackTrace;

  /// Creates a new [ReportableExceptionResponse].
  /// [actionableMessage] Actionable steps for this exception
  /// [filePath] The path to the file where exception occurred
  /// [hResult] Coded numerical value that is assigned to a specific exception
  /// [lineNumber] The line number where exception occurred
  /// [message] Error message
  /// [stackTrace] Stack trace
  ReportableExceptionResponse({
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
      actionableMessage: map['actionableMessage'] == null ? null : map['actionableMessage'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      hResult: map['hResult'] == null ? null : map['hResult'] as int,
      lineNumber: map['lineNumber'] == null ? null : map['lineNumber'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      stackTrace: map['stackTrace'] == null ? null : map['stackTrace'] as String,
    );
  }
}

