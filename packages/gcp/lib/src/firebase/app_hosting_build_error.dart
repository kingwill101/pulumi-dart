// ignore_for_file: unused_element, unnecessary_cast

class AppHostingBuildError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// (Output)
  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  final List<Map<String, String>>? details;

  /// (Output)
  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final String? message;

  /// Creates a new [AppHostingBuildError].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  AppHostingBuildError({
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

  factory AppHostingBuildError.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildError(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null
          ? null
          : (map['details'] as List).cast<Map<String, String>>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
