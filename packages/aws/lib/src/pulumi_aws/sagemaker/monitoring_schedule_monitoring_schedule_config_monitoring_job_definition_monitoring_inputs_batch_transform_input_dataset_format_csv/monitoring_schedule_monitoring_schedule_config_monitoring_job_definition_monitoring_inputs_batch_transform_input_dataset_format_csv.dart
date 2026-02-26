// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv {
  /// Indicates if the CSV data has a header.
  final bool? header;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv({
    this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue;
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputsBatchTransformInputDatasetFormatCsv(
      header: map['header'] == null ? null : map['header'] as bool,
    );
  }
}
