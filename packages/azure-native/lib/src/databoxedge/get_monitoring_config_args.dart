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
    required String deviceName,
    required String resourceGroupName,
    required String roleName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'roleName': roleName,
    };
  }

  factory GetMonitoringConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitoringConfigArgs(
      deviceName: map['deviceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      roleName: map['roleName'] as String,
    );
  }
}

