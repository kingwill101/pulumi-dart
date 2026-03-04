// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedResource resources.
class SharedResourceState {
  /// The time when the shared resource was associated with the resource share.
  final pulumi.Input<String>? createTime;

  /// The name of a permission. If you do not configure this parameter, the system automatically associates the default permission for the specified resource type with the resource share.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? permissionName;

  /// Associated resource ARN.
  ///
  /// &gt; **NOTE:**  This parameter is not available when the association type 'AssociationType' is the resource consumer 'Target'.
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
    this.createTime,
    this.permissionName,
    this.resourceArn,
    this.resourceId,
    this.resourceShareId,
    this.resourceType,
    this.status,
  });

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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissionName: (() {
        final guardedValue = map['permissionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceArn: (() {
        final guardedValue = map['resourceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceShareId: (() {
        final guardedValue = map['resourceShareId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
