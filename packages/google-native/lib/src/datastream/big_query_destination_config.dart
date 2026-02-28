// ignore_for_file: unused_element, unnecessary_cast

import 'single_target_dataset.dart';
import 'source_hierarchy_datasets.dart';

/// BigQuery destination configuration
class BigQueryDestinationConfig {
  /// The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  final String? dataFreshness;

  /// Single destination dataset.
  final SingleTargetDataset? singleTargetDataset;

  /// Source hierarchy datasets.
  final SourceHierarchyDatasets? sourceHierarchyDatasets;

  /// Creates a new [BigQueryDestinationConfig].
  /// [dataFreshness] The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  /// [singleTargetDataset] Single destination dataset.
  /// [sourceHierarchyDatasets] Source hierarchy datasets.
  BigQueryDestinationConfig({
    this.dataFreshness,
    this.singleTargetDataset,
    this.sourceHierarchyDatasets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataFreshnessValue = dataFreshness;
    if (dataFreshnessValue != null) {
      map['dataFreshness'] = dataFreshnessValue;
    }
    final singleTargetDatasetValue = singleTargetDataset;
    if (singleTargetDatasetValue != null) {
      map['singleTargetDataset'] = singleTargetDatasetValue.toMap();
    }
    final sourceHierarchyDatasetsValue = sourceHierarchyDatasets;
    if (sourceHierarchyDatasetsValue != null) {
      map['sourceHierarchyDatasets'] = sourceHierarchyDatasetsValue.toMap();
    }
    return map;
  }

  factory BigQueryDestinationConfig.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationConfig(
      dataFreshness:
          map['dataFreshness'] == null ? null : map['dataFreshness'] as String,
      singleTargetDataset: map['singleTargetDataset'] == null
          ? null
          : SingleTargetDataset.fromMap(
              (map['singleTargetDataset'] as Map).cast<String, dynamic>()),
      sourceHierarchyDatasets: map['sourceHierarchyDatasets'] == null
          ? null
          : SourceHierarchyDatasets.fromMap(
              (map['sourceHierarchyDatasets'] as Map).cast<String, dynamic>()),
    );
  }
}
