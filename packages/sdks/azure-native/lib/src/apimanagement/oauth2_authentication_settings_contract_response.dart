// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API OAuth2 Authentication settings details.
class OAuth2AuthenticationSettingsContractResponse {
  /// OAuth authorization server identifier.
  final pulumi.Input<String>? authorizationServerId;

  /// operations scope.
  final pulumi.Input<String>? scope;

  /// Creates a new [OAuth2AuthenticationSettingsContractResponse].
  /// [authorizationServerId] OAuth authorization server identifier.
  /// [scope] operations scope.
  OAuth2AuthenticationSettingsContractResponse({
    this.authorizationServerId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationServerId': ?authorizationServerId,
      'scope': ?scope,
    };
  }

  factory OAuth2AuthenticationSettingsContractResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OAuth2AuthenticationSettingsContractResponse(
      authorizationServerId: (() {
        final guardedValue = map['authorizationServerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
