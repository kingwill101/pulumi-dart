// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNotebookWorkspaceConnectionInfo.
class ListNotebookWorkspaceConnectionInfoResult {
  /// Specifies auth token used for connecting to Notebook server (uses token-based auth).
  final String authToken;
  /// Specifies the endpoint of Notebook server.
  final String notebookServerEndpoint;

  /// Creates a new [ListNotebookWorkspaceConnectionInfoResult].
  /// [authToken] Specifies auth token used for connecting to Notebook server (uses token-based auth).
  /// [notebookServerEndpoint] Specifies the endpoint of Notebook server.
  const ListNotebookWorkspaceConnectionInfoResult({
    required this.authToken,
    required this.notebookServerEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': authToken,
      'notebookServerEndpoint': notebookServerEndpoint,
    };
  }

  factory ListNotebookWorkspaceConnectionInfoResult.fromMap(Map<String, dynamic> map) {
    return ListNotebookWorkspaceConnectionInfoResult(
      authToken: map['authToken'] as String,
      notebookServerEndpoint: map['notebookServerEndpoint'] as String,
    );
  }
}

