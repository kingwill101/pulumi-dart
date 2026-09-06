// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_args_doc}
class DatasetArgs {
  /// The dataset name.
  final pulumi.Input<String?>? datasetName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Dataset properties.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatasetArgs].
  /// [datasetName] The dataset name.
  /// [factoryName] The factory name.
  /// [properties] Dataset properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const DatasetArgs({
    this.datasetName,
    required this.factoryName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'factoryName': factoryName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      datasetName: (() { final guardedValue = map['datasetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
