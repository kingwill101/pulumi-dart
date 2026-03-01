// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_create_request_parameters.dart';
import 'dataset_create_request_registration.dart';
import 'dataset_create_request_time_series.dart';

/// {@template pulumi_machinelearningservices_machine_learning_dataset_args_doc}
/// The set of arguments for MachineLearningDataset.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_machine_learning_dataset_args_doc}
class MachineLearningDatasetArgs {
  /// The Dataset name.
  final pulumi.Input<String>? datasetName;
  /// Specifies dataset type.
  final pulumi.Input<String> datasetType;
  final pulumi.Input<DatasetCreateRequestParameters> parameters;
  final pulumi.Input<DatasetCreateRequestRegistration> registration;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Skip validation that ensures data can be loaded from the dataset before registration.
  final pulumi.Input<bool>? skipValidation;
  final pulumi.Input<DatasetCreateRequestTimeSeries>? timeSeries;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MachineLearningDatasetArgs].
  /// [datasetName] The Dataset name.
  /// [datasetType] Specifies dataset type.
  /// [parameters] Required.
  /// [registration] Required.
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [skipValidation] Skip validation that ensures data can be loaded from the dataset before registration.
  /// [timeSeries] Optional.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  MachineLearningDatasetArgs({
    pulumi.Output<String>? datasetName,
    required pulumi.Output<String> datasetType,
    required pulumi.Output<DatasetCreateRequestParameters> parameters,
    required pulumi.Output<DatasetCreateRequestRegistration> registration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? skipValidation,
    pulumi.Output<DatasetCreateRequestTimeSeries>? timeSeries,
    required pulumi.Output<String> workspaceName,
  }) :
      datasetName = pulumi.Input.asOptionalInput<String>(datasetName),
      datasetType = pulumi.Input.asInput<String>(datasetType),
      parameters = pulumi.Input.asInput<DatasetCreateRequestParameters>(parameters),
      registration = pulumi.Input.asInput<DatasetCreateRequestRegistration>(registration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipValidation = pulumi.Input.asOptionalInput<bool>(skipValidation),
      timeSeries = pulumi.Input.asOptionalInput<DatasetCreateRequestTimeSeries>(timeSeries),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'datasetType': datasetType,
      'parameters': pulumi.Input.mapInputValue<DatasetCreateRequestParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'registration': pulumi.Input.mapInputValue<DatasetCreateRequestRegistration, Map<String, dynamic>>(registration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'skipValidation': ?skipValidation,
      'timeSeries': ?pulumi.Input.mapOptionalInputValue<DatasetCreateRequestTimeSeries, Map<String, dynamic>>(timeSeries, (value) => value.toMap()),
      'workspaceName': workspaceName,
    };
  }

  factory MachineLearningDatasetArgs.fromMap(Map<String, dynamic> map) {
    return MachineLearningDatasetArgs(
      datasetName: map['datasetName'] == null ? null : pulumi.Output.create<String>(map['datasetName'] as String),
      datasetType: pulumi.Output.create<String>(map['datasetType'] as String),
      parameters: pulumi.Output.create<DatasetCreateRequestParameters>(DatasetCreateRequestParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      registration: pulumi.Output.create<DatasetCreateRequestRegistration>(DatasetCreateRequestRegistration.fromMap((map['registration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipValidation: map['skipValidation'] == null ? null : pulumi.Output.create<bool>(map['skipValidation'] as bool),
      timeSeries: map['timeSeries'] == null ? null : pulumi.Output.create<DatasetCreateRequestTimeSeries>(DatasetCreateRequestTimeSeries.fromMap((map['timeSeries'] as Map).cast<String, dynamic>())),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

