// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listIntegrationRuntimeAuthKeys.
class ListIntegrationRuntimeAuthKeysResult {
  /// The primary integration runtime authentication key.
  final String? authKey1;
  /// The secondary integration runtime authentication key.
  final String? authKey2;

  /// Creates a new [ListIntegrationRuntimeAuthKeysResult].
  /// [authKey1] The primary integration runtime authentication key.
  /// [authKey2] The secondary integration runtime authentication key.
  ListIntegrationRuntimeAuthKeysResult({
    this.authKey1,
    this.authKey2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey1': ?authKey1,
      'authKey2': ?authKey2,
    };
  }

  factory ListIntegrationRuntimeAuthKeysResult.fromMap(Map<String, dynamic> map) {
    return ListIntegrationRuntimeAuthKeysResult(
      authKey1: map['authKey1'] == null ? null : map['authKey1']! as String,
      authKey2: map['authKey2'] == null ? null : map['authKey2']! as String,
    );
  }
}

