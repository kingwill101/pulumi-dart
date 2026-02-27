// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_domain_cluster_config_node_option_node_config/get_domain_cluster_config_node_option_node_config.dart';

class GetDomainClusterConfigNodeOption {
  /// Sizing of a node type.
  final List<GetDomainClusterConfigNodeOptionNodeConfig> nodeConfigs;

  /// Type of node this configuration describes.
  final String nodeType;

  GetDomainClusterConfigNodeOption({
    required this.nodeConfigs,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeConfigs'] = pulumi.Input.encodeList<
        GetDomainClusterConfigNodeOptionNodeConfig,
        Map<String, dynamic>>(nodeConfigs, (value) => value.toMap());
    map['nodeType'] = nodeType;
    return map;
  }

  factory GetDomainClusterConfigNodeOption.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigNodeOption(
      nodeConfigs:
          pulumi.Input.decodeList<GetDomainClusterConfigNodeOptionNodeConfig>(
              map['nodeConfigs'],
              (value) => GetDomainClusterConfigNodeOptionNodeConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodeType: map['nodeType'] as String,
    );
  }
}
