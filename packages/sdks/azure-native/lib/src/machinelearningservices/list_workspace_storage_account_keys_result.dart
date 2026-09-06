// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceStorageAccountKeys.
class ListWorkspaceStorageAccountKeysResult {
  /// The access key of the storage
  final String? userStorageKey;

  /// Creates a new [ListWorkspaceStorageAccountKeysResult].
  /// [userStorageKey] The access key of the storage
  const ListWorkspaceStorageAccountKeysResult({
    this.userStorageKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userStorageKey': ?userStorageKey,
    };
  }

  factory ListWorkspaceStorageAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceStorageAccountKeysResult(
      userStorageKey: (() { final guardedValue = map['userStorageKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
