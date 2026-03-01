// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_network_acl_properties.dart';

/// {@template pulumi_awsconnector_ec2_network_acl_args_doc}
/// The set of arguments for Ec2NetworkAcl.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ec2_network_acl_args_doc}
class Ec2NetworkAclArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Ec2NetworkAcl
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<Ec2NetworkAclProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Ec2NetworkAclArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of Ec2NetworkAcl
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  Ec2NetworkAclArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Ec2NetworkAclProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<Ec2NetworkAclProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Ec2NetworkAclProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Ec2NetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return Ec2NetworkAclArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Ec2NetworkAclProperties>(Ec2NetworkAclProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

