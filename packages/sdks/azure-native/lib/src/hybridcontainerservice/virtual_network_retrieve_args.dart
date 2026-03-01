// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_extended_location.dart';
import 'virtual_networks_properties.dart';

/// {@template pulumi_hybridcontainerservice_virtual_network_retrieve_args_doc}
/// The set of arguments for VirtualNetworkRetrieve.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_virtual_network_retrieve_args_doc}
class VirtualNetworkRetrieveArgs {
  final pulumi.Input<VirtualNetworksExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
  final pulumi.Input<VirtualNetworksProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Parameter for the name of the virtual network
  final pulumi.Input<String>? virtualNetworksName;

  /// Creates a new [VirtualNetworkRetrieveArgs].
  /// [extendedLocation] Optional.
  /// [location] The geo-location where the resource lives
  /// [properties] HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualNetworksName] Parameter for the name of the virtual network
  VirtualNetworkRetrieveArgs({
    pulumi.Output<VirtualNetworksExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<VirtualNetworksProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualNetworksName,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<VirtualNetworksExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<VirtualNetworksProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworksName = pulumi.Input.asOptionalInput<String>(virtualNetworksName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualNetworksName': ?virtualNetworksName,
    };
  }

  factory VirtualNetworkRetrieveArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRetrieveArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<VirtualNetworksExtendedLocation>(VirtualNetworksExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<VirtualNetworksProperties>(VirtualNetworksProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworksName: map['virtualNetworksName'] == null ? null : pulumi.Output.create<String>(map['virtualNetworksName'] as String),
    );
  }
}

