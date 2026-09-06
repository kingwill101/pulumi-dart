// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceNotebookAccessToken.
class ListWorkspaceNotebookAccessTokenResult {
  final String? accessToken;
  final int? expiresIn;
  final String? hostName;
  final String? notebookResourceId;
  final String? publicDns;
  final String? refreshToken;
  final String? scope;
  final String? tokenType;

  /// Creates a new [ListWorkspaceNotebookAccessTokenResult].
  /// [accessToken] Optional.
  /// [expiresIn] Optional.
  /// [hostName] Optional.
  /// [notebookResourceId] Optional.
  /// [publicDns] Optional.
  /// [refreshToken] Optional.
  /// [scope] Optional.
  /// [tokenType] Optional.
  const ListWorkspaceNotebookAccessTokenResult({
    this.accessToken,
    this.expiresIn,
    this.hostName,
    this.notebookResourceId,
    this.publicDns,
    this.refreshToken,
    this.scope,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'expiresIn': ?expiresIn,
      'hostName': ?hostName,
      'notebookResourceId': ?notebookResourceId,
      'publicDns': ?publicDns,
      'refreshToken': ?refreshToken,
      'scope': ?scope,
      'tokenType': ?tokenType,
    };
  }

  factory ListWorkspaceNotebookAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceNotebookAccessTokenResult(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresIn: (() { final guardedValue = map['expiresIn']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notebookResourceId: (() { final guardedValue = map['notebookResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDns: (() { final guardedValue = map['publicDns']; if (guardedValue == null) return null; return guardedValue as String; })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
