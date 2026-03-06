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
  const GetFlowDestinationEndpointsArgs({
    required this.connectionName,
    required this.flowName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'flowName': flowName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlowDestinationEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowDestinationEndpointsArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      flowName: pulumi.Input.fromValue(map['flowName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

