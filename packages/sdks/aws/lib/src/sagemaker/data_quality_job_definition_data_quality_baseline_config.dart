// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_baseline_config_constraints_resource.dart';
import 'data_quality_job_definition_data_quality_baseline_config_statistics_resource.dart';

class DataQualityJobDefinitionDataQualityBaselineConfig {
  /// The constraints resource for a monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource>? constraintsResource;
  /// The statistics resource for a monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource>? statisticsResource;

  /// Creates a new [DataQualityJobDefinitionDataQualityBaselineConfig].
  /// [constraintsResource] The constraints resource for a monitoring job. Fields are documented below.
  /// [statisticsResource] The statistics resource for a monitoring job. Fields are documented below.
  const DataQualityJobDefinitionDataQualityBaselineConfig({
    this.constraintsResource,
    this.statisticsResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintsResource': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource, Map<String, dynamic>>(constraintsResource, (value) => value.toMap()),
      'statisticsResource': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource, Map<String, dynamic>>(statisticsResource, (value) => value.toMap()),
    };
  }

  factory DataQualityJobDefinitionDataQualityBaselineConfig.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityBaselineConfig(
      constraintsResource: (() { final guardedValue = map['constraintsResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityBaselineConfigConstraintsResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statisticsResource: (() { final guardedValue = map['statisticsResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityBaselineConfigStatisticsResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
