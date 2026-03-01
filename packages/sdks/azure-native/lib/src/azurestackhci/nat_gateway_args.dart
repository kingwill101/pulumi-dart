// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'nat_gateway_properties.dart';

/// {@template pulumi_azurestackhci_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_nat_gateway_args_doc}
class NatGatewayArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the nat gateway
  final pulumi.Input<String>? natGatewayName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<NatGatewayProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NatGatewayArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [natGatewayName] Name of the nat gateway
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NatGatewayArgs({
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? natGatewayName,
    pulumi.Output<NatGatewayProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      natGatewayName = pulumi.Input.asOptionalInput<String>(natGatewayName),
      properties = pulumi.Input.asOptionalInput<NatGatewayProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'natGatewayName': ?natGatewayName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NatGatewayProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      natGatewayName: map['natGatewayName'] == null ? null : pulumi.Output.create<String>(map['natGatewayName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<NatGatewayProperties>(NatGatewayProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

