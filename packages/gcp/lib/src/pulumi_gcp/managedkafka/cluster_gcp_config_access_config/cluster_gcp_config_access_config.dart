// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_gcp_config_access_config_network_config/cluster_gcp_config_access_config_network_config.dart';

class ClusterGcpConfigAccessConfig {
  /// Virtual Private Cloud (VPC) subnets where IP addresses for the Kafka cluster are allocated. To make the cluster available in a VPC, you must specify at least one <span pulumi-lang-nodejs="`networkConfigs`" pulumi-lang-dotnet="`NetworkConfigs`" pulumi-lang-go="`networkConfigs`" pulumi-lang-python="`network_configs`" pulumi-lang-yaml="`networkConfigs`" pulumi-lang-java="`networkConfigs`">`network_configs`</span> block. Max of 10 subnets per cluster. Additional subnets may be specified with additional <span pulumi-lang-nodejs="`networkConfigs`" pulumi-lang-dotnet="`NetworkConfigs`" pulumi-lang-go="`networkConfigs`" pulumi-lang-python="`network_configs`" pulumi-lang-yaml="`networkConfigs`" pulumi-lang-java="`networkConfigs`">`network_configs`</span> blocks.
  /// Structure is documented below.
  final List<ClusterGcpConfigAccessConfigNetworkConfig> networkConfigs;

  ClusterGcpConfigAccessConfig({
    required this.networkConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkConfigs'] = Input.encodeList<
        ClusterGcpConfigAccessConfigNetworkConfig,
        Map<String, dynamic>>(networkConfigs, (value) => value.toMap());
    return map;
  }

  factory ClusterGcpConfigAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGcpConfigAccessConfig(
      networkConfigs:
          Input.decodeList<ClusterGcpConfigAccessConfigNetworkConfig>(
              map['networkConfigs'],
              (value) => ClusterGcpConfigAccessConfigNetworkConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
