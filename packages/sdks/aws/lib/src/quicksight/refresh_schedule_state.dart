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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? dataSetId,
    pulumi.Output<String>? region,
    pulumi.Output<RefreshScheduleSchedule>? schedule,
    pulumi.Output<String>? scheduleId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      dataSetId = pulumi.Input.asOptionalInput<String>(dataSetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asOptionalInput<RefreshScheduleSchedule>(schedule),
      scheduleId = pulumi.Input.asOptionalInput<String>(scheduleId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      dataSetId: map['dataSetId'] == null ? null : pulumi.Output.create<String>(map['dataSetId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<RefreshScheduleSchedule>(RefreshScheduleSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scheduleId: map['scheduleId'] == null ? null : pulumi.Output.create<String>(map['scheduleId'] as String),
    );
  }
}

