// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_tls_config_trust_config_cas_config/cluster_tls_config_trust_config_cas_config.dart';

class ClusterTlsConfigTrustConfig {
  /// Configuration for the Google Certificate Authority Service. To support mTLS, you must specify at least one <span pulumi-lang-nodejs="`casConfigs`" pulumi-lang-dotnet="`CasConfigs`" pulumi-lang-go="`casConfigs`" pulumi-lang-python="`cas_configs`" pulumi-lang-yaml="`casConfigs`" pulumi-lang-java="`casConfigs`">`cas_configs`</span> block. A maximum of 10 CA pools can be specified. Additional CA pools may be specified with additional <span pulumi-lang-nodejs="`casConfigs`" pulumi-lang-dotnet="`CasConfigs`" pulumi-lang-go="`casConfigs`" pulumi-lang-python="`cas_configs`" pulumi-lang-yaml="`casConfigs`" pulumi-lang-java="`casConfigs`">`cas_configs`</span> blocks.
  /// Structure is documented below.
  final List<ClusterTlsConfigTrustConfigCasConfig>? casConfigs;

  ClusterTlsConfigTrustConfig({
    this.casConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final casConfigsValue = casConfigs;
    if (casConfigsValue != null) {
      map['casConfigs'] = Input.encodeList<ClusterTlsConfigTrustConfigCasConfig,
          Map<String, dynamic>>(casConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterTlsConfigTrustConfig.fromMap(Map<String, dynamic> map) {
    return ClusterTlsConfigTrustConfig(
      casConfigs: map['casConfigs'] == null
          ? null
          : Input.decodeList<ClusterTlsConfigTrustConfigCasConfig>(
              map['casConfigs'],
              (value) => ClusterTlsConfigTrustConfigCasConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
