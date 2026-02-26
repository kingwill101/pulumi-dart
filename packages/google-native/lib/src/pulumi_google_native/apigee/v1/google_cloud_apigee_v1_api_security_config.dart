// ignore_for_file: unused_element, unnecessary_cast

/// Configurations of the API Security add-on.
class GoogleCloudApigeeV1ApiSecurityConfig {
  /// Flag that specifies whether the API security add-on is enabled.
  final bool? enabled;

  GoogleCloudApigeeV1ApiSecurityConfig({
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

  factory GoogleCloudApigeeV1ApiSecurityConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ApiSecurityConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
