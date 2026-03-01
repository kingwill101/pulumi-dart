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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ipamResourceDiscoveryDescription,
    pulumi.Output<String>? ipamResourceDiscoveryName,
    pulumi.Output<List<String>>? operatingRegionLists,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ipamResourceDiscoveryDescription = pulumi.Input.asOptionalInput<String>(ipamResourceDiscoveryDescription),
      ipamResourceDiscoveryName = pulumi.Input.asOptionalInput<String>(ipamResourceDiscoveryName),
      operatingRegionLists = pulumi.Input.asOptionalInput<List<String>>(operatingRegionLists),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ipamResourceDiscoveryDescription: map['ipamResourceDiscoveryDescription'] == null ? null : pulumi.Output.create<String>(map['ipamResourceDiscoveryDescription'] as String),
      ipamResourceDiscoveryName: map['ipamResourceDiscoveryName'] == null ? null : pulumi.Output.create<String>(map['ipamResourceDiscoveryName'] as String),
      operatingRegionLists: map['operatingRegionLists'] == null ? null : pulumi.Output.create<List<String>>((map['operatingRegionLists'] as List).cast<String>()),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

