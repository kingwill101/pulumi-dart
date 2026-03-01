// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_flow_destination_endpoints_args_doc}
/// Arguments for getFlowDestinationEndpoints.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_flow_destination_endpoints_args_doc}
class GetFlowDestinationEndpointsArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name for the flow that is to be onboarded.
  final pulumi.Input<String> flowName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowDestinationEndpointsArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFlowDestinationEndpointsArgs({
    required String connectionName,
    required String flowName,
    required String resourceGroupName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      flowName = pulumi.Input.asInput<String>(flowName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'flowName': flowName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlowDestinationEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowDestinationEndpointsArgs(
      connectionName: map['connectionName'] as String,
      flowName: map['flowName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

