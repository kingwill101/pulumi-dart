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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      events: ((map['events'] as List).cast<dynamic>()).input(),
      pipelines: map['pipelines'] == null ? null : (pulumi.Input.decodeList<TriggerPipelineReference>(map['pipelines']!, (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scope: (map['scope'] as String).input(),
      subjectBeginsWith: map['subjectBeginsWith'] == null ? null : (map['subjectBeginsWith']! as String).input(),
      subjectEndsWith: map['subjectEndsWith'] == null ? null : (map['subjectEndsWith']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

