// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_extended_location.dart';
import 'virtual_network_properties.dart';

/// {@template pulumi_hybridcontainerservice_virtual_network_retrieve_args_doc}
/// The set of arguments for VirtualNetworkRetrieve.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_virtual_network_retrieve_args_doc}
class VirtualNetworkRetrieveArgs {
  /// Extended location pointing to the underlying infrastructure
  final pulumi.Input<VirtualNetworkExtendedLocation?>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Properties of the virtual network resource
  final pulumi.Input<VirtualNetworkProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Parameter for the name of the virtual network
  final pulumi.Input<String?>? virtualNetworkName;

  /// Creates a new [VirtualNetworkRetrieveArgs].
  /// [extendedLocation] Extended location pointing to the underlying infrastructure
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of the virtual network resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualNetworkName] Parameter for the name of the virtual network
  const VirtualNetworkRetrieveArgs({
    this.extendedLocation,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualNetworkName': ?virtualNetworkName,
    };
  }

  factory VirtualNetworkRetrieveArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRetrieveArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkName: (() { final guardedValue = map['virtualNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
