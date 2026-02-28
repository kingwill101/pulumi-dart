// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseKeyWebSettings {
  /// If set to true, it means allowed_domains will not be enforced.
  final bool? allowAllDomains;

  /// If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  final bool? allowAmpTraffic;

  /// Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  final List<String>? allowedDomains;

  /// Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY
  final String? challengeSecurityPreference;

  /// Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE
  final String integrationType;

  /// Creates a new [EnterpriseKeyWebSettings].
  /// [allowAllDomains] If set to true, it means allowed_domains will not be enforced.
  /// [allowAmpTraffic] If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  /// [allowedDomains] Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  /// [challengeSecurityPreference] Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY
  /// [integrationType] Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE
  EnterpriseKeyWebSettings({
    this.allowAllDomains,
    this.allowAmpTraffic,
    this.allowedDomains,
    this.challengeSecurityPreference,
    required this.integrationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllDomainsValue = allowAllDomains;
    if (allowAllDomainsValue != null) {
      map['allowAllDomains'] = allowAllDomainsValue;
    }
    final allowAmpTrafficValue = allowAmpTraffic;
    if (allowAmpTrafficValue != null) {
      map['allowAmpTraffic'] = allowAmpTrafficValue;
    }
    final allowedDomainsValue = allowedDomains;
    if (allowedDomainsValue != null) {
      map['allowedDomains'] = allowedDomainsValue;
    }
    final challengeSecurityPreferenceValue = challengeSecurityPreference;
    if (challengeSecurityPreferenceValue != null) {
      map['challengeSecurityPreference'] = challengeSecurityPreferenceValue;
    }
    map['integrationType'] = integrationType;
    return map;
  }

  factory EnterpriseKeyWebSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWebSettings(
      allowAllDomains: map['allowAllDomains'] == null
          ? null
          : map['allowAllDomains'] as bool,
      allowAmpTraffic: map['allowAmpTraffic'] == null
          ? null
          : map['allowAmpTraffic'] as bool,
      allowedDomains: map['allowedDomains'] == null
          ? null
          : (map['allowedDomains'] as List).cast<String>(),
      challengeSecurityPreference: map['challengeSecurityPreference'] == null
          ? null
          : map['challengeSecurityPreference'] as String,
      integrationType: map['integrationType'] as String,
    );
  }
}
