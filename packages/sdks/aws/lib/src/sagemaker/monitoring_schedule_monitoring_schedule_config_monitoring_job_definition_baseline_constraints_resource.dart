// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource {
  /// URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final pulumi.Input<String>? s3Uri;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource].
  /// [s3Uri] URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource({
    this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3Uri': ?s3Uri};
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaselineConstraintsResource(
      s3Uri: (() {
        final guardedValue = map['s3Uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
