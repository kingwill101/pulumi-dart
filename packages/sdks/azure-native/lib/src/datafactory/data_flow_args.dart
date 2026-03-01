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
    pulumi.Output<String>? dataFlowName,
    required pulumi.Output<String> factoryName,
    required pulumi.Output<Flowlet> properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataFlowName = pulumi.Input.asOptionalInput<String>(dataFlowName),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      properties = pulumi.Input.asInput<Flowlet>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      dataFlowName: map['dataFlowName'] == null ? null : pulumi.Output.create<String>(map['dataFlowName'] as String),
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      properties: pulumi.Output.create<Flowlet>(Flowlet.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

