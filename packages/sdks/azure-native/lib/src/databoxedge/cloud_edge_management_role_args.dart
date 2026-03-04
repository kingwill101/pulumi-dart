// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_cloud_edge_management_role_args_doc}
/// The set of arguments for CloudEdgeManagementRole.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_cloud_edge_management_role_args_doc}
class CloudEdgeManagementRoleArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;

  /// Role type.
  /// Expected value is 'CloudEdgeManagement'.
  final pulumi.Input<String> kind;

  /// The role name.
  final pulumi.Input<String>? name;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Role status.
  final pulumi.Input<String> roleStatus;

  /// Creates a new [CloudEdgeManagementRoleArgs].
  /// [deviceName] The device name.
  /// [kind] Role type.
  /// [name] The role name.
  /// [resourceGroupName] The resource group name.
  /// [roleStatus] Role status.
  CloudEdgeManagementRoleArgs({
    required this.deviceName,
    required this.kind,
    this.name,
    required this.resourceGroupName,
    required this.roleStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'kind': kind,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'roleStatus': roleStatus,
    };
  }

  factory CloudEdgeManagementRoleArgs.fromMap(Map<String, dynamic> map) {
    return CloudEdgeManagementRoleArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      roleStatus: pulumi.Input.fromValue(map['roleStatus'] as String),
    );
  }
}
