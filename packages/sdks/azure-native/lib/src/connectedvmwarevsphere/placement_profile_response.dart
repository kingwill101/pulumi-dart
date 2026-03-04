// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the compute and storage placement settings for the virtual machine.
class PlacementProfileResponse {
  /// Gets or sets the ARM Id of the cluster resource on which this virtual machine will deploy.
  final pulumi.Input<String>? clusterId;

  /// Gets or sets the ARM Id of the datastore resource on which the data for the virtual machine will be kept.
  final pulumi.Input<String>? datastoreId;

  /// Gets or sets the ARM Id of the host resource on which this virtual machine will deploy.
  final pulumi.Input<String>? hostId;

  /// Gets or sets the ARM Id of the resourcePool resource on which this virtual machine will deploy.
  final pulumi.Input<String>? resourcePoolId;

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
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datastoreId: (() {
        final guardedValue = map['datastoreId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostId: (() {
        final guardedValue = map['hostId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourcePoolId: (() {
        final guardedValue = map['resourcePoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
