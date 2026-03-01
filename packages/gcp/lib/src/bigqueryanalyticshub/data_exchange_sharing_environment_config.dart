// ignore_for_file: unused_element, unnecessary_cast


class DataExchangeSharingEnvironmentConfig {
  /// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  final Map<String, dynamic>? dcrExchangeConfig;
  /// Default Analytics Hub data exchange, used for secured data sharing.
  final Map<String, dynamic>? defaultExchangeConfig;

  /// Creates a new [DataExchangeSharingEnvironmentConfig].
  /// [dcrExchangeConfig] Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  /// [defaultExchangeConfig] Default Analytics Hub data exchange, used for secured data sharing.
  DataExchangeSharingEnvironmentConfig({
    this.dcrExchangeConfig,
    this.defaultExchangeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcrExchangeConfig': ?dcrExchangeConfig,
      'defaultExchangeConfig': ?defaultExchangeConfig,
    };
  }

  factory DataExchangeSharingEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return DataExchangeSharingEnvironmentConfig(
      dcrExchangeConfig: map['dcrExchangeConfig'] == null ? null : (map['dcrExchangeConfig'] as Map).cast<String, dynamic>(),
      defaultExchangeConfig: map['defaultExchangeConfig'] == null ? null : (map['defaultExchangeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}

