// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetTrackingOption {
  /// The domain to use for tracking open and click events.
  final String customRedirectDomain;

  /// The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  final String httpsPolicy;

  /// Creates a new [GetConfigurationSetTrackingOption].
  /// [customRedirectDomain] The domain to use for tracking open and click events.
  /// [httpsPolicy] The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  GetConfigurationSetTrackingOption({
    required this.customRedirectDomain,
    required this.httpsPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRedirectDomain': customRedirectDomain,
      'httpsPolicy': httpsPolicy,
    };
  }

  factory GetConfigurationSetTrackingOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetTrackingOption(
      customRedirectDomain: map['customRedirectDomain'] as String,
      httpsPolicy: map['httpsPolicy'] as String,
    );
  }
}
