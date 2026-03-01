// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_io_trole_args_doc}
/// Arguments for getIoTRole.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_io_trole_args_doc}
class GetIoTRoleArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The role name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIoTRoleArgs].
  /// [deviceName] The device name.
  /// [name] The role name.
  /// [resourceGroupName] The resource group name.
  GetIoTRoleArgs({
    required String deviceName,
    required String name,
    required String resourceGroupName,
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

  factory GetIoTRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetIoTRoleArgs(
      deviceName: map['deviceName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

