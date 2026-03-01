// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_flow_args_doc}
/// Arguments for getFlow.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_flow_args_doc}
class GetFlowArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name for the flow that is to be onboarded.
  final pulumi.Input<String> flowName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [flowName] The name for the flow that is to be onboarded.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFlowArgs({
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> flowName,
    required pulumi.Output<String> resourceGroupName,
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

  factory GetFlowArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      flowName: pulumi.Output.create<String>(map['flowName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

