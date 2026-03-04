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
    this.datasetName,
    required this.datasetType,
    required this.parameters,
    required this.registration,
    required this.resourceGroupName,
    this.skipValidation,
    this.timeSeries,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'datasetType': datasetType,
      'parameters':
          pulumi.Input.mapInputValue<
            DatasetCreateRequestParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'registration':
          pulumi.Input.mapInputValue<
            DatasetCreateRequestRegistration,
            Map<String, dynamic>
          >(registration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'skipValidation': ?skipValidation,
      'timeSeries':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetCreateRequestTimeSeries,
            Map<String, dynamic>
          >(timeSeries, (value) => value.toMap()),
      'workspaceName': workspaceName,
    };
  }

  factory MachineLearningDatasetArgs.fromMap(Map<String, dynamic> map) {
    return MachineLearningDatasetArgs(
      datasetName: (() {
        final guardedValue = map['datasetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datasetType: pulumi.Input.fromValue(map['datasetType'] as String),
      parameters: pulumi.Input.fromValue(
        DatasetCreateRequestParameters.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      registration: pulumi.Input.fromValue(
        DatasetCreateRequestRegistration.fromMap(
          (map['registration']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skipValidation: (() {
        final guardedValue = map['skipValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      timeSeries: (() {
        final guardedValue = map['timeSeries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetCreateRequestTimeSeries.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
