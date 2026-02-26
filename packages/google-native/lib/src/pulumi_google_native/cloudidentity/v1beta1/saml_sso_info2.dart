// ignore_for_file: unused_element, unnecessary_cast

/// Details that are applicable when `sso_mode` == `SAML_SSO`.
class SamlSsoInfo2 {
  /// Name of the `InboundSamlSsoProfile` to use. Must be of the form `inboundSamlSsoProfiles/{inbound_saml_sso_profile}`.
  final String inboundSamlSsoProfile;

  SamlSsoInfo2({
    required this.inboundSamlSsoProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSamlSsoProfile'] = inboundSamlSsoProfile;
    return map;
  }

  factory SamlSsoInfo2.fromMap(Map<String, dynamic> map) {
    return SamlSsoInfo2(
      inboundSamlSsoProfile: map['inboundSamlSsoProfile'] as String,
    );
  }
}
