// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserSharedAccessToken.
class GetUserSharedAccessTokenResult {
  /// Shared Access Authorization token for the User.
  final String? value;

  /// Creates a new [GetUserSharedAccessTokenResult].
  /// [value] Shared Access Authorization token for the User.
  const GetUserSharedAccessTokenResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetUserSharedAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetUserSharedAccessTokenResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

