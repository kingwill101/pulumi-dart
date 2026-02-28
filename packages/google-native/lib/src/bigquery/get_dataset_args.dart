// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_v2_get_dataset_args_doc}
/// Arguments for getDataset.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_get_dataset_args_doc}
class GetDatasetArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? datasetView;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetArgs].
  /// [datasetId] Required.
  /// [datasetView] Optional.
  /// [project] Optional.
  GetDatasetArgs({
    required String datasetId,
    String? datasetView,
    String? project,
  })  : datasetId = pulumi.Input.asInput<String>(datasetId),
        datasetView = pulumi.Input.asOptionalInput<String>(datasetView),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final datasetViewValue = datasetView;
    if (datasetViewValue != null) {
      map['datasetView'] = datasetViewValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetArgs(
      datasetId: map['datasetId'] as String,
      datasetView:
          map['datasetView'] == null ? null : map['datasetView'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
