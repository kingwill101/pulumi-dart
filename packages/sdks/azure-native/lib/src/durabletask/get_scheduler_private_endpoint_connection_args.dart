// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_durabletask_get_scheduler_private_endpoint_connection_args_doc}
/// Arguments for getSchedulerPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_durabletask_get_scheduler_private_endpoint_connection_args_doc}
class GetSchedulerPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;

  /// Creates a new [GetSchedulerPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  const GetSchedulerPrivateEndpointConnectionArgs({
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
    required this.schedulerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'schedulerName': schedulerName,
    };
  }

  factory GetSchedulerPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSchedulerPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schedulerName: pulumi.Input.fromValue(map['schedulerName'] as String),
    );
  }
}
