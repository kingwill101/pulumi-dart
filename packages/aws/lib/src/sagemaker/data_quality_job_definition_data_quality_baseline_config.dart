// ignore_for_file: unused_element, unnecessary_cast

import 'data_quality_job_definition_data_quality_baseline_config_constraints_resource.dart';
import 'data_quality_job_definition_data_quality_baseline_config_statistics_resource.dart';

class DataQualityJobDefinitionDataQualityBaselineConfig {
  /// The constraints resource for a monitoring job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource?
      constraintsResource;

  /// The statistics resource for a monitoring job. Fields are documented below.
  final DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource?
      statisticsResource;

  /// Creates a new [DataQualityJobDefinitionDataQualityBaselineConfig].
  /// [constraintsResource] The constraints resource for a monitoring job. Fields are documented below.
  /// [statisticsResource] The statistics resource for a monitoring job. Fields are documented below.
  DataQualityJobDefinitionDataQualityBaselineConfig({
    this.constraintsResource,
    this.statisticsResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final constraintsResourceValue = constraintsResource;
    if (constraintsResourceValue != null) {
      map['constraintsResource'] = constraintsResourceValue.toMap();
    }
    final statisticsResourceValue = statisticsResource;
    if (statisticsResourceValue != null) {
      map['statisticsResource'] = statisticsResourceValue.toMap();
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityBaselineConfig.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityBaselineConfig(
      constraintsResource: map['constraintsResource'] == null
          ? null
          : DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource
              .fromMap(
                  (map['constraintsResource'] as Map).cast<String, dynamic>()),
      statisticsResource: map['statisticsResource'] == null
          ? null
          : DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource
              .fromMap(
                  (map['statisticsResource'] as Map).cast<String, dynamic>()),
    );
  }
}
