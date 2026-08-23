// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceNotebookKeys.
class ListWorkspaceNotebookKeysResult {
  /// The primary access key of the Notebook
  final String primaryAccessKey;
  /// The secondary access key of the Notebook
  final String secondaryAccessKey;

  /// Creates a new [ListWorkspaceNotebookKeysResult].
  /// [primaryAccessKey] The primary access key of the Notebook
  /// [secondaryAccessKey] The secondary access key of the Notebook
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
