// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Monetization add-on.
class GoogleCloudApigeeV1MonetizationConfig {
  /// Flag that specifies whether the Monetization add-on is enabled.
  final bool? enabled;

  GoogleCloudApigeeV1MonetizationConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1MonetizationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1MonetizationConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
