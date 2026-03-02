// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_flow_stream_connection_string_args_doc}
/// Arguments for getFlowStreamConnectionString.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_flow_stream_connection_string_args_doc}
class GetFlowStreamConnectionStringArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name for the flow that is to be onboarded.
  final pulumi.Input<String> flowName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowStreamConnectionStringArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFlowStreamConnectionStringArgs({
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

  factory GetFlowStreamConnectionStringArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowStreamConnectionStringArgs(
      connectionName: (map['connectionName'] as String).input(),
      flowName: (map['flowName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

