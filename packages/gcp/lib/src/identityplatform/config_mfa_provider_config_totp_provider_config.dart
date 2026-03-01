// ignore_for_file: unused_element, unnecessary_cast

class ConfigMfaProviderConfigTotpProviderConfig {
  /// The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  final int? adjacentIntervals;

  /// Creates a new [ConfigMfaProviderConfigTotpProviderConfig].
  /// [adjacentIntervals] The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  ConfigMfaProviderConfigTotpProviderConfig({this.adjacentIntervals});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'adjacentIntervals': ?adjacentIntervals};
  }

  factory ConfigMfaProviderConfigTotpProviderConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigMfaProviderConfigTotpProviderConfig(
      adjacentIntervals: map['adjacentIntervals'] == null
          ? null
          : map['adjacentIntervals'] as int,
    );
  }
}
