// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_pipeline_reference_response.dart';

/// Trigger that runs every time a custom event is received.
class CustomEventsTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// The list of event types that cause this trigger to fire.
  final List<dynamic> events;
  /// Pipelines that need to be started.
  final List<TriggerPipelineReferenceResponse>? pipelines;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final String runtimeState;
  /// The ARM resource ID of the Azure Event Grid Topic.
  final String scope;
  /// The event subject must begin with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  final String? subjectBeginsWith;
  /// The event subject must end with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  final String? subjectEndsWith;
  /// Trigger type.
  /// Expected value is 'CustomEventsTrigger'.
  final String type;

  /// Creates a new [CustomEventsTriggerResponse].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [events] The list of event types that cause this trigger to fire.
  /// [pipelines] Pipelines that need to be started.
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [scope] The ARM resource ID of the Azure Event Grid Topic.
  /// [subjectBeginsWith] The event subject must begin with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  /// [subjectEndsWith] The event subject must end with the pattern provided for trigger to fire. At least one of these must be provided: subjectBeginsWith, subjectEndsWith.
  /// [type] Trigger type.
  CustomEventsTriggerResponse({
    this.annotations,
    this.description,
    required this.events,
    this.pipelines,
    required this.runtimeState,
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
      'pipelines': ?pipelines == null ? null : pulumi.Input.encodeList<TriggerPipelineReferenceResponse, Map<String, dynamic>>(pipelines!, (value) => value.toMap()),
      'runtimeState': runtimeState,
      'scope': scope,
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
      'type': type,
    };
  }

  factory CustomEventsTriggerResponse.fromMap(Map<String, dynamic> map) {
    return CustomEventsTriggerResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      events: (map['events'] as List).cast<dynamic>(),
      pipelines: map['pipelines'] == null ? null : pulumi.Input.decodeList<TriggerPipelineReferenceResponse>(map['pipelines'], (value) => TriggerPipelineReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      runtimeState: map['runtimeState'] as String,
      scope: map['scope'] as String,
      subjectBeginsWith: map['subjectBeginsWith'] == null ? null : map['subjectBeginsWith'] as String,
      subjectEndsWith: map['subjectEndsWith'] == null ? null : map['subjectEndsWith'] as String,
      type: map['type'] as String,
    );
  }
}

