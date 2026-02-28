// ignore_for_file: unused_element, unnecessary_cast

import 'single_target_dataset_response.dart';
import 'source_hierarchy_datasets_response.dart';

/// BigQuery destination configuration
class BigQueryDestinationConfigResponse {
  /// The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  final String dataFreshness;

  /// Single destination dataset.
  final SingleTargetDatasetResponse singleTargetDataset;

  /// Source hierarchy datasets.
  final SourceHierarchyDatasetsResponse sourceHierarchyDatasets;

  /// Creates a new [BigQueryDestinationConfigResponse].
  /// [dataFreshness] The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  /// [singleTargetDataset] Single destination dataset.
  /// [sourceHierarchyDatasets] Source hierarchy datasets.
  BigQueryDestinationConfigResponse({
    required this.dataFreshness,
    required this.singleTargetDataset,
    required this.sourceHierarchyDatasets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataFreshness'] = dataFreshness;
    map['singleTargetDataset'] = singleTargetDataset.toMap();
    map['sourceHierarchyDatasets'] = sourceHierarchyDatasets.toMap();
    return map;
  }

  factory BigQueryDestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationConfigResponse(
      dataFreshness: map['dataFreshness'] as String,
      singleTargetDataset: SingleTargetDatasetResponse.fromMap(
          (map['singleTargetDataset'] as Map).cast<String, dynamic>()),
      sourceHierarchyDatasets: SourceHierarchyDatasetsResponse.fromMap(
          (map['sourceHierarchyDatasets'] as Map).cast<String, dynamic>()),
    );
  }
}
