/// Inbound SSO behavior.
enum InboundSsoAssignmentSsoMode2 {
  ssoModeUnspecified("SSO_MODE_UNSPECIFIED"),
  ssoOff("SSO_OFF"),
  samlSso("SAML_SSO"),
  domainWideSamlIfEnabled("DOMAIN_WIDE_SAML_IF_ENABLED");

  const InboundSsoAssignmentSsoMode2(this.value);
  final String value;

  static InboundSsoAssignmentSsoMode2 fromValue(String value) {
    for (final item in InboundSsoAssignmentSsoMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundSsoAssignmentSsoMode2 value: $value');
  }
}
