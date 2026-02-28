// ignore_for_file: unused_element, unnecessary_cast

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfoResponse {
  /// Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  final String inboundSamlSsoProfile;

  /// Creates a new [SamlSsoInfoResponse].
  /// [inboundSamlSsoProfile] Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  SamlSsoInfoResponse({
    required this.inboundSamlSsoProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlSsoProfile'] = inboundSamlSsoProfile;
    return map;
  }

  factory SamlSsoInfoResponse.fromMap(Map<String, dynamic> map) {
    return SamlSsoInfoResponse(
      inboundSamlSsoProfile: map['inboundSamlSsoProfile'] as String,
    );
  }
}
