// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Monetization add-on.
class GoogleCloudApigeeV1MonetizationConfig {
  /// Flag that specifies whether the Monetization add-on is enabled.
  final bool? enabled;

  /// Creates a new [GoogleCloudApigeeV1MonetizationConfig].
  /// [enabled] Flag that specifies whether the Monetization add-on is enabled.
  GoogleCloudApigeeV1MonetizationConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory GoogleCloudApigeeV1MonetizationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1MonetizationConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
