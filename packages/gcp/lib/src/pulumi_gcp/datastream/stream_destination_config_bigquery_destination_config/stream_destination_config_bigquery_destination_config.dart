// ignore_for_file: unused_element, unnecessary_cast

import '../stream_destination_config_bigquery_destination_config_blmt_config/stream_destination_config_bigquery_destination_config_blmt_config.dart';
import '../stream_destination_config_bigquery_destination_config_single_target_dataset/stream_destination_config_bigquery_destination_config_single_target_dataset.dart';
import '../stream_destination_config_bigquery_destination_config_source_hierarchy_datasets/stream_destination_config_bigquery_destination_config_source_hierarchy_datasets.dart';

class StreamDestinationConfigBigqueryDestinationConfig {
  /// AppendOnly mode defines that the stream of changes (INSERT, UPDATE-INSERT, UPDATE-DELETE and DELETE
  /// events) to a source table will be written to the destination Google BigQuery table, retaining the
  /// historical state of the data.
  final Map<String, dynamic>? appendOnly;

  /// BigLake Managed Tables configuration for BigQuery streams.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigBlmtConfig? blmtConfig;

  /// The guaranteed data freshness (in seconds) when querying tables created by the stream.
  /// Editing this field will only affect new tables created in the future, but existing tables
  /// will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
  final String? dataFreshness;

  /// Merge mode defines that all changes to a table will be merged at the destination Google BigQuery
  /// table. This is the default write mode. When selected, BigQuery reflects the way the data is stored
  /// in the source database. With Merge mode, no historical record of the change events is kept.
  final Map<String, dynamic>? merge;

  /// A single target dataset to which all data will be streamed.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset?
      singleTargetDataset;

  /// Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets?
      sourceHierarchyDatasets;

  StreamDestinationConfigBigqueryDestinationConfig({
    this.appendOnly,
    this.blmtConfig,
    this.dataFreshness,
    this.merge,
    this.singleTargetDataset,
    this.sourceHierarchyDatasets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appendOnlyValue = appendOnly;
    if (appendOnlyValue != null) {
      map['appendOnly'] = appendOnlyValue;
    }
    final blmtConfigValue = blmtConfig;
    if (blmtConfigValue != null) {
      map['blmtConfig'] = blmtConfigValue.toMap();
    }
    final dataFreshnessValue = dataFreshness;
    if (dataFreshnessValue != null) {
      map['dataFreshness'] = dataFreshnessValue;
    }
    final mergeValue = merge;
    if (mergeValue != null) {
      map['merge'] = mergeValue;
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

  factory StreamDestinationConfigBigqueryDestinationConfig.fromMap(
      Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfig(
      appendOnly: map['appendOnly'] == null
          ? null
          : (map['appendOnly'] as Map).cast<String, dynamic>(),
      blmtConfig: map['blmtConfig'] == null
          ? null
          : StreamDestinationConfigBigqueryDestinationConfigBlmtConfig.fromMap(
              (map['blmtConfig'] as Map).cast<String, dynamic>()),
      dataFreshness:
          map['dataFreshness'] == null ? null : map['dataFreshness'] as String,
      merge: map['merge'] == null
          ? null
          : (map['merge'] as Map).cast<String, dynamic>(),
      singleTargetDataset: map['singleTargetDataset'] == null
          ? null
          : StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset
              .fromMap(
                  (map['singleTargetDataset'] as Map).cast<String, dynamic>()),
      sourceHierarchyDatasets: map['sourceHierarchyDatasets'] == null
          ? null
          : StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets
              .fromMap((map['sourceHierarchyDatasets'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
