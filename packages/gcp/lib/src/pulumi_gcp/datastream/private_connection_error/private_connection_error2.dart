// ignore_for_file: unused_element, unnecessary_cast

class PrivateConnectionError2 {
  /// A list of messages that carry the error details.
  final Map<String, String>? details;

  /// A message containing more information about the error that occurred.
  final String? message;

  PrivateConnectionError2({
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory PrivateConnectionError2.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionError2(
      details: map['details'] == null
          ? null
          : (map['details'] as Map).cast<String, String>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
