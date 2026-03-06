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
  const VirtualNetworkArgs({
    this.allowedSubnets,
    this.description,
    this.externalProviderResourceId,
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.subnetOverrides,
    this.tags,
  });

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
      allowedSubnets: (() { final guardedValue = map['allowedSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Subnet>(guardedValue, (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalProviderResourceId: (() { final guardedValue = map['externalProviderResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnetOverrides: (() { final guardedValue = map['subnetOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetOverride>(guardedValue, (value) => SubnetOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

