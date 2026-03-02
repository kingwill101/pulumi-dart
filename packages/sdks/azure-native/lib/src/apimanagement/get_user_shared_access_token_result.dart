// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserSharedAccessToken.
class GetUserSharedAccessTokenResult {
  /// Shared Access Authorization token for the User.
  final String? value;

  /// Creates a new [GetUserSharedAccessTokenResult].
  /// [value] Shared Access Authorization token for the User.
  GetUserSharedAccessTokenResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetUserSharedAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetUserSharedAccessTokenResult(
      value: map['value'] == null ? null : map['value']! as String,
    );
  }
}

