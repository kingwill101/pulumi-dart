// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_cloud_edge_management_role_args_doc}
/// Arguments for getCloudEdgeManagementRole.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_cloud_edge_management_role_args_doc}
class GetCloudEdgeManagementRoleArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The role name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudEdgeManagementRoleArgs].
  /// [deviceName] The device name.
  /// [name] The role name.
  /// [resourceGroupName] The resource group name.
  GetCloudEdgeManagementRoleArgs({
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudEdgeManagementRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudEdgeManagementRoleArgs(
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

