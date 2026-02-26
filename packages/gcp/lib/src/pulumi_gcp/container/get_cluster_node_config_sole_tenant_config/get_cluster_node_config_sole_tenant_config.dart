// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_config_sole_tenant_config_node_affinity/get_cluster_node_config_sole_tenant_config_node_affinity.dart';

class GetClusterNodeConfigSoleTenantConfig {
  /// Specifies the minimum number of vCPUs that each sole tenant node must have to use CPU overcommit. If not specified, the CPU overcommit feature is disabled.
  final int minNodeCpus;

  /// .
  final List<GetClusterNodeConfigSoleTenantConfigNodeAffinity> nodeAffinities;

  GetClusterNodeConfigSoleTenantConfig({
    required this.minNodeCpus,
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minNodeCpus'] = minNodeCpus;
    map['nodeAffinities'] = Input.encodeList<
        GetClusterNodeConfigSoleTenantConfigNodeAffinity,
        Map<String, dynamic>>(nodeAffinities, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodeConfigSoleTenantConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigSoleTenantConfig(
      minNodeCpus: map['minNodeCpus'] as int,
      nodeAffinities:
          Input.decodeList<GetClusterNodeConfigSoleTenantConfigNodeAffinity>(
              map['nodeAffinities'],
              (value) =>
                  GetClusterNodeConfigSoleTenantConfigNodeAffinity.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
