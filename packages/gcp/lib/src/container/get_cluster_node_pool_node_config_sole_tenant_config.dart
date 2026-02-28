// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_sole_tenant_config_node_affinity.dart';

class GetClusterNodePoolNodeConfigSoleTenantConfig {
  /// Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feature is disabled.
  final int minNodeCpus;

  /// .
  final List<GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity>
      nodeAffinities;

  /// Creates a new [GetClusterNodePoolNodeConfigSoleTenantConfig].
  /// [minNodeCpus] Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feature is disabled.
  /// [nodeAffinities] .
  GetClusterNodePoolNodeConfigSoleTenantConfig({
    required this.minNodeCpus,
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity,
        Map<String, dynamic>>(nodeAffinities, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolNodeConfigSoleTenantConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigSoleTenantConfig(
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity>(
          map['nodeAffinities'],
          (value) =>
              GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
