// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_stack_set_properties.dart';

/// {@template pulumi_awsconnector_cloud_formation_stack_set_args_doc}
/// The set of arguments for CloudFormationStackSet.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_cloud_formation_stack_set_args_doc}
class CloudFormationStackSetArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of CloudFormationStackSet
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CloudFormationStackSetProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CloudFormationStackSetArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of CloudFormationStackSet
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CloudFormationStackSetArgs({
    String? location,
    String? name,
    CloudFormationStackSetProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<CloudFormationStackSetProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudFormationStackSetProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CloudFormationStackSetArgs.fromMap(Map<String, dynamic> map) {
    return CloudFormationStackSetArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : CloudFormationStackSetProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

