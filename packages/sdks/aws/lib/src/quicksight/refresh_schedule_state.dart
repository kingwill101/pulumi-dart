// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'refresh_schedule_schedule.dart';

/// Input properties used for looking up and filtering RefreshSchedule resources.
class RefreshScheduleState {
  /// ARN of the refresh schedule.
  final pulumi.Input<String?>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// ID of the dataset.
  final pulumi.Input<String?>? dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// [Refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html) configuration. See `schedule` Block.
  final pulumi.Input<RefreshScheduleSchedule?>? schedule;
  /// ID of the refresh schedule.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? scheduleId;

  /// Creates a new [RefreshScheduleState].
  /// [arn] ARN of the refresh schedule.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] ID of the dataset.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] [Refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html) configuration. See `schedule` Block.
  /// [scheduleId] ID of the refresh schedule.
  const RefreshScheduleState({
    this.arn,
    this.awsAccountId,
    this.dataSetId,
    this.region,
    this.schedule,
    this.scheduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'dataSetId': ?dataSetId,
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<RefreshScheduleSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scheduleId': ?scheduleId,
    };
  }

  factory RefreshScheduleState.fromMap(Map<String, dynamic> map) {
    return RefreshScheduleState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RefreshScheduleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scheduleId: (() { final guardedValue = map['scheduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
