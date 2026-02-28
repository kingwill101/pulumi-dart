// ignore_for_file: unused_element, unnecessary_cast

import 'error_handler_error_code_appengine_v1beta.dart';

/// Custom static error page to be served when an error occurs.
class ErrorHandlerAppengineV1beta {
  /// Error condition this handler applies to.
  final ErrorHandlerErrorCodeAppengineV1beta? errorCode;

  /// MIME type of file. Defaults to text/html.
  final String? mimeType;

  /// Static file content to be served for this error.
  final String? staticFile;

  /// Creates a new [ErrorHandlerAppengineV1beta].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  ErrorHandlerAppengineV1beta({
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

  factory ErrorHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ErrorHandlerAppengineV1beta(
      errorCode: map['errorCode'] == null
          ? null
          : ErrorHandlerErrorCodeAppengineV1beta.fromValue(
              map['errorCode'] as String),
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      staticFile:
          map['staticFile'] == null ? null : map['staticFile'] as String,
    );
  }
}
