// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_viewer_mtls_config_trust_store_config.dart';

class DistributionViewerMtlsConfig {
  /// The mode for viewer mTLS. Valid values: `required`, `optional`.
  final pulumi.Input<String?>? mode;
  /// The trust store configuration for viewer mTLS (maximum one).
  final pulumi.Input<DistributionViewerMtlsConfigTrustStoreConfig?>? trustStoreConfig;

  /// Creates a new [DistributionViewerMtlsConfig].
  /// [mode] The mode for viewer mTLS. Valid values: `required`, `optional`.
  /// [trustStoreConfig] The trust store configuration for viewer mTLS (maximum one).
  const DistributionViewerMtlsConfig({
    this.mode,
    this.trustStoreConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'trustStoreConfig': ?pulumi.Input.mapOptionalInputValue<DistributionViewerMtlsConfigTrustStoreConfig, Map<String, dynamic>>(trustStoreConfig, (value) => value.toMap()),
    };
  }

  factory DistributionViewerMtlsConfig.fromMap(Map<String, dynamic> map) {
    return DistributionViewerMtlsConfig(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreConfig: (() { final guardedValue = map['trustStoreConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionViewerMtlsConfigTrustStoreConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
