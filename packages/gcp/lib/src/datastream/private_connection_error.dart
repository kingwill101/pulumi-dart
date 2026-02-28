// ignore_for_file: unused_element, unnecessary_cast


class PrivateConnectionError {
  /// A list of messages that carry the error details.
  final Map<String, String>? details;
  /// A message containing more information about the error that occurred.
  final String? message;

  /// Creates a new [PrivateConnectionError].
  /// [details] A list of messages that carry the error details.
  /// [message] A message containing more information about the error that occurred.
  PrivateConnectionError({
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'message': ?message,
    };
  }

  factory PrivateConnectionError.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionError(
      details: map['details'] == null ? null : (map['details'] as Map).cast<String, String>(),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

