// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_cluster_config_node_option_node_config.dart';

class GetDomainClusterConfigNodeOption {
  /// Sizing of a node type.
  final pulumi.Input<List<GetDomainClusterConfigNodeOptionNodeConfig>> nodeConfigs;
  /// Type of node this configuration describes.
  final pulumi.Input<String> nodeType;

  /// Creates a new [GetDomainClusterConfigNodeOption].
  /// [nodeConfigs] Sizing of a node type.
  /// [nodeType] Type of node this configuration describes.
  GetDomainClusterConfigNodeOption({
    required this.nodeConfigs,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigs': pulumi.Input.mapInputValue<List<GetDomainClusterConfigNodeOptionNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<GetDomainClusterConfigNodeOptionNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeType': nodeType,
    };
  }

  factory GetDomainClusterConfigNodeOption.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigNodeOption(
      nodeConfigs: (pulumi.Input.decodeList<GetDomainClusterConfigNodeOptionNodeConfig>(map['nodeConfigs']!, (value) => GetDomainClusterConfigNodeOptionNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeType: (map['nodeType'] as String).input(),
    );
  }
}

