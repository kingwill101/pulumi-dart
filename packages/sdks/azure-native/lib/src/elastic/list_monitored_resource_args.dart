// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elastic_list_monitored_resource_args_doc}
/// Arguments for listMonitoredResource.
/// {@endtemplate}
/// {@macro pulumi_elastic_list_monitored_resource_args_doc}
class ListMonitoredResourceArgs {
  /// Monitor resource name
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListMonitoredResourceArgs].
  /// [monitorName] Monitor resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListMonitoredResourceArgs({
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

  factory ListMonitoredResourceArgs.fromMap(Map<String, dynamic> map) {
    return ListMonitoredResourceArgs(
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

