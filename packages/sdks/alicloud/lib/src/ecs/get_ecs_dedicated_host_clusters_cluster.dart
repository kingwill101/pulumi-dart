// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_dedicated_host_clusters_cluster_dedicated_host_cluster_capacity.dart';

class GetEcsDedicatedHostClustersCluster {
  /// The capacity of the dedicated host cluster.
  final List<GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity> dedicatedHostClusterCapacities;
  /// The ID of the dedicated host cluster.
  final String dedicatedHostClusterId;
  /// The name of the dedicated host cluster.
  final String dedicatedHostClusterName;
  /// The IDs of dedicated hosts in the dedicated host cluster.
  final List<String> dedicatedHostIds;
  /// The description of the dedicated host cluster.
  final String description;
  /// The ID of the Dedicated Host Cluster.
  final String id;
  /// The ID of the resource group to which the dedicated host cluster belongs.
  final String resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The zone ID of the dedicated host cluster.
  final String zoneId;

  /// Creates a new [GetEcsDedicatedHostClustersCluster].
  /// [dedicatedHostClusterCapacities] The capacity of the dedicated host cluster.
  /// [dedicatedHostClusterId] The ID of the dedicated host cluster.
  /// [dedicatedHostClusterName] The name of the dedicated host cluster.
  /// [dedicatedHostIds] The IDs of dedicated hosts in the dedicated host cluster.
  /// [description] The description of the dedicated host cluster.
  /// [id] The ID of the Dedicated Host Cluster.
  /// [resourceGroupId] The ID of the resource group to which the dedicated host cluster belongs.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The zone ID of the dedicated host cluster.
  GetEcsDedicatedHostClustersCluster({
    required this.dedicatedHostClusterCapacities,
    required this.dedicatedHostClusterId,
    required this.dedicatedHostClusterName,
    required this.dedicatedHostIds,
    required this.description,
    required this.id,
    required this.resourceGroupId,
    required this.tags,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostClusterCapacities': pulumi.Input.encodeList<GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity, Map<String, dynamic>>(dedicatedHostClusterCapacities, (value) => value.toMap()),
      'dedicatedHostClusterId': dedicatedHostClusterId,
      'dedicatedHostClusterName': dedicatedHostClusterName,
      'dedicatedHostIds': dedicatedHostIds,
      'description': description,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
      'zoneId': zoneId,
    };
  }

  factory GetEcsDedicatedHostClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetEcsDedicatedHostClustersCluster(
      dedicatedHostClusterCapacities: pulumi.Input.decodeList<GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity>(map['dedicatedHostClusterCapacities'], (value) => GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedHostClusterId: map['dedicatedHostClusterId'] as String,
      dedicatedHostClusterName: map['dedicatedHostClusterName'] as String,
      dedicatedHostIds: (map['dedicatedHostIds'] as List).cast<String>(),
      description: map['description'] as String,
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zoneId: map['zoneId'] as String,
    );
  }
}

