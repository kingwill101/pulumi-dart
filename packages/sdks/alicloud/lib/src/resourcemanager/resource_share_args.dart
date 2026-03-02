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
    this.allowExternalTargets,
    this.permissionNames,
    this.resourceArns,
    this.resourceGroupId,
    required this.resourceShareName,
    this.resources,
    this.tags,
    this.targets,
  });

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
      allowExternalTargets: map['allowExternalTargets'] == null ? null : (map['allowExternalTargets']! as bool).input(),
      permissionNames: map['permissionNames'] == null ? null : ((map['permissionNames']! as List).cast<String>()).input(),
      resourceArns: map['resourceArns'] == null ? null : ((map['resourceArns']! as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      resourceShareName: (map['resourceShareName'] as String).input(),
      resources: map['resources'] == null ? null : (pulumi.Input.decodeList<ResourceShareResource>(map['resources']!, (value) => ResourceShareResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targets: map['targets'] == null ? null : ((map['targets']! as List).cast<String>()).input(),
    );
  }
}

