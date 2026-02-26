// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource {
  /// URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final String? s3Uri;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3UriValue = s3Uri;
    if (s3UriValue != null) {
      map['s3Uri'] = s3UriValue;
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource(
      s3Uri: map['s3Uri'] == null ? null : map['s3Uri'] as String,
    );
  }
}
