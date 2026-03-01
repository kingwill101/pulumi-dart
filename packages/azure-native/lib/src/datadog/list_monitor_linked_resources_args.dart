// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_list_monitor_linked_resources_args_doc}
/// Arguments for listMonitorLinkedResources.
/// {@endtemplate}
/// {@macro pulumi_datadog_list_monitor_linked_resources_args_doc}
class ListMonitorLinkedResourcesArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListMonitorLinkedResourcesArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListMonitorLinkedResourcesArgs({
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

  factory ListMonitorLinkedResourcesArgs.fromMap(Map<String, dynamic> map) {
    return ListMonitorLinkedResourcesArgs(
      monitorName: map['monitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

