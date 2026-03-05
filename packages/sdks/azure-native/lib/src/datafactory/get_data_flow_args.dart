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
    required this.dataFlowName,
    required this.factoryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFlowName': dataFlowName,
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataFlowArgs.fromMap(Map<String, dynamic> map) {
    return GetDataFlowArgs(
      dataFlowName: pulumi.Input.fromValue(map['dataFlowName'] as String),
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

