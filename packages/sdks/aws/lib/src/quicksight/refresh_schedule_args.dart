// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'refresh_schedule_schedule.dart';

/// {@template pulumi_quicksight_refresh_schedule_refresh_schedule_args_doc}
/// The set of arguments for RefreshSchedule.
/// {@endtemplate}
/// {@macro pulumi_quicksight_refresh_schedule_refresh_schedule_args_doc}
class RefreshScheduleArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The ID of the dataset.
  final pulumi.Input<String> dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  ///
  /// The following arguments are optional:
  final pulumi.Input<RefreshScheduleSchedule> schedule;
  /// The ID of the refresh schedule.
  final pulumi.Input<String> scheduleId;

  /// Creates a new [RefreshScheduleArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] The ID of the dataset.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  /// [scheduleId] The ID of the refresh schedule.
  RefreshScheduleArgs({
    this.awsAccountId,
    required this.dataSetId,
    this.region,
    required this.schedule,
    required this.scheduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'dataSetId': dataSetId,
      'region': ?region,
      'schedule': pulumi.Input.mapInputValue<RefreshScheduleSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scheduleId': scheduleId,
    };
  }

  factory RefreshScheduleArgs.fromMap(Map<String, dynamic> map) {
    return RefreshScheduleArgs(
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      dataSetId: (map['dataSetId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schedule: (RefreshScheduleSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      scheduleId: (map['scheduleId'] as String).input(),
    );
  }
}

