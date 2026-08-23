// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_get_monitor_default_application_key_args_doc}
/// Arguments for getMonitorDefaultApplicationKey.
/// {@endtemplate}
/// {@macro pulumi_datadog_get_monitor_default_application_key_args_doc}
class GetMonitorDefaultApplicationKeyArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMonitorDefaultApplicationKeyArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMonitorDefaultApplicationKeyArgs({
    required this.monitorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMonitorDefaultApplicationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorDefaultApplicationKeyArgs(
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
