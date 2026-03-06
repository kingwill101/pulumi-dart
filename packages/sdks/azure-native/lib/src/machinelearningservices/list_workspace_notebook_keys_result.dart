// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceNotebookKeys.
class ListWorkspaceNotebookKeysResult {
  final String primaryAccessKey;
  final String secondaryAccessKey;

  /// Creates a new [ListWorkspaceNotebookKeysResult].
  /// [primaryAccessKey] Required.
  /// [secondaryAccessKey] Required.
  const ListWorkspaceNotebookKeysResult({
    required this.primaryAccessKey,
    required this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryAccessKey': primaryAccessKey,
      'secondaryAccessKey': secondaryAccessKey,
    };
  }

  factory ListWorkspaceNotebookKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceNotebookKeysResult(
      primaryAccessKey: map['primaryAccessKey'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
    );
  }
}

