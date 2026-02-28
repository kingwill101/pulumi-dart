// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_web_key_settings_challenge_security_preference.dart';
import 'google_cloud_recaptchaenterprise_v1_web_key_settings_integration_type.dart';

/// Settings specific to keys that can be used by websites.
class GoogleCloudRecaptchaenterpriseV1WebKeySettings {
  /// Optional. If set to true, it means allowed_domains will not be enforced.
  final bool? allowAllDomains;
  /// Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  final bool? allowAmpTraffic;
  /// Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  final List<String>? allowedDomains;
  /// Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  final GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference? challengeSecurityPreference;
  /// Describes how this key is integrated with the website.
  final GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType integrationType;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1WebKeySettings].
  /// [allowAllDomains] Optional. If set to true, it means allowed_domains will not be enforced.
  /// [allowAmpTraffic] Optional. If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.
  /// [allowedDomains] Optional. Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'
  /// [challengeSecurityPreference] Optional. Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.
  /// [integrationType] Describes how this key is integrated with the website.
  GoogleCloudRecaptchaenterpriseV1WebKeySettings({
    this.allowAllDomains,
    this.allowAmpTraffic,
    this.allowedDomains,
    this.challengeSecurityPreference,
    required this.integrationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllDomains': ?allowAllDomains,
      'allowAmpTraffic': ?allowAmpTraffic,
      'allowedDomains': ?allowedDomains,
      'challengeSecurityPreference': ?challengeSecurityPreference == null ? null : challengeSecurityPreference!.value,
      'integrationType': integrationType.value,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1WebKeySettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1WebKeySettings(
      allowAllDomains: map['allowAllDomains'] == null ? null : map['allowAllDomains'] as bool,
      allowAmpTraffic: map['allowAmpTraffic'] == null ? null : map['allowAmpTraffic'] as bool,
      allowedDomains: map['allowedDomains'] == null ? null : (map['allowedDomains'] as List).cast<String>(),
      challengeSecurityPreference: map['challengeSecurityPreference'] == null ? null : GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSecurityPreference.fromValue(map['challengeSecurityPreference'] as String),
      integrationType: GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType.fromValue(map['integrationType'] as String),
    );
  }
}

