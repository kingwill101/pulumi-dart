// ignore_for_file: unused_element, unnecessary_cast

/// Settings specific to keys that can be used for WAF (Web Application Firewall).
class GoogleCloudRecaptchaenterpriseV1WafSettingsResponse {
  /// The WAF feature for which this key is enabled.
  final String wafFeature;

  /// The WAF service that uses this key.
  final String wafService;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1WafSettingsResponse].
  /// [wafFeature] The WAF feature for which this key is enabled.
  /// [wafService] The WAF service that uses this key.
  GoogleCloudRecaptchaenterpriseV1WafSettingsResponse({
    required this.wafFeature,
    required this.wafService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafFeature': wafFeature,
      'wafService': wafService,
    };
  }

  factory GoogleCloudRecaptchaenterpriseV1WafSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRecaptchaenterpriseV1WafSettingsResponse(
      wafFeature: map['wafFeature'] as String,
      wafService: map['wafService'] as String,
    );
  }
}
