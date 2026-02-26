// ignore_for_file: unused_element, unnecessary_cast

import '../stream_destination_config_bigquery_destination_config_source_hierarchy_datasets_dataset_template/stream_destination_config_bigquery_destination_config_source_hierarchy_datasets_dataset_template.dart';

class StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets {
  /// Dataset template used for dynamic dataset creation.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate
      datasetTemplate;

  /// Optional. The project id of the BigQuery dataset. If not specified, the project will be inferred from the stream resource.
  final String? projectId;

  StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets({
    required this.datasetTemplate,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetTemplate'] = datasetTemplate.toMap();
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets.fromMap(
      Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets(
      datasetTemplate:
          StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate
              .fromMap((map['datasetTemplate'] as Map).cast<String, dynamic>()),
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
