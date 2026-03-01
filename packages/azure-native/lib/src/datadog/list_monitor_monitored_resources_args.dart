// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_list_monitor_monitored_resources_args_doc}
/// Arguments for listMonitorMonitoredResources.
/// {@endtemplate}
/// {@macro pulumi_datadog_list_monitor_monitored_resources_args_doc}
class ListMonitorMonitoredResourcesArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListMonitorMonitoredResourcesArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListMonitorMonitoredResourcesArgs({
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

  factory ListMonitorMonitoredResourcesArgs.fromMap(Map<String, dynamic> map) {
    return ListMonitorMonitoredResourcesArgs(
      monitorName: map['monitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

