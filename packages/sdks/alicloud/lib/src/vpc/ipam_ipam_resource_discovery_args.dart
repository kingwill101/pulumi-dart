// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_resource_discovery_ipam_ipam_resource_discovery_args_doc}
/// The set of arguments for IpamIpamResourceDiscovery.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_resource_discovery_ipam_ipam_resource_discovery_args_doc}
class IpamIpamResourceDiscoveryArgs {
  /// The description of resource discovery.
  final pulumi.Input<String>? ipamResourceDiscoveryDescription;
  /// The name of the resource
  final pulumi.Input<String>? ipamResourceDiscoveryName;
  /// The list of operating regions for resource discovery.
  final pulumi.Input<List<String>> operatingRegionLists;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Label list information.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamResourceDiscoveryArgs].
  /// [ipamResourceDiscoveryDescription] The description of resource discovery.
  /// [ipamResourceDiscoveryName] The name of the resource
  /// [operatingRegionLists] The list of operating regions for resource discovery.
  /// [resourceGroupId] The ID of the resource group
  /// [tags] Label list information.
  IpamIpamResourceDiscoveryArgs({
    this.ipamResourceDiscoveryDescription,
    this.ipamResourceDiscoveryName,
    required this.operatingRegionLists,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamResourceDiscoveryDescription': ?ipamResourceDiscoveryDescription,
      'ipamResourceDiscoveryName': ?ipamResourceDiscoveryName,
      'operatingRegionLists': operatingRegionLists,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory IpamIpamResourceDiscoveryArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamResourceDiscoveryArgs(
      ipamResourceDiscoveryDescription: map['ipamResourceDiscoveryDescription'] == null ? null : (map['ipamResourceDiscoveryDescription']! as String).input(),
      ipamResourceDiscoveryName: map['ipamResourceDiscoveryName'] == null ? null : (map['ipamResourceDiscoveryName']! as String).input(),
      operatingRegionLists: ((map['operatingRegionLists'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

