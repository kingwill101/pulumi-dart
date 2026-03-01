// ignore_for_file: unused_element, unnecessary_cast


class ListCredentialResponseResponseError {
  final String? code;
  final String? message;

  /// Creates a new [ListCredentialResponseResponseError].
  /// [code] Optional.
  /// [message] Optional.
  ListCredentialResponseResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ListCredentialResponseResponseError.fromMap(Map<String, dynamic> map) {
    return ListCredentialResponseResponseError(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

