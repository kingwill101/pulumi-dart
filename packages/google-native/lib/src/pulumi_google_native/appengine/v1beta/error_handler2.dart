// ignore_for_file: unused_element, unnecessary_cast

import 'error_handler_error_code2.dart';

/// Custom static error page to be served when an error occurs.
class ErrorHandler2 {
  /// Error condition this handler applies to.
  final ErrorHandlerErrorCode2? errorCode;

  /// MIME type of file. Defaults to text/html.
  final String? mimeType;

  /// Static file content to be served for this error.
  final String? staticFile;

  ErrorHandler2({
    this.errorCode,
    this.mimeType,
    this.staticFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorCodeValue = errorCode;
    if (errorCodeValue != null) {
      map['errorCode'] = errorCodeValue.value;
    }
    final mimeTypeValue = mimeType;
    if (mimeTypeValue != null) {
      map['mimeType'] = mimeTypeValue;
    }
    final staticFileValue = staticFile;
    if (staticFileValue != null) {
      map['staticFile'] = staticFileValue;
    }
    return map;
  }

  factory ErrorHandler2.fromMap(Map<String, dynamic> map) {
    return ErrorHandler2(
      errorCode: map['errorCode'] == null
          ? null
          : ErrorHandlerErrorCode2.fromValue(map['errorCode'] as String),
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      staticFile:
          map['staticFile'] == null ? null : map['staticFile'] as String,
    );
  }
}
