// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_dedicated_host_clusters_cluster_dedicated_host_cluster_capacity_local_storage_capacity.dart';

class GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity {
  /// The available memory size. Unit: `GiB`.
  final int availableMemory;
  /// The number of available vCPUs.
  final int availableVcpus;
  /// The local storage.
  final List<GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity> localStorageCapacities;
  /// The total memory size. Unit: `GiB`.
  final int totalMemory;
  /// The total number of vCPUs.
  final int totalVcpus;

  /// Creates a new [GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity].
  /// [availableMemory] The available memory size. Unit: `GiB`.
  /// [availableVcpus] The number of available vCPUs.
  /// [localStorageCapacities] The local storage.
  /// [totalMemory] The total memory size. Unit: `GiB`.
  /// [totalVcpus] The total number of vCPUs.
  GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity({
    required this.availableMemory,
    required this.availableVcpus,
    required this.localStorageCapacities,
    required this.totalMemory,
    required this.totalVcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMemory': availableMemory,
      'availableVcpus': availableVcpus,
      'localStorageCapacities': pulumi.Input.encodeList<GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity, Map<String, dynamic>>(localStorageCapacities, (value) => value.toMap()),
      'totalMemory': totalMemory,
      'totalVcpus': totalVcpus,
    };
  }

  factory GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity.fromMap(Map<String, dynamic> map) {
    return GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacity(
      availableMemory: map['availableMemory'] as int,
      availableVcpus: map['availableVcpus'] as int,
      localStorageCapacities: pulumi.Input.decodeList<GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity>(map['localStorageCapacities'], (value) => GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity.fromMap((value as Map).cast<String, dynamic>())),
      totalMemory: map['totalMemory'] as int,
      totalVcpus: map['totalVcpus'] as int,
    );
  }
}

