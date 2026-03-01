// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input_dataset_format_csv.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs_batch_transform_input_dataset_format_json.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat {
  /// CSV dataset used in the monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv? csv;
  /// JSON dataset used in the monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson? json;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat].
  /// [csv] CSV dataset used in the monitoring job. Fields are documented below.
  /// [json] JSON dataset used in the monitoring job. Fields are documented below.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?csv == null ? null : csv!.toMap(),
      'json': ?json == null ? null : json!.toMap(),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormat(
      csv: map['csv'] == null ? null : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv.fromMap((map['csv'] as Map).cast<String, dynamic>()),
      json: map['json'] == null ? null : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson.fromMap((map['json'] as Map).cast<String, dynamic>()),
    );
  }
}

