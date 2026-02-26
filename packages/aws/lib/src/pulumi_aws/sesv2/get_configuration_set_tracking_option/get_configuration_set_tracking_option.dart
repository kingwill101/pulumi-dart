// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetTrackingOption {
  /// The domain to use for tracking open and click events.
  final String customRedirectDomain;

  /// The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  final String httpsPolicy;

  GetConfigurationSetTrackingOption({
    required this.customRedirectDomain,
    required this.httpsPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRedirectDomain'] = customRedirectDomain;
    map['httpsPolicy'] = httpsPolicy;
    return map;
  }

  factory GetConfigurationSetTrackingOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetTrackingOption(
      customRedirectDomain: map['customRedirectDomain'] as String,
      httpsPolicy: map['httpsPolicy'] as String,
    );
  }
}
