// ignore_for_file: unused_element, unnecessary_cast

class RoomMessageReviewHandler {
  /// The fallback behavior (whether the message
  /// is allowed or denied) if the handler does not return a valid response,
  /// encounters an error, or times out. Valid values: `ALLOW`, `DENY`.
  final String? fallbackResult;

  /// ARN of the lambda message review handler function.
  final String? uri;

  RoomMessageReviewHandler({
    this.fallbackResult,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fallbackResultValue = fallbackResult;
    if (fallbackResultValue != null) {
      map['fallbackResult'] = fallbackResultValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory RoomMessageReviewHandler.fromMap(Map<String, dynamic> map) {
    return RoomMessageReviewHandler(
      fallbackResult: map['fallbackResult'] == null
          ? null
          : map['fallbackResult'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
