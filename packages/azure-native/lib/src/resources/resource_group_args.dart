// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_resource_group_args_doc}
/// The set of arguments for ResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_resource_group_args_doc}
class ResourceGroupArgs {
  /// The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  final pulumi.Input<String>? location;
  /// The ID of the resource that manages this resource group.
  final pulumi.Input<String>? managedBy;
  /// The name of the resource group to create or update. Can include alphanumeric, underscore, parentheses, hyphen, period (except at end), and Unicode characters that match the allowed characters.
  final pulumi.Input<String>? resourceGroupName;
  /// The tags attached to the resource group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupArgs].
  /// [location] The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations.
  /// [managedBy] The ID of the resource that manages this resource group.
  /// [resourceGroupName] The name of the resource group to create or update. Can include alphanumeric, underscore, parentheses, hyphen, period (except at end), and Unicode characters that match the allowed characters.
  /// [tags] The tags attached to the resource group.
  ResourceGroupArgs({
    String? location,
    String? managedBy,
    String? resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedBy': ?managedBy,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupArgs(
      location: map['location'] == null ? null : map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

