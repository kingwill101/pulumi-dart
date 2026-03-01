// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_action.dart';
import 'trigger_event_batching_condition.dart';
import 'trigger_predicate.dart';

/// Input properties used for looking up and filtering Trigger resources.
class TriggerState {
  /// List of actions initiated by this trigger when it fires. See Actions Below.
  final pulumi.Input<List<TriggerAction>>? actions;
  /// Amazon Resource Name (ARN) of Glue Trigger
  final pulumi.Input<String>? arn;
  /// A description of the new trigger.
  final pulumi.Input<String>? description;
  /// Start the trigger. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  final pulumi.Input<List<TriggerEventBatchingCondition>>? eventBatchingConditions;
  /// The name of the trigger.
  final pulumi.Input<String>? name;
  /// A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  final pulumi.Input<TriggerPredicate>? predicate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  final pulumi.Input<String>? schedule;
  /// Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  final pulumi.Input<bool>? startOnCreation;
  /// The current state of the trigger.
  final pulumi.Input<String>? state;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  final pulumi.Input<String>? type;
  /// A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  final pulumi.Input<String>? workflowName;

  /// Creates a new [TriggerState].
  /// [actions] List of actions initiated by this trigger when it fires. See Actions Below.
  /// [arn] Amazon Resource Name (ARN) of Glue Trigger
  /// [description] A description of the new trigger.
  /// [enabled] Start the trigger. Defaults to `true`.
  /// [eventBatchingConditions] Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  /// [name] The name of the trigger.
  /// [predicate] A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  /// [startOnCreation] Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  /// [state] The current state of the trigger.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  /// [workflowName] A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  TriggerState({
    pulumi.Output<List<TriggerAction>>? actions,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<TriggerEventBatchingCondition>>? eventBatchingConditions,
    pulumi.Output<String>? name,
    pulumi.Output<TriggerPredicate>? predicate,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedule,
    pulumi.Output<bool>? startOnCreation,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? workflowName,
  }) :
      actions = pulumi.Input.asOptionalInput<List<TriggerAction>>(actions),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      eventBatchingConditions = pulumi.Input.asOptionalInput<List<TriggerEventBatchingCondition>>(eventBatchingConditions),
      name = pulumi.Input.asOptionalInput<String>(name),
      predicate = pulumi.Input.asOptionalInput<TriggerPredicate>(predicate),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      startOnCreation = pulumi.Input.asOptionalInput<bool>(startOnCreation),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      workflowName = pulumi.Input.asOptionalInput<String>(workflowName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<TriggerAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<TriggerAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'description': ?description,
      'enabled': ?enabled,
      'eventBatchingConditions': ?pulumi.Input.mapOptionalInputValue<List<TriggerEventBatchingCondition>, List<Map<String, dynamic>>>(eventBatchingConditions, (value) => pulumi.Input.encodeList<TriggerEventBatchingCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'predicate': ?pulumi.Input.mapOptionalInputValue<TriggerPredicate, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'region': ?region,
      'schedule': ?schedule,
      'startOnCreation': ?startOnCreation,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'workflowName': ?workflowName,
    };
  }

  factory TriggerState.fromMap(Map<String, dynamic> map) {
    return TriggerState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<TriggerAction>>(pulumi.Input.decodeList<TriggerAction>(map['actions'], (value) => TriggerAction.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      eventBatchingConditions: map['eventBatchingConditions'] == null ? null : pulumi.Output.create<List<TriggerEventBatchingCondition>>(pulumi.Input.decodeList<TriggerEventBatchingCondition>(map['eventBatchingConditions'], (value) => TriggerEventBatchingCondition.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      predicate: map['predicate'] == null ? null : pulumi.Output.create<TriggerPredicate>(TriggerPredicate.fromMap((map['predicate'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      startOnCreation: map['startOnCreation'] == null ? null : pulumi.Output.create<bool>(map['startOnCreation'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      workflowName: map['workflowName'] == null ? null : pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

