// ignore_for_file: unused_element, unnecessary_cast

/// Sharing environment is a behavior model for sharing data within a data exchange. This option is configurable for a data exchange.
class SharingEnvironmentConfig {
  /// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  final Map<String, dynamic>? dcrExchangeConfig;

  /// Default Analytics Hub data exchange, used for secured data sharing.
  final Map<String, dynamic>? defaultExchangeConfig;

  SharingEnvironmentConfig({
    this.dcrExchangeConfig,
    this.defaultExchangeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dcrExchangeConfigValue = dcrExchangeConfig;
    if (dcrExchangeConfigValue != null) {
      map['dcrExchangeConfig'] = dcrExchangeConfigValue;
    }
    final defaultExchangeConfigValue = defaultExchangeConfig;
    if (defaultExchangeConfigValue != null) {
      map['defaultExchangeConfig'] = defaultExchangeConfigValue;
    }
    return map;
  }

  factory SharingEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return SharingEnvironmentConfig(
      dcrExchangeConfig: map['dcrExchangeConfig'] == null
          ? null
          : (map['dcrExchangeConfig'] as Map).cast<String, dynamic>(),
      defaultExchangeConfig: map['defaultExchangeConfig'] == null
          ? null
          : (map['defaultExchangeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
