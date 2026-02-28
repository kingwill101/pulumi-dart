// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Connectors Platform add-on.
class GoogleCloudApigeeV1ConnectorsPlatformConfig {
  /// Flag that specifies whether the Connectors Platform add-on is enabled.
  final bool? enabled;

  /// Creates a new [GoogleCloudApigeeV1ConnectorsPlatformConfig].
  /// [enabled] Flag that specifies whether the Connectors Platform add-on is enabled.
  GoogleCloudApigeeV1ConnectorsPlatformConfig({
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

  factory GoogleCloudApigeeV1ConnectorsPlatformConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ConnectorsPlatformConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
