// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger that schedules pipeline reruns for all fixed time interval windows from a requested start time to requested end time.
class RerunTumblingWindowTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Trigger description.
  final pulumi.Input<String>? description;
  /// The parent trigger reference.
  final pulumi.Input<dynamic> parentTrigger;
  /// The end time for the time period for which restatement is initiated. Only UTC time is currently supported.
  final pulumi.Input<String> requestedEndTime;
  /// The start time for the time period for which restatement is initiated. Only UTC time is currently supported.
  final pulumi.Input<String> requestedStartTime;
  /// The max number of parallel time windows (ready for execution) for which a rerun is triggered.
  final pulumi.Input<int> rerunConcurrency;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final pulumi.Input<String> runtimeState;
  /// Trigger type.
  /// Expected value is 'RerunTumblingWindowTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [RerunTumblingWindowTriggerResponse].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [parentTrigger] The parent trigger reference.
  /// [requestedEndTime] The end time for the time period for which restatement is initiated. Only UTC time is currently supported.
  /// [requestedStartTime] The start time for the time period for which restatement is initiated. Only UTC time is currently supported.
  /// [rerunConcurrency] The max number of parallel time windows (ready for execution) for which a rerun is triggered.
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [type] Trigger type.
  const RerunTumblingWindowTriggerResponse({
    this.annotations,
    this.description,
    required this.parentTrigger,
    required this.requestedEndTime,
    required this.requestedStartTime,
    required this.rerunConcurrency,
    required this.runtimeState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'parentTrigger': parentTrigger,
      'requestedEndTime': requestedEndTime,
      'requestedStartTime': requestedStartTime,
      'rerunConcurrency': rerunConcurrency,
      'runtimeState': runtimeState,
      'type': type,
    };
  }

  factory RerunTumblingWindowTriggerResponse.fromMap(Map<String, dynamic> map) {
    return RerunTumblingWindowTriggerResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentTrigger: pulumi.Input.fromValue(map['parentTrigger']),
      requestedEndTime: pulumi.Input.fromValue(map['requestedEndTime'] as String),
      requestedStartTime: pulumi.Input.fromValue(map['requestedStartTime'] as String),
      rerunConcurrency: pulumi.Input.fromValue(map['rerunConcurrency'] as int),
      runtimeState: pulumi.Input.fromValue(map['runtimeState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
