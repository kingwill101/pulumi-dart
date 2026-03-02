// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_policy_response.dart';
import 'self_dependency_tumbling_window_trigger_reference_response.dart';
import 'trigger_pipeline_reference_response.dart';

/// Trigger that schedules pipeline runs for all fixed time interval windows from a start time without gaps and also supports backfill scenarios (when start time is in the past).
class TumblingWindowTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Specifies how long the trigger waits past due time before triggering new run. It doesn't alter window start and end time. The default is 0. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? delay;
  /// Triggers that this trigger depends on. Only tumbling window triggers are supported.
  final pulumi.Input<List<SelfDependencyTumblingWindowTriggerReferenceResponse>>? dependsOn;
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
  final pulumi.Input<TriggerPipelineReferenceResponse> pipeline;
  /// Retry policy that will be applied for failed pipeline runs.
  final pulumi.Input<RetryPolicyResponse>? retryPolicy;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final pulumi.Input<String> runtimeState;
  /// The start time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  final pulumi.Input<String> startTime;
  /// Trigger type.
  /// Expected value is 'TumblingWindowTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [TumblingWindowTriggerResponse].
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
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [startTime] The start time for the time period for the trigger during which events are fired for windows that are ready. Only UTC time is currently supported.
  /// [type] Trigger type.
  TumblingWindowTriggerResponse({
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
    required this.runtimeState,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'delay': ?delay,
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<SelfDependencyTumblingWindowTriggerReferenceResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<SelfDependencyTumblingWindowTriggerReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'endTime': ?endTime,
      'frequency': frequency,
      'interval': interval,
      'maxConcurrency': maxConcurrency,
      'pipeline': pulumi.Input.mapInputValue<TriggerPipelineReferenceResponse, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RetryPolicyResponse, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'runtimeState': runtimeState,
      'startTime': startTime,
      'type': type,
    };
  }

  factory TumblingWindowTriggerResponse.fromMap(Map<String, dynamic> map) {
    return TumblingWindowTriggerResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      delay: map['delay'] == null ? null : (map['delay']!).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<SelfDependencyTumblingWindowTriggerReferenceResponse>(map['dependsOn']!, (value) => SelfDependencyTumblingWindowTriggerReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      frequency: (map['frequency'] as String).input(),
      interval: (map['interval'] as int).input(),
      maxConcurrency: (map['maxConcurrency'] as int).input(),
      pipeline: (TriggerPipelineReferenceResponse.fromMap((map['pipeline'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (RetryPolicyResponse.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input(),
      runtimeState: (map['runtimeState'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

