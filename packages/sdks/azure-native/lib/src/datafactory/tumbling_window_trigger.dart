// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_policy.dart';
import 'self_dependency_tumbling_window_trigger_reference.dart';
import 'trigger_pipeline_reference.dart';

/// Trigger that schedules pipeline runs for all fixed time interval windows from a start time without gaps and also supports backfill scenarios (when start time is in the past).
class TumblingWindowTrigger {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Specifies how long the trigger waits past due time before triggering new run. It doesn't alter window start and end time. The default is 0. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? delay;
  /// Triggers that this trigger depends on. Only tumbling window triggers are supported.
  final pulumi.Input<List<SelfDependencyTumblingWindowTriggerReference>>? dependsOn;
  /// Trigger description.
  final pulumi.Input<String>? description;
  /// The end time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  final pulumi.Input<String>? endTime;
  /// The frequency of the time windows.
  final pulumi.Input<String> frequency;
  /// The interval of the time windows. The minimum interval allowed is 15 Minutes.
  final pulumi.Input<int> interval;
  /// The max number of parallel time windows (ready for execution) for which a new run is triggered.
  final pulumi.Input<int> maxConcurrency;
  /// Pipeline for which runs are created when an event is fired for trigger window that is ready.
  final pulumi.Input<TriggerPipelineReference> pipeline;
  /// Retry policy that will be applied for failed pipeline runs.
  final pulumi.Input<RetryPolicy>? retryPolicy;
  /// The start time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  final pulumi.Input<String> startTime;
  /// Trigger type.
  /// Expected value is 'TumblingWindowTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [TumblingWindowTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [delay] Specifies how long the trigger waits past due time before triggering new run. It doesn't alter window start and end time. The default is 0. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [dependsOn] Triggers that this trigger depends on. Only tumbling window triggers are supported.
  /// [description] Trigger description.
  /// [endTime] The end time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  /// [frequency] The frequency of the time windows.
  /// [interval] The interval of the time windows. The minimum interval allowed is 15 Minutes.
  /// [maxConcurrency] The max number of parallel time windows (ready for execution) for which a new run is triggered.
  /// [pipeline] Pipeline for which runs are created when an event is fired for trigger window that is ready.
  /// [retryPolicy] Retry policy that will be applied for failed pipeline runs.
  /// [startTime] The start time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  /// [type] Trigger type.
  const TumblingWindowTrigger({
    this.annotations,
    this.delay,
    this.dependsOn,
    this.description,
    this.endTime,
    required this.frequency,
    required this.interval,
    required this.maxConcurrency,
    required this.pipeline,
    this.retryPolicy,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'delay': ?delay,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<SelfDependencyTumblingWindowTriggerReference>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<SelfDependencyTumblingWindowTriggerReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'endTime': ?endTime,
      'frequency': frequency,
      'interval': interval,
      'maxConcurrency': maxConcurrency,
      'pipeline': pulumi.Input.mapInputValue<TriggerPipelineReference, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'startTime': startTime,
      'type': type,
    };
  }

  factory TumblingWindowTrigger.fromMap(Map<String, dynamic> map) {
    return TumblingWindowTrigger(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SelfDependencyTumblingWindowTriggerReference>(guardedValue, (value) => SelfDependencyTumblingWindowTriggerReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      maxConcurrency: pulumi.Input.fromValue(map['maxConcurrency'] as int),
      pipeline: pulumi.Input.fromValue(TriggerPipelineReference.fromMap((map['pipeline']! as Map).cast<String, dynamic>())),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
