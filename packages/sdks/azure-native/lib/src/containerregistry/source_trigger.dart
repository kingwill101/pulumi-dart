// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_properties.dart';

/// The properties of a source based trigger.
class SourceTrigger {
  /// The name of the trigger.
  final pulumi.Input<String> name;
  /// The properties that describes the source(code) for the task.
  final pulumi.Input<SourceProperties> sourceRepository;
  /// The source event corresponding to the trigger.
  final pulumi.Input<List<dynamic>> sourceTriggerEvents;
  /// The current status of trigger.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [SourceTrigger].
  /// [name] The name of the trigger.
  /// [sourceRepository] The properties that describes the source(code) for the task.
  /// [sourceTriggerEvents] The source event corresponding to the trigger.
  /// [status] The current status of trigger.
  SourceTrigger({
    required this.name,
    required this.sourceRepository,
    required this.sourceTriggerEvents,
    pulumi.Input<dynamic>? status,
  }) : status = status ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sourceRepository': pulumi.Input.mapInputValue<SourceProperties, Map<String, dynamic>>(sourceRepository, (value) => value.toMap()),
      'sourceTriggerEvents': sourceTriggerEvents,
      'status': ?status,
    };
  }

  factory SourceTrigger.fromMap(Map<String, dynamic> map) {
    return SourceTrigger(
      name: pulumi.Input.fromValue(map['name'] as String),
      sourceRepository: pulumi.Input.fromValue(SourceProperties.fromMap((map['sourceRepository']! as Map).cast<String, dynamic>())),
      sourceTriggerEvents: pulumi.Input.fromValue((map['sourceTriggerEvents'] as List).cast<dynamic>()),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
