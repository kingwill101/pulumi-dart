// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_flow_destination_endpoint_ports_args_doc}
/// Arguments for getFlowDestinationEndpointPorts.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_flow_destination_endpoint_ports_args_doc}
class GetFlowDestinationEndpointPortsArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name for the flow that is to be onboarded.
  final pulumi.Input<String> flowName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowDestinationEndpointPortsArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFlowDestinationEndpointPortsArgs({
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

  factory GetFlowDestinationEndpointPortsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowDestinationEndpointPortsArgs(
      connectionName: map['connectionName'] as String,
      flowName: map['flowName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

