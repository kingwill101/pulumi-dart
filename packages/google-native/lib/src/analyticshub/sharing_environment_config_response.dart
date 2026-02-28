// ignore_for_file: unused_element, unnecessary_cast

/// Sharing environment is a behavior model for sharing data within a data exchange. This option is configurable for a data exchange.
class SharingEnvironmentConfigResponse {
  /// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  final Map<String, dynamic> dcrExchangeConfig;

  /// Default Analytics Hub data exchange, used for secured data sharing.
  final Map<String, dynamic> defaultExchangeConfig;

  /// Creates a new [SharingEnvironmentConfigResponse].
  /// [dcrExchangeConfig] Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  /// [defaultExchangeConfig] Default Analytics Hub data exchange, used for secured data sharing.
  SharingEnvironmentConfigResponse({
    required this.dcrExchangeConfig,
    required this.defaultExchangeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dcrExchangeConfig'] = dcrExchangeConfig;
    map['defaultExchangeConfig'] = defaultExchangeConfig;
    return map;
  }

  factory SharingEnvironmentConfigResponse.fromMap(Map<String, dynamic> map) {
    return SharingEnvironmentConfigResponse(
      dcrExchangeConfig:
          (map['dcrExchangeConfig'] as Map).cast<String, dynamic>(),
      defaultExchangeConfig:
          (map['defaultExchangeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}
