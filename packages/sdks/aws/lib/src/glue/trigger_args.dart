// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_action.dart';
import 'trigger_event_batching_condition.dart';
import 'trigger_predicate.dart';

/// {@template pulumi_glue_trigger_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_glue_trigger_trigger_args_doc}
class TriggerArgs {
  /// List of actions initiated by this trigger when it fires. See Actions Below.
  final pulumi.Input<List<TriggerAction>> actions;
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
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  final pulumi.Input<String> type;
  /// A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  final pulumi.Input<String>? workflowName;

  /// Creates a new [TriggerArgs].
  /// [actions] List of actions initiated by this trigger when it fires. See Actions Below.
  /// [description] A description of the new trigger.
  /// [enabled] Start the trigger. Defaults to `true`.
  /// [eventBatchingConditions] Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  /// [name] The name of the trigger.
  /// [predicate] A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  /// [startOnCreation] Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  /// [workflowName] A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  TriggerArgs({
    required this.actions,
    this.description,
    this.enabled,
    this.eventBatchingConditions,
    this.name,
    this.predicate,
    this.region,
    this.schedule,
    this.startOnCreation,
    this.tags,
    required this.type,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<TriggerAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<TriggerAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enabled': ?enabled,
      'eventBatchingConditions': ?pulumi.Input.mapOptionalInputValue<List<TriggerEventBatchingCondition>, List<Map<String, dynamic>>>(eventBatchingConditions, (value) => pulumi.Input.encodeList<TriggerEventBatchingCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'predicate': ?pulumi.Input.mapOptionalInputValue<TriggerPredicate, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'region': ?region,
      'schedule': ?schedule,
      'startOnCreation': ?startOnCreation,
      'tags': ?tags,
      'type': type,
      'workflowName': ?workflowName,
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      actions: (pulumi.Input.decodeList<TriggerAction>(map['actions']!, (value) => TriggerAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      eventBatchingConditions: map['eventBatchingConditions'] == null ? null : ((pulumi.Input.decodeList<TriggerEventBatchingCondition>(map['eventBatchingConditions']!, (value) => TriggerEventBatchingCondition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      predicate: map['predicate'] == null ? null : ((TriggerPredicate.fromMap((map['predicate']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schedule: map['schedule'] == null ? null : ((map['schedule'] as String).input()).input(),
      startOnCreation: map['startOnCreation'] == null ? null : ((map['startOnCreation'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      type: (map['type'] as String).input(),
      workflowName: map['workflowName'] == null ? null : ((map['workflowName'] as String).input()).input(),
    );
  }
}

