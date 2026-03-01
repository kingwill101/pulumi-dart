// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datadog_list_monitor_api_keys_args_doc}
/// Arguments for listMonitorApiKeys.
/// {@endtemplate}
/// {@macro pulumi_datadog_list_monitor_api_keys_args_doc}
class ListMonitorApiKeysArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListMonitorApiKeysArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListMonitorApiKeysArgs({
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

  factory ListMonitorApiKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListMonitorApiKeysArgs(
      monitorName: map['monitorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

