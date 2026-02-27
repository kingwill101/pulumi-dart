import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_testing_plan_recovery_point_selection/restore_testing_plan_recovery_point_selection.dart';
import 'restore_testing_plan_args.dart';

/// Resource for managing an AWS Backup Restore Testing Plan.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Restore Testing Plan using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/restoreTestingPlan:RestoreTestingPlan example my_testing_plan
/// ```
class RestoreTestingPlan extends pulumi.CustomResource {
  /// ARN of the Restore Testing Plan.
  late final pulumi.Output<String> arn;

  /// The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  late final pulumi.Output<String> name;

  /// Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  late final pulumi.Output<RestoreTestingPlanRecoveryPointSelection>
      recoveryPointSelection;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The schedule expression for the restore testing plan.
  late final pulumi.Output<String> scheduleExpression;

  /// The timezone for the schedule expression. If not provided, the state value will be used.
  late final pulumi.Output<String> scheduleExpressionTimezone;

  /// The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  late final pulumi.Output<int> startWindowHours;
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  RestoreTestingPlan(
    String name, {
    RestoreTestingPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/restoreTestingPlan:RestoreTestingPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.recoveryPointSelection =
        registerOutput<RestoreTestingPlanRecoveryPointSelection>(
            'recoveryPointSelection');
    this.region = registerOutput<String>('region');
    this.scheduleExpression = registerOutput<String>('scheduleExpression');
    this.scheduleExpressionTimezone =
        registerOutput<String>('scheduleExpressionTimezone');
    this.startWindowHours = registerOutput<int>('startWindowHours');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
