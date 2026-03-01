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
    pulumi.Output<String>? ipamResourceDiscoveryDescription,
    pulumi.Output<String>? ipamResourceDiscoveryName,
    required pulumi.Output<List<String>> operatingRegionLists,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ipamResourceDiscoveryDescription = pulumi.Input.asOptionalInput<String>(ipamResourceDiscoveryDescription),
      ipamResourceDiscoveryName = pulumi.Input.asOptionalInput<String>(ipamResourceDiscoveryName),
      operatingRegionLists = pulumi.Input.asInput<List<String>>(operatingRegionLists),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ipamResourceDiscoveryDescription: map['ipamResourceDiscoveryDescription'] == null ? null : pulumi.Output.create<String>(map['ipamResourceDiscoveryDescription'] as String),
      ipamResourceDiscoveryName: map['ipamResourceDiscoveryName'] == null ? null : pulumi.Output.create<String>(map['ipamResourceDiscoveryName'] as String),
      operatingRegionLists: pulumi.Output.create<List<String>>((map['operatingRegionLists'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

