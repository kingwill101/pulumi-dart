// ignore_for_file: unused_element, unnecessary_cast


class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv {
  /// Indicates if the CSV data has a header.
  final bool? header;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv].
  /// [header] Indicates if the CSV data has a header.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?header,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv(
      header: map['header'] == null ? null : map['header'] as bool,
    );
  }
}

