// ignore_for_file: unused_element, unnecessary_cast

import '../connect_cluster_gcp_config_access_config/connect_cluster_gcp_config_access_config.dart';

class ConnectClusterGcpConfig {
  /// The configuration of access to the Kafka Connect cluster.
  /// Structure is documented below.
  final ConnectClusterGcpConfigAccessConfig accessConfig;

  ConnectClusterGcpConfig({
    required this.accessConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfig'] = accessConfig.toMap();
    return map;
  }

  factory ConnectClusterGcpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectClusterGcpConfig(
      accessConfig: ConnectClusterGcpConfigAccessConfig.fromMap(
          (map['accessConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
