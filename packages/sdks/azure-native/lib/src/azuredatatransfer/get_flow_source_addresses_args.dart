// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_flow_source_addresses_args_doc}
/// Arguments for getFlowSourceAddresses.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_flow_source_addresses_args_doc}
class GetFlowSourceAddressesArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name for the flow that is to be onboarded.
  final pulumi.Input<String> flowName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowSourceAddressesArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFlowSourceAddressesArgs({
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

  factory GetFlowSourceAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowSourceAddressesArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      flowName: pulumi.Input.fromValue(map['flowName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

