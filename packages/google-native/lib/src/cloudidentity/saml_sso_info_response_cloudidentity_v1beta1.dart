// ignore_for_file: unused_element, unnecessary_cast

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfoResponseCloudidentityV1beta1 {
  /// Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  final String inboundSamlSsoProfile;

  /// Creates a new [SamlSsoInfoResponseCloudidentityV1beta1].
  /// [inboundSamlSsoProfile] Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  SamlSsoInfoResponseCloudidentityV1beta1({
    required this.inboundSamlSsoProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlSsoProfile'] = inboundSamlSsoProfile;
    return map;
  }

  factory SamlSsoInfoResponseCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SamlSsoInfoResponseCloudidentityV1beta1(
      inboundSamlSsoProfile: map['inboundSamlSsoProfile'] as String,
    );
  }
}
