// ignore_for_file: unused_element, unnecessary_cast

/// Configurations of the API Security add-on.
class GoogleCloudApigeeV1ApiSecurityConfig {
  /// Flag that specifies whether the API security add-on is enabled.
  final bool? enabled;

  /// Creates a new [GoogleCloudApigeeV1ApiSecurityConfig].
  /// [enabled] Flag that specifies whether the API security add-on is enabled.
  GoogleCloudApigeeV1ApiSecurityConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory GoogleCloudApigeeV1ApiSecurityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1ApiSecurityConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
