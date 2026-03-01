// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_list_monitor_hosts_args_doc}
/// Arguments for listMonitorHosts.
/// {@endtemplate}
/// {@macro pulumi_datadog_list_monitor_hosts_args_doc}
class ListMonitorHostsArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListMonitorHostsArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListMonitorHostsArgs({
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

  factory ListMonitorHostsArgs.fromMap(Map<String, dynamic> map) {
    return ListMonitorHostsArgs(
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

