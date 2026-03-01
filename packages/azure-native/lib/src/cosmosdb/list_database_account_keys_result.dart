// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDatabaseAccountKeys.
class ListDatabaseAccountKeysResult {
  /// Base 64 encoded value of the primary read-write key.
  final String primaryMasterKey;
  /// Base 64 encoded value of the primary read-only key.
  final String primaryReadonlyMasterKey;
  /// Base 64 encoded value of the secondary read-write key.
  final String secondaryMasterKey;
  /// Base 64 encoded value of the secondary read-only key.
  final String secondaryReadonlyMasterKey;

  /// Creates a new [ListDatabaseAccountKeysResult].
  /// [primaryMasterKey] Base 64 encoded value of the primary read-write key.
  /// [primaryReadonlyMasterKey] Base 64 encoded value of the primary read-only key.
  /// [secondaryMasterKey] Base 64 encoded value of the secondary read-write key.
  /// [secondaryReadonlyMasterKey] Base 64 encoded value of the secondary read-only key.
  ListDatabaseAccountKeysResult({
    required this.primaryMasterKey,
    required this.primaryReadonlyMasterKey,
    required this.secondaryMasterKey,
    required this.secondaryReadonlyMasterKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryMasterKey': primaryMasterKey,
      'primaryReadonlyMasterKey': primaryReadonlyMasterKey,
      'secondaryMasterKey': secondaryMasterKey,
      'secondaryReadonlyMasterKey': secondaryReadonlyMasterKey,
    };
  }

  factory ListDatabaseAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListDatabaseAccountKeysResult(
      primaryMasterKey: map['primaryMasterKey'] as String,
      primaryReadonlyMasterKey: map['primaryReadonlyMasterKey'] as String,
      secondaryMasterKey: map['secondaryMasterKey'] as String,
      secondaryReadonlyMasterKey: map['secondaryReadonlyMasterKey'] as String,
    );
  }
}

