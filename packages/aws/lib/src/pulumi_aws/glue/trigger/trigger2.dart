import 'package:pulumi/pulumi.dart';
import '../trigger_action/trigger_action.dart';
import '../trigger_event_batching_condition/trigger_event_batching_condition.dart';
import '../trigger_predicate/trigger_predicate.dart';
import 'trigger_args2.dart';

/// Manages a Glue Trigger resource.
///
/// ## Example Usage
///
/// ### Conditional Trigger
///
///
///
/// ### On-Demand Trigger
///
///
///
/// ### Scheduled Trigger
///
///
///
/// ### Conditional Trigger with Crawler Action
///
/// **Note:** Triggers can have both a crawler action and a crawler condition, just no example provided.
///
///
///
/// ### Conditional Trigger with Crawler Condition
///
/// **Note:** Triggers can have both a crawler action and a crawler condition, just no example provided.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Triggers using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/trigger:Trigger MyTrigger MyTrigger
/// ```
class Trigger2 extends CustomResource {
  /// List of actions initiated by this trigger when it fires. See Actions Below.
  late final Output<List<TriggerAction>> actions;

  /// Amazon Resource Name (ARN) of Glue Trigger
  late final Output<String> arn;

  /// A description of the new trigger.
  late final Output<String?> description;

  /// Start the trigger. Defaults to `true`.
  late final Output<bool?> enabled;

  /// Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  late final Output<List<TriggerEventBatchingCondition>?>
      eventBatchingConditions;

  /// The name of the trigger.
  late final Output<String> name;

  /// A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  late final Output<TriggerPredicate?> predicate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  late final Output<String?> schedule;

  /// Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  late final Output<bool?> startOnCreation;

  /// The current state of the trigger.
  late final Output<String> state;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  late final Output<String> type;

  /// A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  late final Output<String?> workflowName;

  Trigger2(
    String name, {
    TriggerArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/trigger:Trigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<TriggerAction>>('actions');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventBatchingConditions =
        registerOutput<List<TriggerEventBatchingCondition>?>(
            'eventBatchingConditions');
    this.name = registerOutput<String>('name');
    this.predicate = registerOutput<TriggerPredicate?>('predicate');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<String?>('schedule');
    this.startOnCreation = registerOutput<bool?>('startOnCreation');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.workflowName = registerOutput<String?>('workflowName');
  }
}
