import 'package:pulumi/pulumi.dart';
import '../scheduled_action_target_action/scheduled_action_target_action.dart';
import 'scheduled_action_args2.dart';

/// ## Example Usage
///
/// ### Pause Cluster Action
///
///
///
/// ### Resize Cluster Action
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Scheduled Action using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/scheduledAction:ScheduledAction example tf-redshift-scheduled-action
/// ```
class ScheduledAction2 extends CustomResource {
  /// The description of the scheduled action.
  late final Output<String?> description;

  /// Whether to enable the scheduled action. Default is `true` .
  late final Output<bool?> enable;

  /// The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  late final Output<String?> endTime;

  /// The IAM role to assume to run the scheduled action.
  late final Output<String> iamRole;

  /// The scheduled action name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  late final Output<String> schedule;

  /// The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  late final Output<String?> startTime;

  /// Target action. Documented below.
  late final Output<ScheduledActionTargetAction> targetAction;

  ScheduledAction2(
    String name, {
    ScheduledActionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/scheduledAction:ScheduledAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.enable = registerOutput<bool?>('enable');
    this.endTime = registerOutput<String?>('endTime');
    this.iamRole = registerOutput<String>('iamRole');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<String>('schedule');
    this.startTime = registerOutput<String?>('startTime');
    this.targetAction =
        registerOutput<ScheduledActionTargetAction>('targetAction');
  }
}
