// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDatabaseAccountKeys.
class ListDatabaseAccountKeysResult {
  /// Base 64 encoded value of the primary read-write key.
  final String? primaryMasterKey;
  /// Base 64 encoded value of the primary read-only key.
  final String? primaryReadonlyMasterKey;
  /// Base 64 encoded value of the secondary read-write key.
  final String? secondaryMasterKey;
  /// Base 64 encoded value of the secondary read-only key.
  final String? secondaryReadonlyMasterKey;

  /// Creates a new [ListDatabaseAccountKeysResult].
  /// [primaryMasterKey] Base 64 encoded value of the primary read-write key.
  /// [primaryReadonlyMasterKey] Base 64 encoded value of the primary read-only key.
  /// [secondaryMasterKey] Base 64 encoded value of the secondary read-write key.
  /// [secondaryReadonlyMasterKey] Base 64 encoded value of the secondary read-only key.
  const ListDatabaseAccountKeysResult({
    this.primaryMasterKey,
    this.primaryReadonlyMasterKey,
    this.secondaryMasterKey,
    this.secondaryReadonlyMasterKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryMasterKey': ?primaryMasterKey,
      'primaryReadonlyMasterKey': ?primaryReadonlyMasterKey,
      'secondaryMasterKey': ?secondaryMasterKey,
      'secondaryReadonlyMasterKey': ?secondaryReadonlyMasterKey,
    };
  }

  factory ListDatabaseAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListDatabaseAccountKeysResult(
      primaryMasterKey: (() { final guardedValue = map['primaryMasterKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryReadonlyMasterKey: (() { final guardedValue = map['primaryReadonlyMasterKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryMasterKey: (() { final guardedValue = map['secondaryMasterKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryReadonlyMasterKey: (() { final guardedValue = map['secondaryReadonlyMasterKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
