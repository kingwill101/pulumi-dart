// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetTrackingOptions {
  /// The domain to use for tracking open and click events.
  final String customRedirectDomain;

  /// The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  final String? httpsPolicy;

  /// Creates a new [ConfigurationSetTrackingOptions].
  /// [customRedirectDomain] The domain to use for tracking open and click events.
  /// [httpsPolicy] The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  ConfigurationSetTrackingOptions({
    required this.customRedirectDomain,
    this.httpsPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRedirectDomain'] = customRedirectDomain;
    final httpsPolicyValue = httpsPolicy;
    if (httpsPolicyValue != null) {
      map['httpsPolicy'] = httpsPolicyValue;
    }
    return map;
  }

  factory ConfigurationSetTrackingOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetTrackingOptions(
      customRedirectDomain: map['customRedirectDomain'] as String,
      httpsPolicy:
          map['httpsPolicy'] == null ? null : map['httpsPolicy'] as String,
    );
  }
}
