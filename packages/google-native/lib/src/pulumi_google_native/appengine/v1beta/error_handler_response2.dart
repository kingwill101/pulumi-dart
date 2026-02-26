// ignore_for_file: unused_element, unnecessary_cast

/// Custom static error page to be served when an error occurs.
class ErrorHandlerResponse2 {
  /// Error condition this handler applies to.
  final String errorCode;

  /// MIME type of file. Defaults to text/html.
  final String mimeType;

  /// Static file content to be served for this error.
  final String staticFile;

  ErrorHandlerResponse2({
    required this.errorCode,
    required this.mimeType,
    required this.staticFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorCode'] = errorCode;
    map['mimeType'] = mimeType;
    map['staticFile'] = staticFile;
    return map;
  }

  factory ErrorHandlerResponse2.fromMap(Map<String, dynamic> map) {
    return ErrorHandlerResponse2(
      errorCode: map['errorCode'] as String,
      mimeType: map['mimeType'] as String,
      staticFile: map['staticFile'] as String,
    );
  }
}
