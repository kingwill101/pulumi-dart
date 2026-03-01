// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_resource.dart';

/// Input properties used for looking up and filtering ResourceShare resources.
class ResourceShareState {
  /// Whether to allow sharing to accounts outside the resource directory. Value:
  /// - false (default): Only sharing within the resource directory is allowed.
  /// - true: Allow sharing to any account.
  final pulumi.Input<bool>? allowExternalTargets;
  /// The create time of resource share.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? resourceShareName;
  /// The owner of resource share,  `Self` and `OtherAccounts`.
  final pulumi.Input<String>? resourceShareOwner;
  /// List of shared resources. See `resources` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<ResourceShareResource>>? resources;
  /// The status of resource share.  `Active`,`Deleted` and `Deleting`.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource user.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<String>>? targets;

  /// Creates a new [ResourceShareState].
  /// [allowExternalTargets] Whether to allow sharing to accounts outside the resource directory. Value:
  /// [createTime] The create time of resource share.
  /// [permissionNames] Share permission name. When it is empty, the system automatically binds the default permissions associated with the resource type. For more information, see [Permission Library](https://www.alibabacloud.com/help/en/resource-management/resource-sharing/user-guide/permissions-for-resource-sharing).
  /// [resourceArns] ResourceArns
  /// [resourceGroupId] The ID of the resource group
  /// [resourceShareName] The name of resource share.
  /// [resourceShareOwner] The owner of resource share,  `Self` and `OtherAccounts`.
  /// [resources] List of shared resources. See `resources` below.
  /// [status] The status of resource share.  `Active`,`Deleted` and `Deleting`.
  /// [tags] The tag of the resource
  /// [targets] Resource user.
  ResourceShareState({
    pulumi.Output<bool>? allowExternalTargets,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? permissionNames,
    pulumi.Output<List<String>>? resourceArns,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? resourceShareName,
    pulumi.Output<String>? resourceShareOwner,
    pulumi.Output<List<ResourceShareResource>>? resources,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? targets,
  }) :
      allowExternalTargets = pulumi.Input.asOptionalInput<bool>(allowExternalTargets),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      permissionNames = pulumi.Input.asOptionalInput<List<String>>(permissionNames),
      resourceArns = pulumi.Input.asOptionalInput<List<String>>(resourceArns),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceShareName = pulumi.Input.asOptionalInput<String>(resourceShareName),
      resourceShareOwner = pulumi.Input.asOptionalInput<String>(resourceShareOwner),
      resources = pulumi.Input.asOptionalInput<List<ResourceShareResource>>(resources),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targets = pulumi.Input.asOptionalInput<List<String>>(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalTargets': ?allowExternalTargets,
      'createTime': ?createTime,
      'permissionNames': ?permissionNames,
      'resourceArns': ?resourceArns,
      'resourceGroupId': ?resourceGroupId,
      'resourceShareName': ?resourceShareName,
      'resourceShareOwner': ?resourceShareOwner,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ResourceShareResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceShareResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'targets': ?targets,
    };
  }

  factory ResourceShareState.fromMap(Map<String, dynamic> map) {
    return ResourceShareState(
      allowExternalTargets: map['allowExternalTargets'] == null ? null : pulumi.Output.create<bool>(map['allowExternalTargets'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      permissionNames: map['permissionNames'] == null ? null : pulumi.Output.create<List<String>>((map['permissionNames'] as List).cast<String>()),
      resourceArns: map['resourceArns'] == null ? null : pulumi.Output.create<List<String>>((map['resourceArns'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceShareName: map['resourceShareName'] == null ? null : pulumi.Output.create<String>(map['resourceShareName'] as String),
      resourceShareOwner: map['resourceShareOwner'] == null ? null : pulumi.Output.create<String>(map['resourceShareOwner'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<ResourceShareResource>>(pulumi.Input.decodeList<ResourceShareResource>(map['resources'], (value) => ResourceShareResource.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<String>>((map['targets'] as List).cast<String>()),
    );
  }
}

