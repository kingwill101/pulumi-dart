// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_get_monitor_default_key_args_doc}
/// Arguments for getMonitorDefaultKey.
/// {@endtemplate}
/// {@macro pulumi_datadog_get_monitor_default_key_args_doc}
class GetMonitorDefaultKeyArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMonitorDefaultKeyArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMonitorDefaultKeyArgs({
    required pulumi.Output<String> monitorName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      monitorName = pulumi.Input.asInput<String>(monitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMonitorDefaultKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorDefaultKeyArgs(
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

