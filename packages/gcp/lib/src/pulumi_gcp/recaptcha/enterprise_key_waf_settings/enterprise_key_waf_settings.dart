// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseKeyWafSettings {
  /// Supported WAF features. For more information, see https://cloud.google.com/recaptcha-enterprise/docs/usecase#comparison_of_features. Possible values: CHALLENGE_PAGE, SESSION_TOKEN, ACTION_TOKEN, EXPRESS
  final String wafFeature;

  /// The WAF service that uses this key. Possible values: CA, FASTLY
  final String wafService;

  EnterpriseKeyWafSettings({
    required this.wafFeature,
    required this.wafService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['wafFeature'] = wafFeature;
    map['wafService'] = wafService;
    return map;
  }

  factory EnterpriseKeyWafSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWafSettings(
      wafFeature: map['wafFeature'] as String,
      wafService: map['wafService'] as String,
    );
  }
}
