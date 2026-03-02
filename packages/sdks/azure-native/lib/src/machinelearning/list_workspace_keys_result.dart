// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceKeys.
class ListWorkspaceKeysResult {
  /// Primary authorization key for this workspace.
  final String? primaryToken;
  /// Secondary authorization key for this workspace.
  final String? secondaryToken;

  /// Creates a new [ListWorkspaceKeysResult].
  /// [primaryToken] Primary authorization key for this workspace.
  /// [secondaryToken] Secondary authorization key for this workspace.
  ListWorkspaceKeysResult({
    this.primaryToken,
    this.secondaryToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryToken': ?primaryToken,
      'secondaryToken': ?secondaryToken,
    };
  }

  factory ListWorkspaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysResult(
      primaryToken: map['primaryToken'] == null ? null : map['primaryToken']! as String,
      secondaryToken: map['secondaryToken'] == null ? null : map['secondaryToken']! as String,
    );
  }
}

