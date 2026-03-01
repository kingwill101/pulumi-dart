// ignore_for_file: unused_element, unnecessary_cast


class GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity {
  /// The available capacity of the local disk. Unit: `GiB`.
  final int availableDisk;
  /// The category of the data disk. Valid values:`cloud`, `cloud_efficiency`, `cloud_ssd`, `ephemeral_ssd`, `cloud_essd`.
  final String dataDiskCategory;
  /// The total capacity of the local disk. Unit: `GiB`.
  final int totalDisk;

  /// Creates a new [GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity].
  /// [availableDisk] The available capacity of the local disk. Unit: `GiB`.
  /// [dataDiskCategory] The category of the data disk. Valid values:`cloud`, `cloud_efficiency`, `cloud_ssd`, `ephemeral_ssd`, `cloud_essd`.
  /// [totalDisk] The total capacity of the local disk. Unit: `GiB`.
  GetEcsDedicatedHostClustersClusterDedicatedHostClusterCapacityLocalStorageCapacity({
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
      availableDisk: map['availableDisk'] as int,
      dataDiskCategory: map['dataDiskCategory'] as String,
      totalDisk: map['totalDisk'] as int,
    );
  }
}

