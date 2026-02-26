// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trigger_action/trigger_action.dart';
import '../trigger_event_batching_condition/trigger_event_batching_condition.dart';
import '../trigger_predicate/trigger_predicate.dart';

/// The set of arguments for Trigger.
class TriggerArgs2 {
  /// List of actions initiated by this trigger when it fires. See Actions Below.
  final Input<List<TriggerAction>> actions;

  /// A description of the new trigger.
  final Input<String>? description;

  /// Start the trigger. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  final Input<List<TriggerEventBatchingCondition>>? eventBatchingConditions;

  /// The name of the trigger.
  final Input<String>? name;

  /// A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  final Input<TriggerPredicate>? predicate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  final Input<String>? schedule;

  /// Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  final Input<bool>? startOnCreation;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  final Input<String> type;

  /// A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  final Input<String>? workflowName;

  TriggerArgs2({
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
    final map = <String, dynamic>{};
    map['actions'] =
        Input.mapInputValue<List<TriggerAction>, List<Map<String, dynamic>>>(
            actions,
            (value) => Input.encodeList<TriggerAction, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final eventBatchingConditionsValue = eventBatchingConditions;
    if (eventBatchingConditionsValue != null) {
      map['eventBatchingConditions'] = Input.mapOptionalInputValue<
              List<TriggerEventBatchingCondition>, List<Map<String, dynamic>>>(
          eventBatchingConditionsValue,
          (value) => Input.encodeList<TriggerEventBatchingCondition,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final predicateValue = predicate;
    if (predicateValue != null) {
      map['predicate'] =
          Input.mapOptionalInputValue<TriggerPredicate, Map<String, dynamic>>(
              predicateValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final startOnCreationValue = startOnCreation;
    if (startOnCreationValue != null) {
      map['startOnCreation'] = startOnCreationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    final workflowNameValue = workflowName;
    if (workflowNameValue != null) {
      map['workflowName'] = workflowNameValue;
    }
    return map;
  }

  factory TriggerArgs2.fromMap(Map<String, dynamic> map) {
    return TriggerArgs2(
      actions: Input.asInput<List<TriggerAction>>(map['actions']),
      description: Input.asOptionalInput<String>(map['description']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      eventBatchingConditions:
          Input.asOptionalInput<List<TriggerEventBatchingCondition>>(
              map['eventBatchingConditions']),
      name: Input.asOptionalInput<String>(map['name']),
      predicate: Input.asOptionalInput<TriggerPredicate>(map['predicate']),
      region: Input.asOptionalInput<String>(map['region']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
      startOnCreation: Input.asOptionalInput<bool>(map['startOnCreation']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
      workflowName: Input.asOptionalInput<String>(map['workflowName']),
    );
  }
}
