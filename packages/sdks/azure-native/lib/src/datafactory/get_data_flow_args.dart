// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_data_flow_args_doc}
/// Arguments for getDataFlow.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_data_flow_args_doc}
class GetDataFlowArgs {
  /// The data flow name.
  final pulumi.Input<String> dataFlowName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataFlowArgs].
  /// [dataFlowName] The data flow name.
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  GetDataFlowArgs({
    required pulumi.Output<String> dataFlowName,
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataFlowName = pulumi.Input.asInput<String>(dataFlowName),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFlowName': dataFlowName,
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataFlowArgs.fromMap(Map<String, dynamic> map) {
    return GetDataFlowArgs(
      dataFlowName: pulumi.Output.create<String>(map['dataFlowName'] as String),
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

