// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_cluster_gcp_config_access_config_network_config.dart';

class ConnectClusterGcpConfigAccessConfig {
  /// Virtual Private Cloud (VPC) subnets where IP addresses for the Kafka Connect cluster are allocated. To make the connect cluster available in a VPC, you must specify at least one subnet per network. You must specify between 1 and 10 subnets. Additional subnets may be specified with additional `network_configs` blocks.
  /// Structure is documented below.
  final List<ConnectClusterGcpConfigAccessConfigNetworkConfig> networkConfigs;

  /// Creates a new [ConnectClusterGcpConfigAccessConfig].
  /// [networkConfigs] Virtual Private Cloud (VPC) subnets where IP addresses for the Kafka Connect cluster are allocated. To make the connect cluster available in a VPC, you must specify at least one subnet per network. You must specify between 1 and 10 subnets. Additional subnets may be specified with additional `network_configs` blocks.
  ConnectClusterGcpConfigAccessConfig({
    required this.networkConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkConfigs'] = pulumi.Input.encodeList<
        ConnectClusterGcpConfigAccessConfigNetworkConfig,
        Map<String, dynamic>>(networkConfigs, (value) => value.toMap());
    return map;
  }

  factory ConnectClusterGcpConfigAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectClusterGcpConfigAccessConfig(
      networkConfigs: pulumi.Input.decodeList<
              ConnectClusterGcpConfigAccessConfigNetworkConfig>(
          map['networkConfigs'],
          (value) => ConnectClusterGcpConfigAccessConfigNetworkConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
