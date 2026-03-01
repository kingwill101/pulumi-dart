// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_resource_group_resource_group_args_doc}
/// The set of arguments for ResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_resource_group_resource_group_args_doc}
class ResourceGroupArgs {
  /// The display name of the resource group. The name must be 1 to 50 characters in length.
  final pulumi.Input<String> displayName;
  /// Field `name` has been deprecated from provider version 1.114.0. New field `resource_group_name` instead.
  final pulumi.Input<String>? name;
  /// The unique identifier of the resource group. The identifier must be 3 to 50 characters in length and can contain letters, digits, and hyphens (-). The identifier must start with a letter.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupArgs].
  /// [displayName] The display name of the resource group. The name must be 1 to 50 characters in length.
  /// [name] Field `name` has been deprecated from provider version 1.114.0. New field `resource_group_name` instead.
  /// [resourceGroupName] The unique identifier of the resource group. The identifier must be 3 to 50 characters in length and can contain letters, digits, and hyphens (-). The identifier must start with a letter.
  /// [tags] A mapping of tags to assign to the resource.
  ResourceGroupArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

