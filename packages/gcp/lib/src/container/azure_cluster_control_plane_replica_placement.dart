// ignore_for_file: unused_element, unnecessary_cast


class AzureClusterControlPlaneReplicaPlacement {
  /// For a given replica, the Azure availability zone where to provision the control plane VM and the ETCD disk.
  final String azureAvailabilityZone;
  /// For a given replica, the ARM ID of the subnet where the control plane VM is deployed. Make sure it's a subnet under the virtual network in the cluster configuration.
  final String subnetId;

  /// Creates a new [AzureClusterControlPlaneReplicaPlacement].
  /// [azureAvailabilityZone] For a given replica, the Azure availability zone where to provision the control plane VM and the ETCD disk.
  /// [subnetId] For a given replica, the ARM ID of the subnet where the control plane VM is deployed. Make sure it's a subnet under the virtual network in the cluster configuration.
  AzureClusterControlPlaneReplicaPlacement({
    required this.azureAvailabilityZone,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAvailabilityZone': azureAvailabilityZone,
      'subnetId': subnetId,
    };
  }

  factory AzureClusterControlPlaneReplicaPlacement.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlaneReplicaPlacement(
      azureAvailabilityZone: map['azureAvailabilityZone'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

