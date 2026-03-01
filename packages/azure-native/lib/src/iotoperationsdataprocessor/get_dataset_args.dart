// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsdataprocessor_get_dataset_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsdataprocessor_get_dataset_args_doc}
class GetDatasetArgs {
  /// Name of dataset.
  final pulumi.Input<String> datasetName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatasetArgs].
  /// [datasetName] Name of dataset.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDatasetArgs({
    required String datasetName,
    required String instanceName,
    required String resourceGroupName,
  }) :
      datasetName = pulumi.Input.asInput<String>(datasetName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': datasetName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetName: map['datasetName'] as String,
      instanceName: map['instanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

