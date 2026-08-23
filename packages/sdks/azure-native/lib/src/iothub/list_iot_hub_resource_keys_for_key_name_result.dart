// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listIotHubResourceKeysForKeyName.
class ListIotHubResourceKeysForKeyNameResult {
  /// The name of the shared access policy.
  final String keyName;
  /// The primary key.
  final String? primaryKey;
  /// The permissions assigned to the shared access policy.
  final String rights;
  /// The secondary key.
  final String? secondaryKey;

  /// Creates a new [ListIotHubResourceKeysForKeyNameResult].
  /// [keyName] The name of the shared access policy.
  /// [primaryKey] The primary key.
  /// [rights] The permissions assigned to the shared access policy.
  /// [secondaryKey] The secondary key.
  const ListIotHubResourceKeysForKeyNameResult({
    required this.keyName,
    this.primaryKey,
    required this.rights,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'primaryKey': ?primaryKey,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListIotHubResourceKeysForKeyNameResult.fromMap(Map<String, dynamic> map) {
    return ListIotHubResourceKeysForKeyNameResult(
      keyName: map['keyName'] as String,
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rights: map['rights'] as String,
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
