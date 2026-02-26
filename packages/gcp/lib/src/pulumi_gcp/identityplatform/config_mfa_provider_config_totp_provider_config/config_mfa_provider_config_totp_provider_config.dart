// ignore_for_file: unused_element, unnecessary_cast

class ConfigMfaProviderConfigTotpProviderConfig {
  /// The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  final int? adjacentIntervals;

  ConfigMfaProviderConfigTotpProviderConfig({
    this.adjacentIntervals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adjacentIntervalsValue = adjacentIntervals;
    if (adjacentIntervalsValue != null) {
      map['adjacentIntervals'] = adjacentIntervalsValue;
    }
    return map;
  }

  factory ConfigMfaProviderConfigTotpProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return ConfigMfaProviderConfigTotpProviderConfig(
      adjacentIntervals: map['adjacentIntervals'] == null
          ? null
          : map['adjacentIntervals'] as int,
    );
  }
}
