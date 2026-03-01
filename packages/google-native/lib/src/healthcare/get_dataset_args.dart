// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dataset_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dataset_args_doc}
class GetDatasetArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetArgs].
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDatasetArgs({
    required String datasetId,
    required String location,
    String? project,
  }) : datasetId = pulumi.Input.asInput<String>(datasetId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
