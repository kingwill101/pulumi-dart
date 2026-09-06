// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_account_attribute_properties.dart';

/// {@template pulumi_awsconnector_ec2_account_attribute_args_doc}
/// The set of arguments for Ec2AccountAttribute.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ec2_account_attribute_args_doc}
class Ec2AccountAttributeArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Name of Ec2AccountAttribute
  final pulumi.Input<String?>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<Ec2AccountAttributeProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [Ec2AccountAttributeArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of Ec2AccountAttribute
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const Ec2AccountAttributeArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Ec2AccountAttributeProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Ec2AccountAttributeArgs.fromMap(Map<String, dynamic> map) {
    return Ec2AccountAttributeArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ec2AccountAttributeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
