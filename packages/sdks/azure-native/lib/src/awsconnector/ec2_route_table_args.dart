// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_route_table_properties.dart';

/// {@template pulumi_awsconnector_ec2_route_table_args_doc}
/// The set of arguments for Ec2RouteTable.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ec2_route_table_args_doc}
class Ec2RouteTableArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Ec2RouteTable
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<Ec2RouteTableProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Ec2RouteTableArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of Ec2RouteTable
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  Ec2RouteTableArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Ec2RouteTableProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<Ec2RouteTableProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Ec2RouteTableProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Ec2RouteTableArgs.fromMap(Map<String, dynamic> map) {
    return Ec2RouteTableArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Ec2RouteTableProperties>(Ec2RouteTableProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

