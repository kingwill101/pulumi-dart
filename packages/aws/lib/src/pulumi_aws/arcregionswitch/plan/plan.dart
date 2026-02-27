import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_associated_alarm/plan_associated_alarm.dart';
import '../plan_timeouts/plan_timeouts.dart';
import '../plan_trigger/plan_trigger.dart';
import '../plan_workflow/plan_workflow.dart';
import 'plan_args.dart';

/// Resource for managing an Amazon ARC Region Switch plan.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Complex Usage with Multiple Step Types
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Application Recovery Controller Region Switch Plan using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:arcregionswitch/plan:Plan example arn:aws:arcregionswitch:us-east-1:123456789012:plan/example-plan
/// ```
class Plan extends pulumi.CustomResource {
  /// ARN of the plan.
  late final pulumi.Output<String> arn;

  /// Set of CloudWatch alarms associated with the plan. See Associated Alarms below.
  late final pulumi.Output<List<PlanAssociatedAlarm>?> associatedAlarms;

  /// Description of the plan.
  late final pulumi.Output<String?> description;

  /// ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  late final pulumi.Output<String> executionRole;

  /// Name of the plan. Must be unique within the account.
  late final pulumi.Output<String> name;

  /// Primary region for the plan.
  late final pulumi.Output<String?> primaryRegion;

  /// Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  late final pulumi.Output<String> recoveryApproach;

  /// Recovery time objective in minutes.
  late final pulumi.Output<int?> recoveryTimeObjectiveMinutes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of AWS regions involved in the plan.
  late final pulumi.Output<List<String>> regions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PlanTimeouts?> timeouts;

  /// Set of triggers that can initiate the plan execution. See Triggers below.
  late final pulumi.Output<List<PlanTrigger>?> triggers;

  /// List of workflows that define the steps to execute. See Workflow below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<PlanWorkflow>?> workflows;

  Plan(
    String name, {
    PlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arcregionswitch/plan:Plan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associatedAlarms =
        registerOutput<List<PlanAssociatedAlarm>?>('associatedAlarms');
    this.description = registerOutput<String?>('description');
    this.executionRole = registerOutput<String>('executionRole');
    this.name = registerOutput<String>('name');
    this.primaryRegion = registerOutput<String?>('primaryRegion');
    this.recoveryApproach = registerOutput<String>('recoveryApproach');
    this.recoveryTimeObjectiveMinutes =
        registerOutput<int?>('recoveryTimeObjectiveMinutes');
    this.region = registerOutput<String>('region');
    this.regions = registerOutput<List<String>>('regions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PlanTimeouts?>('timeouts');
    this.triggers = registerOutput<List<PlanTrigger>?>('triggers');
    this.workflows = registerOutput<List<PlanWorkflow>?>('workflows');
  }
}
