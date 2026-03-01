// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_get_monitor_args_doc}
/// Arguments for getMonitor.
/// {@endtemplate}
/// {@macro pulumi_elastic_get_monitor_args_doc}
class GetMonitorArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMonitorArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMonitorArgs({
    required String monitorName,
    required String resourceGroupName,
  }) :
      monitorName = pulumi.Input.asInput<String>(monitorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorArgs(
      monitorName: map['monitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

