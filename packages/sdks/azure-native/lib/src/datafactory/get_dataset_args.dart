// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_dataset_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_dataset_args_doc}
class GetDatasetArgs {
  /// The dataset name.
  final pulumi.Input<String> datasetName;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatasetArgs].
  /// [datasetName] The dataset name.
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  GetDatasetArgs({
    required this.datasetName,
    required this.factoryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': datasetName,
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetName: (map['datasetName'] as String).input(),
      factoryName: (map['factoryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

