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
    this.actions,
    this.arn,
    this.description,
    this.enabled,
    this.eventBatchingConditions,
    this.name,
    this.predicate,
    this.region,
    this.schedule,
    this.startOnCreation,
    this.state,
    this.tags,
    this.tagsAll,
    this.type,
    this.workflowName,
  });

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
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<TriggerAction>(map['actions'], (value) => TriggerAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      eventBatchingConditions: map['eventBatchingConditions'] == null ? null : (pulumi.Input.decodeList<TriggerEventBatchingCondition>(map['eventBatchingConditions'], (value) => TriggerEventBatchingCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      predicate: map['predicate'] == null ? null : (TriggerPredicate.fromMap((map['predicate'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule'] as String).input(),
      startOnCreation: map['startOnCreation'] == null ? null : (map['startOnCreation'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      workflowName: map['workflowName'] == null ? null : (map['workflowName'] as String).input(),
    );
  }
}

