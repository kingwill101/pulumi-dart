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
    final map = <String, dynamic>{};
    final lineValue = line;
    if (lineValue != null) {
      map['line'] = lineValue;
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatJson(
      line: map['line'] == null ? null : map['line'] as bool,
    );
  }
}
