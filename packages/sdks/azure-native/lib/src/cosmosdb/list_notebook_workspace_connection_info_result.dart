// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNotebookWorkspaceConnectionInfo.
class ListNotebookWorkspaceConnectionInfoResult {
  /// Specifies auth token used for connecting to Notebook server (uses token-based auth).
  final String? authToken;
  /// Specifies the endpoint of Notebook server.
  final String? notebookServerEndpoint;

  /// Creates a new [ListNotebookWorkspaceConnectionInfoResult].
  /// [authToken] Specifies auth token used for connecting to Notebook server (uses token-based auth).
  /// [notebookServerEndpoint] Specifies the endpoint of Notebook server.
  const ListNotebookWorkspaceConnectionInfoResult({
    this.authToken,
    this.notebookServerEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': ?authToken,
      'notebookServerEndpoint': ?notebookServerEndpoint,
    };
  }

  factory ListNotebookWorkspaceConnectionInfoResult.fromMap(Map<String, dynamic> map) {
    return ListNotebookWorkspaceConnectionInfoResult(
      authToken: (() { final guardedValue = map['authToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notebookServerEndpoint: (() { final guardedValue = map['notebookServerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
