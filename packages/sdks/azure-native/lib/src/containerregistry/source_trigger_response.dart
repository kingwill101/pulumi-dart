// ignore_for_file: unused_element, unnecessary_cast

import 'source_properties_response.dart';

/// The properties of a source based trigger.
class SourceTriggerResponse {
  /// The name of the trigger.
  final String name;
  /// The properties that describes the source(code) for the task.
  final SourcePropertiesResponse sourceRepository;
  /// The source event corresponding to the trigger.
  final List<String> sourceTriggerEvents;
  /// The current status of trigger.
  final String? status;

  /// Creates a new [SourceTriggerResponse].
  /// [name] The name of the trigger.
  /// [sourceRepository] The properties that describes the source(code) for the task.
  /// [sourceTriggerEvents] The source event corresponding to the trigger.
  /// [status] The current status of trigger.
  SourceTriggerResponse({
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

  factory SourceTriggerResponse.fromMap(Map<String, dynamic> map) {
    return SourceTriggerResponse(
      name: map['name'] as String,
      sourceRepository: SourcePropertiesResponse.fromMap((map['sourceRepository'] as Map).cast<String, dynamic>()),
      sourceTriggerEvents: (map['sourceTriggerEvents'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

