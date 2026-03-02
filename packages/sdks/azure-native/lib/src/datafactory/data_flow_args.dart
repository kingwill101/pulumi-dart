// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flowlet.dart';

/// {@template pulumi_datafactory_data_flow_args_doc}
/// The set of arguments for DataFlow.
/// {@endtemplate}
/// {@macro pulumi_datafactory_data_flow_args_doc}
class DataFlowArgs {
  /// The data flow name.
  final pulumi.Input<String>? dataFlowName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Data flow properties.
  final pulumi.Input<Flowlet> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DataFlowArgs].
  /// [dataFlowName] The data flow name.
  /// [factoryName] The factory name.
  /// [properties] Data flow properties.
  /// [resourceGroupName] The resource group name.
  DataFlowArgs({
    this.dataFlowName,
    required this.factoryName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFlowName': ?dataFlowName,
      'factoryName': factoryName,
      'properties': pulumi.Input.mapInputValue<Flowlet, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DataFlowArgs.fromMap(Map<String, dynamic> map) {
    return DataFlowArgs(
      dataFlowName: map['dataFlowName'] == null ? null : (map['dataFlowName'] as String).input(),
      factoryName: (map['factoryName'] as String).input(),
      properties: (Flowlet.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

