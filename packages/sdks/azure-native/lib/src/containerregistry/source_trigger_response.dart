// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_properties_response.dart';

/// The properties of a source based trigger.
class SourceTriggerResponse {
  /// The name of the trigger.
  final pulumi.Input<String> name;
  /// The properties that describes the source(code) for the task.
  final pulumi.Input<SourcePropertiesResponse> sourceRepository;
  /// The source event corresponding to the trigger.
  final pulumi.Input<List<String>> sourceTriggerEvents;
  /// The current status of trigger.
  final pulumi.Input<String?>? status;

  /// Creates a new [SourceTriggerResponse].
  /// [name] The name of the trigger.
  /// [sourceRepository] The properties that describes the source(code) for the task.
  /// [sourceTriggerEvents] The source event corresponding to the trigger.
  /// [status] The current status of trigger.
  SourceTriggerResponse({
    required this.name,
    required this.sourceRepository,
    required this.sourceTriggerEvents,
    pulumi.Input<String?>? status,
  }) : status = status ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sourceRepository': pulumi.Input.mapInputValue<SourcePropertiesResponse, Map<String, dynamic>>(sourceRepository, (value) => value.toMap()),
      'sourceTriggerEvents': sourceTriggerEvents,
      'status': ?status,
    };
  }

  factory SourceTriggerResponse.fromMap(Map<String, dynamic> map) {
    return SourceTriggerResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      sourceRepository: pulumi.Input.fromValue(SourcePropertiesResponse.fromMap((map['sourceRepository']! as Map).cast<String, dynamic>())),
      sourceTriggerEvents: pulumi.Input.fromValue((map['sourceTriggerEvents'] as List).cast<String>()),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
