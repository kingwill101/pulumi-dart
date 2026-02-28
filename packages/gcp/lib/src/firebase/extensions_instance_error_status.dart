// ignore_for_file: unused_element, unnecessary_cast

class ExtensionsInstanceErrorStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// A list of messages that carry the error details.
  final List<Map<String, String>>? details;

  /// A developer-facing error message, which should be in English.
  final String? message;

  /// Creates a new [ExtensionsInstanceErrorStatus].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [details] A list of messages that carry the error details.
  /// [message] A developer-facing error message, which should be in English.
  ExtensionsInstanceErrorStatus({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory ExtensionsInstanceErrorStatus.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceErrorStatus(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null
          ? null
          : (map['details'] as List).cast<Map<String, String>>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
