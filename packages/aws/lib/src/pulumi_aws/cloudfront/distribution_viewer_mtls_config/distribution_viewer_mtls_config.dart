// ignore_for_file: unused_element, unnecessary_cast

import '../distribution_viewer_mtls_config_trust_store_config/distribution_viewer_mtls_config_trust_store_config.dart';

class DistributionViewerMtlsConfig {
  /// The mode for viewer mTLS. Valid values: <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>, <span pulumi-lang-nodejs="`optional`" pulumi-lang-dotnet="`Optional`" pulumi-lang-go="`optional`" pulumi-lang-python="`optional`" pulumi-lang-yaml="`optional`" pulumi-lang-java="`optional`">`optional`</span>.
  final String? mode;

  /// The trust store configuration for viewer mTLS (maximum one).
  final DistributionViewerMtlsConfigTrustStoreConfig? trustStoreConfig;

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
