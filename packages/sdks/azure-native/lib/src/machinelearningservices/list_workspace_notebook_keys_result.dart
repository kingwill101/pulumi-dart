// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceNotebookKeys.
class ListWorkspaceNotebookKeysResult {
  /// The primary access key of the Notebook
  final String? primaryAccessKey;
  /// The secondary access key of the Notebook
  final String? secondaryAccessKey;

  /// Creates a new [ListWorkspaceNotebookKeysResult].
  /// [primaryAccessKey] The primary access key of the Notebook
  /// [secondaryAccessKey] The secondary access key of the Notebook
  const ListWorkspaceNotebookKeysResult({
    this.primaryAccessKey,
    this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryAccessKey': ?primaryAccessKey,
      'secondaryAccessKey': ?secondaryAccessKey,
    };
  }

  factory ListWorkspaceNotebookKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceNotebookKeysResult(
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
