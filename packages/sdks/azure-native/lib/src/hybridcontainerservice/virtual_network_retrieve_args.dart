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
  const VirtualNetworkRetrieveArgs({
    this.extendedLocation,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.virtualNetworksName,
  });

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
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworksName: (() { final guardedValue = map['virtualNetworksName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

