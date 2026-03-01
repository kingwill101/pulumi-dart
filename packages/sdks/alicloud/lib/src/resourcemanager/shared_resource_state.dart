// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedResource resources.
class SharedResourceState {
  /// The time when the shared resource was associated with the resource share.
  final pulumi.Input<String>? createTime;
  /// The name of a permission. If you do not configure this parameter, the system automatically associates the default permission for the specified resource type with the resource share.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? permissionName;
  /// Associated resource ARN.
  ///
  /// > **NOTE:**  This parameter is not available when the association type 'AssociationType' is the resource consumer 'Target'.
  final pulumi.Input<String>? resourceArn;
  /// The ID of the shared resource.
  final pulumi.Input<String>? resourceId;
  /// The ID of the resource share.
  final pulumi.Input<String>? resourceShareId;
  /// The type of the shared resource.
  final pulumi.Input<String>? resourceType;
  /// The association status.
  final pulumi.Input<String>? status;

  /// Creates a new [SharedResourceState].
  /// [createTime] The time when the shared resource was associated with the resource share.
  /// [permissionName] The name of a permission. If you do not configure this parameter, the system automatically associates the default permission for the specified resource type with the resource share.
  /// [resourceArn] Associated resource ARN.
  /// [resourceId] The ID of the shared resource.
  /// [resourceShareId] The ID of the resource share.
  /// [resourceType] The type of the shared resource.
  /// [status] The association status.
  SharedResourceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? permissionName,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceShareId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      permissionName = pulumi.Input.asOptionalInput<String>(permissionName),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceShareId = pulumi.Input.asOptionalInput<String>(resourceShareId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'permissionName': ?permissionName,
      'resourceArn': ?resourceArn,
      'resourceId': ?resourceId,
      'resourceShareId': ?resourceShareId,
      'resourceType': ?resourceType,
      'status': ?status,
    };
  }

  factory SharedResourceState.fromMap(Map<String, dynamic> map) {
    return SharedResourceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      permissionName: map['permissionName'] == null ? null : pulumi.Output.create<String>(map['permissionName'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceShareId: map['resourceShareId'] == null ? null : pulumi.Output.create<String>(map['resourceShareId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

