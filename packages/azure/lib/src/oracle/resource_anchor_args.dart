// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_resource_anchor_resource_anchor_args_doc}
/// The set of arguments for ResourceAnchor.
/// {@endtemplate}
/// {@macro pulumi_oracle_resource_anchor_resource_anchor_args_doc}
class ResourceAnchorArgs {
  /// The name which should be used for this Oracle Resource Anchor. Changing this forces a new Oracle Resource Anchor to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Oracle Resource Anchor should exist. Changing this forces a new Oracle Resource Anchor to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Oracle Resource Anchor.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceAnchorArgs].
  /// [name] The name which should be used for this Oracle Resource Anchor. Changing this forces a new Oracle Resource Anchor to be created.
  /// [resourceGroupName] The name of the Resource Group where the Oracle Resource Anchor should exist. Changing this forces a new Oracle Resource Anchor to be created.
  /// [tags] A mapping of tags which should be assigned to the Oracle Resource Anchor.
  ResourceAnchorArgs({
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceAnchorArgs.fromMap(Map<String, dynamic> map) {
    return ResourceAnchorArgs(
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

