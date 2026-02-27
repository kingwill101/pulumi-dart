// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_node_config_sole_tenant_config_node_affinity/node_pool_node_config_sole_tenant_config_node_affinity.dart';

class NodePoolNodeConfigSoleTenantConfig {
  /// Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feature is disabled.
  final int? minNodeCpus;

  /// .
  final List<NodePoolNodeConfigSoleTenantConfigNodeAffinity> nodeAffinities;

  NodePoolNodeConfigSoleTenantConfig({
    this.minNodeCpus,
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minNodeCpusValue = minNodeCpus;
    if (minNodeCpusValue != null) {
      map['minNodeCpus'] = minNodeCpusValue;
    }
    map['nodeAffinities'] = pulumi.Input.encodeList<
        NodePoolNodeConfigSoleTenantConfigNodeAffinity,
        Map<String, dynamic>>(nodeAffinities, (value) => value.toMap());
    return map;
  }

  factory NodePoolNodeConfigSoleTenantConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigSoleTenantConfig(
      minNodeCpus:
          map['minNodeCpus'] == null ? null : map['minNodeCpus'] as int,
      nodeAffinities: pulumi.Input.decodeList<
              NodePoolNodeConfigSoleTenantConfigNodeAffinity>(
          map['nodeAffinities'],
          (value) => NodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
