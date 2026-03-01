// ignore_for_file: unused_element, unnecessary_cast

import 'source_properties.dart';

/// The properties of a source based trigger.
class SourceTrigger {
  /// The name of the trigger.
  final String name;
  /// The properties that describes the source(code) for the task.
  final SourceProperties sourceRepository;
  /// The source event corresponding to the trigger.
  final List<String> sourceTriggerEvents;
  /// The current status of trigger.
  final String? status;

  /// Creates a new [SourceTrigger].
  /// [name] The name of the trigger.
  /// [sourceRepository] The properties that describes the source(code) for the task.
  /// [sourceTriggerEvents] The source event corresponding to the trigger.
  /// [status] The current status of trigger.
  SourceTrigger({
    required this.name,
    required this.sourceRepository,
    required this.sourceTriggerEvents,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sourceRepository': sourceRepository.toMap(),
      'sourceTriggerEvents': sourceTriggerEvents,
      'status': ?status,
    };
  }

  factory SourceTrigger.fromMap(Map<String, dynamic> map) {
    return SourceTrigger(
      name: map['name'] as String,
      sourceRepository: SourceProperties.fromMap((map['sourceRepository'] as Map).cast<String, dynamic>()),
      sourceTriggerEvents: (map['sourceTriggerEvents'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

