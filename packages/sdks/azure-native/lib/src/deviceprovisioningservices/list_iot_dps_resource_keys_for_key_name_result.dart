// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listIotDpsResourceKeysForKeyName.
class ListIotDpsResourceKeysForKeyNameResult {
  /// Name of the key.
  final String keyName;
  /// Primary SAS key value.
  final String? primaryKey;
  /// Rights that this key has.
  final String rights;
  /// Secondary SAS key value.
  final String? secondaryKey;

  /// Creates a new [ListIotDpsResourceKeysForKeyNameResult].
  /// [keyName] Name of the key.
  /// [primaryKey] Primary SAS key value.
  /// [rights] Rights that this key has.
  /// [secondaryKey] Secondary SAS key value.
  const ListIotDpsResourceKeysForKeyNameResult({
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

  factory ListIotDpsResourceKeysForKeyNameResult.fromMap(Map<String, dynamic> map) {
    return ListIotDpsResourceKeysForKeyNameResult(
      keyName: map['keyName'] as String,
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rights: map['rights'] as String,
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
