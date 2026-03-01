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
    ExtendedLocation? extendedLocation,
    String? location,
    PublicIPAddressProperties? properties,
    String? publicIPAddressName,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<PublicIPAddressProperties>(properties),
      publicIPAddressName = pulumi.Input.asOptionalInput<String>(publicIPAddressName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : PublicIPAddressProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      publicIPAddressName: map['publicIPAddressName'] == null ? null : map['publicIPAddressName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

