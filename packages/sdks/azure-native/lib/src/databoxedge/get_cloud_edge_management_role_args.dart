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
  const GetCloudEdgeManagementRoleArgs({
    required this.deviceName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudEdgeManagementRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudEdgeManagementRoleArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

