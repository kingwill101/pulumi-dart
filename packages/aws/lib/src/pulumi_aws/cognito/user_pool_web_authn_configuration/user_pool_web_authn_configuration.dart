// ignore_for_file: unused_element, unnecessary_cast

class UserPoolWebAuthnConfiguration {
  /// The authentication domain that passkeys providers use as a relying party.
  final String? relyingPartyId;

  /// If your user pool should require a passkey. Must be one of `required` or `preferred`.
  final String? userVerification;

  UserPoolWebAuthnConfiguration({
    this.relyingPartyId,
    this.userVerification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final relyingPartyIdValue = relyingPartyId;
    if (relyingPartyIdValue != null) {
      map['relyingPartyId'] = relyingPartyIdValue;
    }
    final userVerificationValue = userVerification;
    if (userVerificationValue != null) {
      map['userVerification'] = userVerificationValue;
    }
    return map;
  }

  factory UserPoolWebAuthnConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolWebAuthnConfiguration(
      relyingPartyId: map['relyingPartyId'] == null
          ? null
          : map['relyingPartyId'] as String,
      userVerification: map['userVerification'] == null
          ? null
          : map['userVerification'] as String,
    );
  }
}
