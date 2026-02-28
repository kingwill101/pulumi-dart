// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Analytics add-on.
class GoogleCloudApigeeV1AnalyticsConfig {
  /// Whether the Analytics add-on is enabled.
  final bool? enabled;

  /// Creates a new [GoogleCloudApigeeV1AnalyticsConfig].
  /// [enabled] Whether the Analytics add-on is enabled.
  GoogleCloudApigeeV1AnalyticsConfig({
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

  factory GoogleCloudApigeeV1AnalyticsConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AnalyticsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
