// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource {
  /// URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final pulumi.Input<String>? s3Uri;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource].
  /// [s3Uri] URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': ?s3Uri,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineStatisticsResource(
      s3Uri: map['s3Uri'] == null ? null : (map['s3Uri'] as String).input(),
    );
  }
}

