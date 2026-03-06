// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_autoscale_setting_args_doc}
/// Arguments for getAutoscaleSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_autoscale_setting_args_doc}
class GetAutoscaleSettingArgs {
  /// The autoscale setting name.
  final pulumi.Input<String> autoscaleSettingName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutoscaleSettingArgs].
  /// [autoscaleSettingName] The autoscale setting name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAutoscaleSettingArgs({
    required this.autoscaleSettingName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaleSettingName': autoscaleSettingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutoscaleSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscaleSettingArgs(
      autoscaleSettingName: pulumi.Input.fromValue(map['autoscaleSettingName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

