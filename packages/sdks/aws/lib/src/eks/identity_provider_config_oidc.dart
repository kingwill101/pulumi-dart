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
  IdentityProviderConfigOidc({
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
      clientId: (map['clientId'] as String).input(),
      groupsClaim: map['groupsClaim'] == null ? null : ((map['groupsClaim'] as String).input()).input(),
      groupsPrefix: map['groupsPrefix'] == null ? null : ((map['groupsPrefix'] as String).input()).input(),
      identityProviderConfigName: (map['identityProviderConfigName'] as String).input(),
      issuerUrl: (map['issuerUrl'] as String).input(),
      requiredClaims: map['requiredClaims'] == null ? null : (((map['requiredClaims'] as Map).cast<String, String>()).input()).input(),
      usernameClaim: map['usernameClaim'] == null ? null : ((map['usernameClaim'] as String).input()).input(),
      usernamePrefix: map['usernamePrefix'] == null ? null : ((map['usernamePrefix'] as String).input()).input(),
    );
  }
}

