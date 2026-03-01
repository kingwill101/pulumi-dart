// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_network.dart';

/// {@template pulumi_network_virtual_network_appliance_args_doc}
/// The set of arguments for VirtualNetworkAppliance.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_appliance_args_doc}
class VirtualNetworkApplianceArgs {
  /// Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  final pulumi.Input<String>? bandwidthInGbps;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the subnet resource.
  final pulumi.Input<SubnetNetwork>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual network appliance.
  final pulumi.Input<String>? virtualNetworkApplianceName;

  /// Creates a new [VirtualNetworkApplianceArgs].
  /// [bandwidthInGbps] Bandwidth of the VirtualNetworkAppliance resource in Gbps.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [subnet] The reference to the subnet resource.
  /// [tags] Resource tags.
  /// [virtualNetworkApplianceName] The name of the virtual network appliance.
  VirtualNetworkApplianceArgs({
    String? bandwidthInGbps,
    String? id,
    String? location,
    required String resourceGroupName,
    SubnetNetwork? subnet,
    Map<String, String>? tags,
    String? virtualNetworkApplianceName,
  }) :
      bandwidthInGbps = pulumi.Input.asOptionalInput<String>(bandwidthInGbps),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnet = pulumi.Input.asOptionalInput<SubnetNetwork>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkApplianceName = pulumi.Input.asOptionalInput<String>(virtualNetworkApplianceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInGbps': ?bandwidthInGbps,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'subnet': ?subnet,
      'tags': ?tags,
      'virtualNetworkApplianceName': ?virtualNetworkApplianceName,
    };
  }

  factory VirtualNetworkApplianceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkApplianceArgs(
      bandwidthInGbps: map['bandwidthInGbps'] == null ? null : map['bandwidthInGbps'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subnet: map['subnet'] == null ? null : map['subnet'] as SubnetNetwork,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualNetworkApplianceName: map['virtualNetworkApplianceName'] == null ? null : map['virtualNetworkApplianceName'] as String,
    );
  }
}

