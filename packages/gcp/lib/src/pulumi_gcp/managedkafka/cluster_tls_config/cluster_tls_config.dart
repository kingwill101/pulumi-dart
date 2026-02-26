// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_tls_config_trust_config/cluster_tls_config_trust_config.dart';

class ClusterTlsConfig {
  /// The rules for mapping mTLS certificate Distinguished Names (DNs) to shortened principal names for Kafka ACLs. This field corresponds exactly to the ssl.principal.mapping.rules broker config and matches the format and syntax defined in the Apache Kafka documentation. Setting or modifying this field will trigger a rolling restart of the Kafka brokers to apply the change. An empty string means that the default Kafka behavior is used. Example: `RULE:^CN=(.?),OU=ServiceUsers.$/$1@example.com/,DEFAULT`
  final String? sslPrincipalMappingRules;

  /// The configuration of the broker truststore. If specified, clients can use mTLS for authentication.
  /// Structure is documented below.
  final ClusterTlsConfigTrustConfig? trustConfig;

  ClusterTlsConfig({
    this.sslPrincipalMappingRules,
    this.trustConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sslPrincipalMappingRulesValue = sslPrincipalMappingRules;
    if (sslPrincipalMappingRulesValue != null) {
      map['sslPrincipalMappingRules'] = sslPrincipalMappingRulesValue;
    }
    final trustConfigValue = trustConfig;
    if (trustConfigValue != null) {
      map['trustConfig'] = trustConfigValue.toMap();
    }
    return map;
  }

  factory ClusterTlsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterTlsConfig(
      sslPrincipalMappingRules: map['sslPrincipalMappingRules'] == null
          ? null
          : map['sslPrincipalMappingRules'] as String,
      trustConfig: map['trustConfig'] == null
          ? null
          : ClusterTlsConfigTrustConfig.fromMap(
              (map['trustConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
