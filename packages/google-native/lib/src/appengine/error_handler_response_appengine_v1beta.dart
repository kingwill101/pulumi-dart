// ignore_for_file: unused_element, unnecessary_cast

/// Custom static error page to be served when an error occurs.
class ErrorHandlerResponseAppengineV1beta {
  /// Error condition this handler applies to.
  final String errorCode;

  /// MIME type of file. Defaults to text/html.
  final String mimeType;

  /// Static file content to be served for this error.
  final String staticFile;

  /// Creates a new [ErrorHandlerResponseAppengineV1beta].
  /// [errorCode] Error condition this handler applies to.
  /// [mimeType] MIME type of file. Defaults to text/html.
  /// [staticFile] Static file content to be served for this error.
  ErrorHandlerResponseAppengineV1beta({
    required this.errorCode,
    required this.mimeType,
    required this.staticFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'mimeType': mimeType,
      'staticFile': staticFile,
    };
  }

  factory ErrorHandlerResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ErrorHandlerResponseAppengineV1beta(
      errorCode: map['errorCode'] as String,
      mimeType: map['mimeType'] as String,
      staticFile: map['staticFile'] as String,
    );
  }
}
