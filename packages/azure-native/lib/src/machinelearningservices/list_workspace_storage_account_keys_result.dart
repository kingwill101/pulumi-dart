// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceStorageAccountKeys.
class ListWorkspaceStorageAccountKeysResult {
  final String userStorageKey;

  /// Creates a new [ListWorkspaceStorageAccountKeysResult].
  /// [userStorageKey] Required.
  ListWorkspaceStorageAccountKeysResult({
    required this.userStorageKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userStorageKey': userStorageKey,
    };
  }

  factory ListWorkspaceStorageAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceStorageAccountKeysResult(
      userStorageKey: map['userStorageKey'] as String,
    );
  }
}

