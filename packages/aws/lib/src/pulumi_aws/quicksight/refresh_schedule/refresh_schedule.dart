import 'package:pulumi/pulumi.dart' as pulumi;
import '../refresh_schedule_schedule/refresh_schedule_schedule.dart';
import 'refresh_schedule_args.dart';

/// Resource for managing a QuickSight Refresh Schedule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Weekly Refresh
///
///
///
/// ### With Monthly Refresh
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Refresh Schedule using the AWS account ID, data set ID and schedule ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/refreshSchedule:RefreshSchedule example 123456789012,dataset-id,schedule-id
/// ```
class RefreshSchedule extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the refresh schedule.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// The ID of the dataset.
  late final pulumi.Output<String> dataSetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  ///
  /// The following arguments are optional:
  late final pulumi.Output<RefreshScheduleSchedule> schedule;

  /// The ID of the refresh schedule.
  late final pulumi.Output<String> scheduleId;

  RefreshSchedule(
    String name, {
    RefreshScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/refreshSchedule:RefreshSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<RefreshScheduleSchedule>('schedule');
    this.scheduleId = registerOutput<String>('scheduleId');
  }
}
