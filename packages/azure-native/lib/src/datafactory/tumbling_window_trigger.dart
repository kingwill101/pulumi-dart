// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_policy.dart';
import 'self_dependency_tumbling_window_trigger_reference.dart';
import 'trigger_pipeline_reference.dart';

/// Trigger that schedules pipeline runs for all fixed time interval windows from a start time without gaps and also supports backfill scenarios (when start time is in the past).
class TumblingWindowTrigger {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Specifies how long the trigger waits past due time before triggering new run. It doesn't alter window start and end time. The default is 0. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic delay;
  /// Triggers that this trigger depends on. Only tumbling window triggers are supported.
  final List<SelfDependencyTumblingWindowTriggerReference>? dependsOn;
  /// Trigger description.
  final String? description;
  /// The end time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  final String? endTime;
  /// The frequency of the time windows.
  final String frequency;
  /// The interval of the time windows. The minimum interval allowed is 15 Minutes.
  final int interval;
  /// The max number of parallel time windows (ready for execution) for which a new run is triggered.
  final int maxConcurrency;
  /// Pipeline for which runs are created when an event is fired for trigger window that is ready.
  final TriggerPipelineReference pipeline;
  /// Retry policy that will be applied for failed pipeline runs.
  final RetryPolicy? retryPolicy;
  /// The start time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  final String startTime;
  /// Trigger type.
  /// Expected value is 'TumblingWindowTrigger'.
  final String type;

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
  TumblingWindowTrigger({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<SelfDependencyTumblingWindowTriggerReference, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'endTime': ?endTime,
      'frequency': frequency,
      'interval': interval,
      'maxConcurrency': maxConcurrency,
      'pipeline': pipeline.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'startTime': startTime,
      'type': type,
    };
  }

  factory TumblingWindowTrigger.fromMap(Map<String, dynamic> map) {
    return TumblingWindowTrigger(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      delay: map['delay'] == null ? null : map['delay'],
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<SelfDependencyTumblingWindowTriggerReference>(map['dependsOn'], (value) => SelfDependencyTumblingWindowTriggerReference.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: map['frequency'] as String,
      interval: map['interval'] as int,
      maxConcurrency: map['maxConcurrency'] as int,
      pipeline: TriggerPipelineReference.fromMap((map['pipeline'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : RetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}

