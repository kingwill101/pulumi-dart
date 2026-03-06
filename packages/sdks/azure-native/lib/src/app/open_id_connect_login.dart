// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the login flow of the custom Open ID Connect provider.
class OpenIdConnectLogin {
  /// The name of the claim that contains the users name.
  final pulumi.Input<String>? nameClaimType;
  /// A list of the scopes that should be requested while authenticating.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [OpenIdConnectLogin].
  /// [nameClaimType] The name of the claim that contains the users name.
  /// [scopes] A list of the scopes that should be requested while authenticating.
  const OpenIdConnectLogin({
    this.nameClaimType,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameClaimType': ?nameClaimType,
      'scopes': ?scopes,
    };
  }

  factory OpenIdConnectLogin.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectLogin(
      nameClaimType: (() { final guardedValue = map['nameClaimType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

