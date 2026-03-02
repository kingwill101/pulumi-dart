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
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<PublicIPAddressProperties>? properties;
  /// Name of the public IP
  final pulumi.Input<String>? publicIPAddressName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PublicIPAddressArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [publicIPAddressName] Name of the public IP
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PublicIPAddressArgs({
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
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (PublicIPAddressProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      publicIPAddressName: map['publicIPAddressName'] == null ? null : (map['publicIPAddressName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

