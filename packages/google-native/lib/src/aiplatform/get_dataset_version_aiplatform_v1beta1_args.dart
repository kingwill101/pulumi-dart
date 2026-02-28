// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_dataset_version_aiplatform_v1beta1_args_doc}
/// Arguments for getDatasetVersion.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_dataset_version_aiplatform_v1beta1_args_doc}
class GetDatasetVersionAiplatformV1beta1Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> datasetVersionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetDatasetVersionAiplatformV1beta1Args].
  /// [datasetId] Required.
  /// [datasetVersionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  GetDatasetVersionAiplatformV1beta1Args({
    required String datasetId,
    required String datasetVersionId,
    required String location,
    String? project,
    String? readMask,
  })  : datasetId = pulumi.Input.asInput<String>(datasetId),
        datasetVersionId = pulumi.Input.asInput<String>(datasetVersionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        readMask = pulumi.Input.asOptionalInput<String>(readMask);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['datasetVersionId'] = datasetVersionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readMaskValue = readMask;
    if (readMaskValue != null) {
      map['readMask'] = readMaskValue;
    }
    return map;
  }

  factory GetDatasetVersionAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDatasetVersionAiplatformV1beta1Args(
      datasetId: map['datasetId'] as String,
      datasetVersionId: map['datasetVersionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      readMask: map['readMask'] == null ? null : map['readMask'] as String,
    );
  }
}
