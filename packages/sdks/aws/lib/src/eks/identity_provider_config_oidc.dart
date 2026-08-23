// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityProviderConfigOidc {
  /// Client ID for the OpenID Connect identity provider.
  final pulumi.Input<String> clientId;
  /// The JWT claim that the provider will use to return groups.
  final pulumi.Input<String>? groupsClaim;
  /// A prefix that is prepended to group claims e.g., `oidc:`.
  final pulumi.Input<String>? groupsPrefix;
  /// The name of the identity provider config.
  final pulumi.Input<String> identityProviderConfigName;
  /// Issuer URL for the OpenID Connect identity provider.
  final pulumi.Input<String> issuerUrl;
  /// The key value pairs that describe required claims in the identity token.
  final pulumi.Input<Map<String, String>>? requiredClaims;
  /// The JWT claim that the provider will use as the username.
  final pulumi.Input<String>? usernameClaim;
  /// A prefix that is prepended to username claims.
  final pulumi.Input<String>? usernamePrefix;

  /// Creates a new [IdentityProviderConfigOidc].
  /// [clientId] Client ID for the OpenID Connect identity provider.
  /// [groupsClaim] The JWT claim that the provider will use to return groups.
  /// [groupsPrefix] A prefix that is prepended to group claims e.g., `oidc:`.
  /// [identityProviderConfigName] The name of the identity provider config.
  /// [issuerUrl] Issuer URL for the OpenID Connect identity provider.
  /// [requiredClaims] The key value pairs that describe required claims in the identity token.
  /// [usernameClaim] The JWT claim that the provider will use as the username.
  /// [usernamePrefix] A prefix that is prepended to username claims.
  const IdentityProviderConfigOidc({
    required this.clientId,
    this.groupsClaim,
    this.groupsPrefix,
    required this.identityProviderConfigName,
    required this.issuerUrl,
    this.requiredClaims,
    this.usernameClaim,
    this.usernamePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'groupsClaim': ?groupsClaim,
      'groupsPrefix': ?groupsPrefix,
      'identityProviderConfigName': identityProviderConfigName,
      'issuerUrl': issuerUrl,
      'requiredClaims': ?requiredClaims,
      'usernameClaim': ?usernameClaim,
      'usernamePrefix': ?usernamePrefix,
    };
  }

  factory IdentityProviderConfigOidc.fromMap(Map<String, dynamic> map) {
    return IdentityProviderConfigOidc(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      groupsClaim: (() { final guardedValue = map['groupsClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupsPrefix: (() { final guardedValue = map['groupsPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityProviderConfigName: pulumi.Input.fromValue(map['identityProviderConfigName'] as String),
      issuerUrl: pulumi.Input.fromValue(map['issuerUrl'] as String),
      requiredClaims: (() { final guardedValue = map['requiredClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usernameClaim: (() { final guardedValue = map['usernameClaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernamePrefix: (() { final guardedValue = map['usernamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
