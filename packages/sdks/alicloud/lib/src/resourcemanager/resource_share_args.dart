// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_resource.dart';

/// {@template pulumi_resourcemanager_resource_share_resource_share_args_doc}
/// The set of arguments for ResourceShare.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_resource_share_resource_share_args_doc}
class ResourceShareArgs {
  /// Whether to allow sharing to accounts outside the resource directory. Value:
  /// - false (default): Only sharing within the resource directory is allowed.
  /// - true: Allow sharing to any account.
  final pulumi.Input<bool>? allowExternalTargets;
  /// Share permission name. When it is empty, the system automatically binds the default permissions associated with the resource type. For more information, see [Permission Library](https://www.alibabacloud.com/help/en/resource-management/resource-sharing/user-guide/permissions-for-resource-sharing).
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<String>>? permissionNames;
  /// ResourceArns
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<String>>? resourceArns;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The name of resource share.
  final pulumi.Input<String> resourceShareName;
  /// List of shared resources. See `resources` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<ResourceShareResource>>? resources;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource user.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<String>>? targets;

  /// Creates a new [ResourceShareArgs].
  /// [allowExternalTargets] Whether to allow sharing to accounts outside the resource directory. Value:
  /// [permissionNames] Share permission name. When it is empty, the system automatically binds the default permissions associated with the resource type. For more information, see [Permission Library](https://www.alibabacloud.com/help/en/resource-management/resource-sharing/user-guide/permissions-for-resource-sharing).
  /// [resourceArns] ResourceArns
  /// [resourceGroupId] The ID of the resource group
  /// [resourceShareName] The name of resource share.
  /// [resources] List of shared resources. See `resources` below.
  /// [tags] The tag of the resource
  /// [targets] Resource user.
  ResourceShareArgs({
    pulumi.Output<bool>? allowExternalTargets,
    pulumi.Output<List<String>>? permissionNames,
    pulumi.Output<List<String>>? resourceArns,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> resourceShareName,
    pulumi.Output<List<ResourceShareResource>>? resources,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? targets,
  }) :
      allowExternalTargets = pulumi.Input.asOptionalInput<bool>(allowExternalTargets),
      permissionNames = pulumi.Input.asOptionalInput<List<String>>(permissionNames),
      resourceArns = pulumi.Input.asOptionalInput<List<String>>(resourceArns),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceShareName = pulumi.Input.asInput<String>(resourceShareName),
      resources = pulumi.Input.asOptionalInput<List<ResourceShareResource>>(resources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targets = pulumi.Input.asOptionalInput<List<String>>(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalTargets': ?allowExternalTargets,
      'permissionNames': ?permissionNames,
      'resourceArns': ?resourceArns,
      'resourceGroupId': ?resourceGroupId,
      'resourceShareName': resourceShareName,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ResourceShareResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceShareResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targets': ?targets,
    };
  }

  factory ResourceShareArgs.fromMap(Map<String, dynamic> map) {
    return ResourceShareArgs(
      allowExternalTargets: map['allowExternalTargets'] == null ? null : pulumi.Output.create<bool>(map['allowExternalTargets'] as bool),
      permissionNames: map['permissionNames'] == null ? null : pulumi.Output.create<List<String>>((map['permissionNames'] as List).cast<String>()),
      resourceArns: map['resourceArns'] == null ? null : pulumi.Output.create<List<String>>((map['resourceArns'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceShareName: pulumi.Output.create<String>(map['resourceShareName'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<ResourceShareResource>>(pulumi.Input.decodeList<ResourceShareResource>(map['resources'], (value) => ResourceShareResource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<String>>((map['targets'] as List).cast<String>()),
    );
  }
}

