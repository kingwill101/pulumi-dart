// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamIpamResourceDiscovery resources.
class IpamIpamResourceDiscoveryState {
  /// The time when the resource discovery was created.
  final pulumi.Input<String>? createTime;
  /// The description of resource discovery.
  final pulumi.Input<String>? ipamResourceDiscoveryDescription;
  /// The name of the resource
  final pulumi.Input<String>? ipamResourceDiscoveryName;
  /// The list of operating regions for resource discovery.
  final pulumi.Input<List<String>>? operatingRegionLists;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource discovery instance. Value:
  final pulumi.Input<String>? status;
  /// Label list information.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamResourceDiscoveryState].
  /// [createTime] The time when the resource discovery was created.
  /// [ipamResourceDiscoveryDescription] The description of resource discovery.
  /// [ipamResourceDiscoveryName] The name of the resource
  /// [operatingRegionLists] The list of operating regions for resource discovery.
  /// [regionId] The region ID of the resource
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource discovery instance. Value:
  /// [tags] Label list information.
  IpamIpamResourceDiscoveryState({
    this.createTime,
    this.ipamResourceDiscoveryDescription,
    this.ipamResourceDiscoveryName,
    this.operatingRegionLists,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'ipamResourceDiscoveryDescription': ?ipamResourceDiscoveryDescription,
      'ipamResourceDiscoveryName': ?ipamResourceDiscoveryName,
      'operatingRegionLists': ?operatingRegionLists,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory IpamIpamResourceDiscoveryState.fromMap(Map<String, dynamic> map) {
    return IpamIpamResourceDiscoveryState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      ipamResourceDiscoveryDescription: map['ipamResourceDiscoveryDescription'] == null ? null : (map['ipamResourceDiscoveryDescription']! as String).input(),
      ipamResourceDiscoveryName: map['ipamResourceDiscoveryName'] == null ? null : (map['ipamResourceDiscoveryName']! as String).input(),
      operatingRegionLists: map['operatingRegionLists'] == null ? null : ((map['operatingRegionLists']! as List).cast<String>()).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

