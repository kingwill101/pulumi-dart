// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_monitoring_config_args_doc}
/// Arguments for getMonitoringConfig.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_monitoring_config_args_doc}
class GetMonitoringConfigArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetMonitoringConfigArgs].
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [roleName] The role name.
  GetMonitoringConfigArgs({
    required this.deviceName,
    required this.resourceGroupName,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory GetMonitoringConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitoringConfigArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

