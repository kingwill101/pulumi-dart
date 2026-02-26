// ignore_for_file: unused_element, unnecessary_cast

import '../ai_index_endpoint_deployed_index_dedicated_resources_machine_spec/ai_index_endpoint_deployed_index_dedicated_resources_machine_spec.dart';

class AiIndexEndpointDeployedIndexDedicatedResources {
  /// The minimum number of replicas this DeployedModel will be always deployed on.
  /// Structure is documented below.
  final AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec machineSpec;

  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If maxReplicaCount is not set, the default value is minReplicaCount
  final int? maxReplicaCount;

  /// The minimum number of machine replicas this DeployedModel will be always deployed on. This value must be greater than or equal to 1.
  final int minReplicaCount;

  AiIndexEndpointDeployedIndexDedicatedResources({
    required this.machineSpec,
    this.maxReplicaCount,
    required this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineSpec'] = machineSpec.toMap();
    final maxReplicaCountValue = maxReplicaCount;
    if (maxReplicaCountValue != null) {
      map['maxReplicaCount'] = maxReplicaCountValue;
    }
    map['minReplicaCount'] = minReplicaCount;
    return map;
  }

  factory AiIndexEndpointDeployedIndexDedicatedResources.fromMap(
      Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexDedicatedResources(
      machineSpec:
          AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>()),
      maxReplicaCount:
          map['maxReplicaCount'] == null ? null : map['maxReplicaCount'] as int,
      minReplicaCount: map['minReplicaCount'] as int,
    );
  }
}
