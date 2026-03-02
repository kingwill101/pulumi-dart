// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolWebAuthnConfiguration {
  /// The authentication domain that passkeys providers use as a relying party.
  final pulumi.Input<String>? relyingPartyId;
  /// If your user pool should require a passkey. Must be one of `required` or `preferred`.
  final pulumi.Input<String>? userVerification;

  /// Creates a new [UserPoolWebAuthnConfiguration].
  /// [relyingPartyId] The authentication domain that passkeys providers use as a relying party.
  /// [userVerification] If your user pool should require a passkey. Must be one of `required` or `preferred`.
  UserPoolWebAuthnConfiguration({
    this.relyingPartyId,
    this.userVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relyingPartyId': ?relyingPartyId,
      'userVerification': ?userVerification,
    };
  }

  factory UserPoolWebAuthnConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolWebAuthnConfiguration(
      relyingPartyId: map['relyingPartyId'] == null ? null : (map['relyingPartyId'] as String).input(),
      userVerification: map['userVerification'] == null ? null : (map['userVerification'] as String).input(),
    );
  }
}

