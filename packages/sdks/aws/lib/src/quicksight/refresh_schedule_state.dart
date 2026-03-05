// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'refresh_schedule_schedule.dart';

/// Input properties used for looking up and filtering RefreshSchedule resources.
class RefreshScheduleState {
  /// Amazon Resource Name (ARN) of the refresh schedule.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The ID of the dataset.
  final pulumi.Input<String>? dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  ///
  /// The following arguments are optional:
  final pulumi.Input<RefreshScheduleSchedule>? schedule;
  /// The ID of the refresh schedule.
  final pulumi.Input<String>? scheduleId;

  /// Creates a new [RefreshScheduleState].
  /// [arn] Amazon Resource Name (ARN) of the refresh schedule.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] The ID of the dataset.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  /// [scheduleId] The ID of the refresh schedule.
  RefreshScheduleState({
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

