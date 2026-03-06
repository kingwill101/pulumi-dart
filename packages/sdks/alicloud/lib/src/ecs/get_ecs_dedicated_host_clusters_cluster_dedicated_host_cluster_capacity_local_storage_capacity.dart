// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity {
  /// The available capacity of the local disk. Unit: `GiB`.
  final pulumi.Input<int> availableDisk;
  /// The category of the data disk. Valid values:`cloud`, `cloud_efficiency`, `cloud_ssd`, `ephemeral_ssd`, `cloud_essd`.
  final pulumi.Input<String> dataDiskCategory;
  /// The total capacity of the local disk. Unit: `GiB`.
  final pulumi.Input<int> totalDisk;

  /// Creates a new [GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity].
  /// [availableDisk] The available capacity of the local disk. Unit: `GiB`.
  /// [dataDiskCategory] The category of the data disk. Valid values:`cloud`, `cloud_efficiency`, `cloud_ssd`, `ephemeral_ssd`, `cloud_essd`.
  /// [totalDisk] The total capacity of the local disk. Unit: `GiB`.
  const GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity({
    required this.availableDisk,
    required this.dataDiskCategory,
    required this.totalDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableDisk': availableDisk,
      'dataDiskCategory': dataDiskCategory,
      'totalDisk': totalDisk,
    };
  }

  factory GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity.fromMap(Map<String, dynamic> map) {
    return GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity(
      availableDisk: pulumi.Input.fromValue(map['availableDisk'] as int),
      dataDiskCategory: pulumi.Input.fromValue(map['dataDiskCategory'] as String),
      totalDisk: pulumi.Input.fromValue(map['totalDisk'] as int),
    );
  }
}

