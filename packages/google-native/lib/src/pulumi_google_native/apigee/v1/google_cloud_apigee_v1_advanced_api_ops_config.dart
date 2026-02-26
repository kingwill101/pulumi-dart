// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Advanced API Ops add-on.
class GoogleCloudApigeeV1AdvancedApiOpsConfig {
  /// Flag that specifies whether the Advanced API Ops add-on is enabled.
  final bool? enabled;

  GoogleCloudApigeeV1AdvancedApiOpsConfig({
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

  factory GoogleCloudApigeeV1AdvancedApiOpsConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AdvancedApiOpsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
