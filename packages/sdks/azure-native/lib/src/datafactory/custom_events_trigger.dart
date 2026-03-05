// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_pipeline_reference.dart';

/// Trigger that runs every time a custom event is received.
class CustomEventsTrigger {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Trigger description.
  final pulumi.Input<String>? description;
  /// The list of event types that cause this trigger to fire.
  final pulumi.Input<List<dynamic>> events;
  /// Pipelines that need to be started.
  final pulumi.Input<List<TriggerPipelineReference>>? pipelines;
  /// The ARM resource ID of the Azure Event Grid Topic.
  final pulumi.Input<String> scope;
  /// The event subject must begin with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  final pulumi.Input<String>? subjectBeginsWith;
  /// The event subject must end with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  final pulumi.Input<String>? subjectEndsWith;
  /// Trigger type.
  /// Expected value is 'CustomEventsTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [CustomEventsTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [events] The list of event types that cause this trigger to fire.
  /// [pipelines] Pipelines that need to be started.
  /// [scope] The ARM resource ID of the Azure Event Grid Topic.
  /// [subjectBeginsWith] The event subject must begin with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  /// [subjectEndsWith] The event subject must end with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  /// [type] Trigger type.
  CustomEventsTrigger({
    this.annotations,
    this.description,
    required this.events,
    this.pipelines,
    required this.scope,
    this.subjectBeginsWith,
    this.subjectEndsWith,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'events': events,
      'pipelines': ?pulumi.Input.mapOptionalInputValue<List<TriggerPipelineReference>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerPipelineReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
      'type': type,
    };
  }

  factory CustomEventsTrigger.fromMap(Map<String, dynamic> map) {
    return CustomEventsTrigger(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: pulumi.Input.fromValue((map['events'] as List).cast<dynamic>()),
      pipelines: (() { final guardedValue = map['pipelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerPipelineReference>(guardedValue, (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      subjectBeginsWith: (() { final guardedValue = map['subjectBeginsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectEndsWith: (() { final guardedValue = map['subjectEndsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

