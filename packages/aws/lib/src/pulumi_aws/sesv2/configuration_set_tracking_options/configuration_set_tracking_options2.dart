// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetTrackingOptions2 {
  /// The domain to use for tracking open and click events.
  final String customRedirectDomain;

  /// The https policy to use for tracking open and click events. Valid values are `REQUIRE`, `REQUIRE_OPEN_ONLY` or `OPTIONAL`.
  final String? httpsPolicy;

  ConfigurationSetTrackingOptions2({
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

  factory ConfigurationSetTrackingOptions2.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetTrackingOptions2(
      customRedirectDomain: map['customRedirectDomain'] as String,
      httpsPolicy:
          map['httpsPolicy'] == null ? null : map['httpsPolicy'] as String,
    );
  }
}
