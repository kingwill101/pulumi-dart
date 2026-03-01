// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';
import 'subnet_override.dart';

/// {@template pulumi_devtestlab_virtual_network_args_doc}
/// The set of arguments for VirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_virtual_network_args_doc}
class VirtualNetworkArgs {
  /// The allowed subnets of the virtual network.
  final pulumi.Input<List<Subnet>>? allowedSubnets;
  /// The description of the virtual network.
  final pulumi.Input<String>? description;
  /// The Microsoft.Network resource identifier of the virtual network.
  final pulumi.Input<String>? externalProviderResourceId;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the VirtualNetwork
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The subnet overrides of the virtual network.
  final pulumi.Input<List<SubnetOverride>>? subnetOverrides;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualNetworkArgs].
  /// [allowedSubnets] The allowed subnets of the virtual network.
  /// [description] The description of the virtual network.
  /// [externalProviderResourceId] The Microsoft.Network resource identifier of the virtual network.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the VirtualNetwork
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnetOverrides] The subnet overrides of the virtual network.
  /// [tags] The tags of the resource.
  VirtualNetworkArgs({
    pulumi.Output<List<Subnet>>? allowedSubnets,
    pulumi.Output<String>? description,
    pulumi.Output<String>? externalProviderResourceId,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<SubnetOverride>>? subnetOverrides,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allowedSubnets = pulumi.Input.asOptionalInput<List<Subnet>>(allowedSubnets),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalProviderResourceId = pulumi.Input.asOptionalInput<String>(externalProviderResourceId),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subnetOverrides = pulumi.Input.asOptionalInput<List<SubnetOverride>>(subnetOverrides),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?pulumi.Input.mapOptionalInputValue<List<Subnet>, List<Map<String, dynamic>>>(allowedSubnets, (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'externalProviderResourceId': ?externalProviderResourceId,
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subnetOverrides': ?pulumi.Input.mapOptionalInputValue<List<SubnetOverride>, List<Map<String, dynamic>>>(subnetOverrides, (value) => pulumi.Input.encodeList<SubnetOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory VirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArgs(
      allowedSubnets: map['allowedSubnets'] == null ? null : pulumi.Output.create<List<Subnet>>(pulumi.Input.decodeList<Subnet>(map['allowedSubnets'], (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      externalProviderResourceId: map['externalProviderResourceId'] == null ? null : pulumi.Output.create<String>(map['externalProviderResourceId'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetOverrides: map['subnetOverrides'] == null ? null : pulumi.Output.create<List<SubnetOverride>>(pulumi.Input.decodeList<SubnetOverride>(map['subnetOverrides'], (value) => SubnetOverride.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

