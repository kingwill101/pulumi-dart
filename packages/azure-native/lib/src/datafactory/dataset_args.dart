// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_mwsobject_dataset.dart';

/// {@template pulumi_datafactory_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_args_doc}
class DatasetArgs {
  /// The dataset name.
  final pulumi.Input<String>? datasetName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Dataset properties.
  final pulumi.Input<AmazonMWSObjectDataset> properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatasetArgs].
  /// [datasetName] The dataset name.
  /// [factoryName] The factory name.
  /// [properties] Dataset properties.
  /// [resourceGroupName] The resource group name.
  DatasetArgs({
    String? datasetName,
    required String factoryName,
    required AmazonMWSObjectDataset properties,
    required String resourceGroupName,
  }) :
      datasetName = pulumi.Input.asOptionalInput<String>(datasetName),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      properties = pulumi.Input.asInput<AmazonMWSObjectDataset>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'factoryName': factoryName,
      'properties': pulumi.Input.mapInputValue<AmazonMWSObjectDataset, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      datasetName: map['datasetName'] == null ? null : map['datasetName'] as String,
      factoryName: map['factoryName'] as String,
      properties: AmazonMWSObjectDataset.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

