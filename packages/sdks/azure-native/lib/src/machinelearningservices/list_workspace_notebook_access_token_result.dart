// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listWorkspaceNotebookAccessToken.
class ListWorkspaceNotebookAccessTokenResult {
  final String accessToken;
  final int expiresIn;
  final String hostName;
  final String notebookResourceId;
  final String publicDns;
  final String refreshToken;
  final String scope;
  final String tokenType;

  /// Creates a new [ListWorkspaceNotebookAccessTokenResult].
  /// [accessToken] Required.
  /// [expiresIn] Required.
  /// [hostName] Required.
  /// [notebookResourceId] Required.
  /// [publicDns] Required.
  /// [refreshToken] Required.
  /// [scope] Required.
  /// [tokenType] Required.
  ListWorkspaceNotebookAccessTokenResult({
    required this.accessToken,
    required this.expiresIn,
    required this.hostName,
    required this.notebookResourceId,
    required this.publicDns,
    required this.refreshToken,
    required this.scope,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'expiresIn': expiresIn,
      'hostName': hostName,
      'notebookResourceId': notebookResourceId,
      'publicDns': publicDns,
      'refreshToken': refreshToken,
      'scope': scope,
      'tokenType': tokenType,
    };
  }

  factory ListWorkspaceNotebookAccessTokenResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWorkspaceNotebookAccessTokenResult(
      accessToken: map['accessToken'] as String,
      expiresIn: map['expiresIn'] as int,
      hostName: map['hostName'] as String,
      notebookResourceId: map['notebookResourceId'] as String,
      publicDns: map['publicDns'] as String,
      refreshToken: map['refreshToken'] as String,
      scope: map['scope'] as String,
      tokenType: map['tokenType'] as String,
    );
  }
}
