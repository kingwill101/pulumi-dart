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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<String>>? permissionNames;
  /// ResourceArns
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<String>>? resourceArns;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The name of resource share.
  final pulumi.Input<String>? resourceShareName;
  /// The owner of resource share,  `Self` and `OtherAccounts`.
  final pulumi.Input<String>? resourceShareOwner;
  /// List of shared resources. See `resources` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<List<ResourceShareResource>>? resources;
  /// The status of resource share.  `Active`,`Deleted` and `Deleting`.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource user.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
    this.allowExternalTargets,
    this.createTime,
    this.permissionNames,
    this.resourceArns,
    this.resourceGroupId,
    this.resourceShareName,
    this.resourceShareOwner,
    this.resources,
    this.status,
    this.tags,
    this.targets,
  });

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
      allowExternalTargets: (() { final guardedValue = map['allowExternalTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionNames: (() { final guardedValue = map['permissionNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareName: (() { final guardedValue = map['resourceShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareOwner: (() { final guardedValue = map['resourceShareOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceShareResource>(guardedValue, (value) => ResourceShareResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

