// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the compute and storage placement settings for the virtual machine.
class PlacementProfileResponse {
  /// Gets or sets the ARM Id of the cluster resource on which this virtual machine will deploy.
  final String? clusterId;
  /// Gets or sets the ARM Id of the datastore resource on which the data for the virtual machine will be kept.
  final String? datastoreId;
  /// Gets or sets the ARM Id of the host resource on which this virtual machine will deploy.
  final String? hostId;
  /// Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will deploy.
  final String? resourcePoolId;

  /// Creates a new [PlacementProfileResponse].
  /// [clusterId] Gets or sets the ARM Id of the cluster resource on which this virtual machine will deploy.
  /// [datastoreId] Gets or sets the ARM Id of the datastore resource on which the data for the virtual machine will be kept.
  /// [hostId] Gets or sets the ARM Id of the host resource on which this virtual machine will deploy.
  /// [resourcePoolId] Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will deploy.
  PlacementProfileResponse({
    this.clusterId,
    this.datastoreId,
    this.hostId,
    this.resourcePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'datastoreId': ?datastoreId,
      'hostId': ?hostId,
      'resourcePoolId': ?resourcePoolId,
    };
  }

  factory PlacementProfileResponse.fromMap(Map<String, dynamic> map) {
    return PlacementProfileResponse(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      datastoreId: map['datastoreId'] == null ? null : map['datastoreId'] as String,
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      resourcePoolId: map['resourcePoolId'] == null ? null : map['resourcePoolId'] as String,
    );
  }
}

