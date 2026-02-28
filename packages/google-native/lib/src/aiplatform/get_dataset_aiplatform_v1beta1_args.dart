// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_dataset_aiplatform_v1beta1_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_dataset_aiplatform_v1beta1_args_doc}
class GetDatasetAiplatformV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetDatasetAiplatformV1beta1Args].
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  GetDatasetAiplatformV1beta1Args({
    required String datasetId,
    required String location,
    String? project,
    String? readMask,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      readMask = pulumi.Input.asOptionalInput<String>(readMask);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
      'readMask': ?readMask,
    };
  }

  factory GetDatasetAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetAiplatformV1beta1Args(
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      readMask: map['readMask'] == null ? null : map['readMask'] as String,
    );
  }
}

