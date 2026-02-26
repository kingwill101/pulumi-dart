// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../refresh_schedule_schedule/refresh_schedule_schedule.dart';

/// The set of arguments for RefreshSchedule.
class RefreshScheduleArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// The ID of the dataset.
  final Input<String> dataSetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  ///
  /// The following arguments are optional:
  final Input<RefreshScheduleSchedule> schedule;

  /// The ID of the refresh schedule.
  final Input<String> scheduleId;

  RefreshScheduleArgs({
    this.awsAccountId,
    required this.dataSetId,
    this.region,
    required this.schedule,
    required this.scheduleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['dataSetId'] = dataSetId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schedule'] =
        Input.mapInputValue<RefreshScheduleSchedule, Map<String, dynamic>>(
            schedule, (value) => value.toMap());
    map['scheduleId'] = scheduleId;
    return map;
  }

  factory RefreshScheduleArgs.fromMap(Map<String, dynamic> map) {
    return RefreshScheduleArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      dataSetId: Input.asInput<String>(map['dataSetId']),
      region: Input.asOptionalInput<String>(map['region']),
      schedule: Input.asInput<RefreshScheduleSchedule>(map['schedule']),
      scheduleId: Input.asInput<String>(map['scheduleId']),
    );
  }
}
