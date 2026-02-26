// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_recaptchaenterprise_v1_waf_settings_waf_feature.dart';
import 'google_cloud_recaptchaenterprise_v1_waf_settings_waf_service.dart';

/// Settings specific to keys that can be used for WAF (Web Application Firewall).
class GoogleCloudRecaptchaenterpriseV1WafSettings {
  /// The WAF feature for which this key is enabled.
  final GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature wafFeature;

  /// The WAF service that uses this key.
  final GoogleCloudRecaptchaenterpriseV1WafSettingsWafService wafService;

  GoogleCloudRecaptchaenterpriseV1WafSettings({
    required this.wafFeature,
    required this.wafService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['wafFeature'] = wafFeature.value;
    map['wafService'] = wafService.value;
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1WafSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1WafSettings(
      wafFeature:
          GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature.fromValue(
              map['wafFeature'] as String),
      wafService:
          GoogleCloudRecaptchaenterpriseV1WafSettingsWafService.fromValue(
              map['wafService'] as String),
    );
  }
}
