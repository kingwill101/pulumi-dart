// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'public_ipaddress_properties.dart';

/// {@template pulumi_azurestackhci_public_ipaddress_args_doc}
/// The set of arguments for PublicIPAddress.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_public_ipaddress_args_doc}
class PublicIPAddressArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<PublicIPAddressProperties?>? properties;
  /// Name of the public IP
  final pulumi.Input<String?>? publicIPAddressName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PublicIPAddressArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [publicIPAddressName] Name of the public IP
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const PublicIPAddressArgs({
    this.extendedLocation,
    this.location,
    this.properties,
    this.publicIPAddressName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publicIPAddressName': ?publicIPAddressName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PublicIPAddressArgs.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPAddressName: (() { final guardedValue = map['publicIPAddressName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
