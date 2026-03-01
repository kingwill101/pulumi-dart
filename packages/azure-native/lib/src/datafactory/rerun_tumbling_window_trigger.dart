// ignore_for_file: unused_element, unnecessary_cast


/// Trigger that schedules pipeline reruns for all fixed time interval windows from a requested start time to requested end time.
class RerunTumblingWindowTrigger {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// The parent trigger reference.
  final dynamic parentTrigger;
  /// The end time for the time period for which restatement is initiated. Only UTC time is currently supported.
  final String requestedEndTime;
  /// The start time for the time period for which restatement is initiated. Only UTC time is currently supported.
  final String requestedStartTime;
  /// The max number of parallel time windows (ready for execution) for which a rerun is triggered.
  final int rerunConcurrency;
  /// Trigger type.
  /// Expected value is 'RerunTumblingWindowTrigger'.
  final String type;

  /// Creates a new [RerunTumblingWindowTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [parentTrigger] The parent trigger reference.
  /// [requestedEndTime] The end time for the time period for which restatement is initiated. Only UTC time is currently supported.
  /// [requestedStartTime] The start time for the time period for which restatement is initiated. Only UTC time is currently supported.
  /// [rerunConcurrency] The max number of parallel time windows (ready for execution) for which a rerun is triggered.
  /// [type] Trigger type.
  RerunTumblingWindowTrigger({
    this.annotations,
    this.description,
    required this.parentTrigger,
    required this.requestedEndTime,
    required this.requestedStartTime,
    required this.rerunConcurrency,
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
      'type': type,
    };
  }

  factory RerunTumblingWindowTrigger.fromMap(Map<String, dynamic> map) {
    return RerunTumblingWindowTrigger(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      parentTrigger: map['parentTrigger'],
      requestedEndTime: map['requestedEndTime'] as String,
      requestedStartTime: map['requestedStartTime'] as String,
      rerunConcurrency: map['rerunConcurrency'] as int,
      type: map['type'] as String,
    );
  }
}

