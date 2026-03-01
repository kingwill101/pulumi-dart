// ignore_for_file: unused_element, unnecessary_cast


/// API OAuth2 Authentication settings details.
class OAuth2AuthenticationSettingsContract {
  /// OAuth authorization server identifier.
  final String? authorizationServerId;
  /// operations scope.
  final String? scope;

  /// Creates a new [OAuth2AuthenticationSettingsContract].
  /// [authorizationServerId] OAuth authorization server identifier.
  /// [scope] operations scope.
  OAuth2AuthenticationSettingsContract({
    this.authorizationServerId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationServerId': ?authorizationServerId,
      'scope': ?scope,
    };
  }

  factory OAuth2AuthenticationSettingsContract.fromMap(Map<String, dynamic> map) {
    return OAuth2AuthenticationSettingsContract(
      authorizationServerId: map['authorizationServerId'] == null ? null : map['authorizationServerId'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

