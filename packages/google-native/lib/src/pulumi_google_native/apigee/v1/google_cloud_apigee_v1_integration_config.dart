// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Integration add-on.
class GoogleCloudApigeeV1IntegrationConfig {
  /// Flag that specifies whether the Integration add-on is enabled.
  final bool? enabled;

  GoogleCloudApigeeV1IntegrationConfig({
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

  factory GoogleCloudApigeeV1IntegrationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1IntegrationConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
