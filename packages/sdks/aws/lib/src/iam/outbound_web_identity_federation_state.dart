// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutboundWebIdentityFederation resources.
class OutboundWebIdentityFederationState {
  /// A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  final pulumi.Input<String>? issuerIdentifier;

  /// Creates a new [OutboundWebIdentityFederationState].
  /// [issuerIdentifier] A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  OutboundWebIdentityFederationState({
    this.issuerIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerIdentifier': ?issuerIdentifier,
    };
  }

  factory OutboundWebIdentityFederationState.fromMap(Map<String, dynamic> map) {
    return OutboundWebIdentityFederationState(
      issuerIdentifier: map['issuerIdentifier'] == null ? null : (map['issuerIdentifier'] as String).input(),
    );
  }
}

