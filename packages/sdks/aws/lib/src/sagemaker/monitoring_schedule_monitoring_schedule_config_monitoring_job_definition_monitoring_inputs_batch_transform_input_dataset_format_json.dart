// ignore_for_file: unused_element, unnecessary_cast


class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson {
  /// Indicates if the file should be read as a JSON object per line.
  final bool? line;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson].
  /// [line] Indicates if the file should be read as a JSON object per line.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson({
    this.line,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'line': ?line,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson(
      line: map['line'] == null ? null : map['line'] as bool,
    );
  }
}

