// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_viewer_mtls_config_trust_store_config.dart';

class DistributionViewerMtlsConfig {
  /// The mode for viewer mTLS. Valid values: `required`, `optional`.
  final String? mode;

  /// The trust store configuration for viewer mTLS (maximum one).
  final DistributionViewerMtlsConfigTrustStoreConfig? trustStoreConfig;

  /// Creates a new [DistributionViewerMtlsConfig].
  /// [mode] The mode for viewer mTLS. Valid values: `required`, `optional`.
  /// [trustStoreConfig] The trust store configuration for viewer mTLS (maximum one).
  DistributionViewerMtlsConfig({
    this.mode,
    this.trustStoreConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final trustStoreConfigValue = trustStoreConfig;
    if (trustStoreConfigValue != null) {
      map['trustStoreConfig'] = trustStoreConfigValue.toMap();
    }
    return map;
  }

  factory DistributionViewerMtlsConfig.fromMap(Map<String, dynamic> map) {
    return DistributionViewerMtlsConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
      trustStoreConfig: map['trustStoreConfig'] == null
          ? null
          : DistributionViewerMtlsConfigTrustStoreConfig.fromMap(
              (map['trustStoreConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
