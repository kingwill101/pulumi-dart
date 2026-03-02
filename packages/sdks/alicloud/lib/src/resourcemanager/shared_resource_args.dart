// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_shared_resource_shared_resource_args_doc}
/// The set of arguments for SharedResource.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_shared_resource_shared_resource_args_doc}
class SharedResourceArgs {
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
  final pulumi.Input<String> resourceShareId;
  /// The type of the shared resource.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [SharedResourceArgs].
  /// [permissionName] The name of a permission. If you do not configure this parameter, the system automatically associates the default permission for the specified resource type with the resource share.
  /// [resourceArn] Associated resource ARN.
  /// [resourceId] The ID of the shared resource.
  /// [resourceShareId] The ID of the resource share.
  /// [resourceType] The type of the shared resource.
  SharedResourceArgs({
    this.permissionName,
    this.resourceArn,
    this.resourceId,
    required this.resourceShareId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionName': ?permissionName,
      'resourceArn': ?resourceArn,
      'resourceId': ?resourceId,
      'resourceShareId': resourceShareId,
      'resourceType': ?resourceType,
    };
  }

  factory SharedResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedResourceArgs(
      permissionName: map['permissionName'] == null ? null : (map['permissionName'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceShareId: (map['resourceShareId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

