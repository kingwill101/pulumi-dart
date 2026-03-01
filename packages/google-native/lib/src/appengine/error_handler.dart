// ignore_for_file: unused_element, unnecessary_cast

import 'error_handler_error_code.dart';

/// Custom static error page to be served when an error occurs.
class ErrorHandler {
  /// Error condition this handler applies to.
  final ErrorHandlerErrorCode? errorCode;

  /// MIME type of file. Defaults to text/html.
  final String? mimeType;

  /// Static file content to be served for this error.
  final String? staticFile;

  /// Creates a new [ErrorHandler].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  ErrorHandler({this.errorCode, this.mimeType, this.staticFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode == null ? null : errorCode!.value,
      'mimeType': ?mimeType,
      'staticFile': ?staticFile,
    };
  }

  factory ErrorHandler.fromMap(Map<String, dynamic> map) {
    return ErrorHandler(
      errorCode: map['errorCode'] == null
          ? null
          : ErrorHandlerErrorCode.fromValue(map['errorCode'] as String),
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      staticFile: map['staticFile'] == null
          ? null
          : map['staticFile'] as String,
    );
  }
}
