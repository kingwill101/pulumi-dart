// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_pipeline_reference.dart';

/// Trigger that runs every time a Blob event occurs.
class BlobEventsTrigger {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The blob path must begin with the pattern provided for trigger to fire. For example, '/records/blobs/december/' will only fire the trigger for blobs in the december folder under the records container. At least one of these must be provided: blobPathBeginsWith, blobPathEndsWith.
  final pulumi.Input<String>? blobPathBeginsWith;
  /// The blob path must end with the pattern provided for trigger to fire. For example, 'december/boxes.csv' will only fire the trigger for blobs named boxes in a december folder. At least one of these must be provided: blobPathBeginsWith, blobPathEndsWith.
  final pulumi.Input<String>? blobPathEndsWith;
  /// Trigger description.
  final pulumi.Input<String>? description;
  /// The type of events that cause this trigger to fire.
  final pulumi.Input<List<String>> events;
  /// If set to true, blobs with zero bytes will be ignored.
  final pulumi.Input<bool>? ignoreEmptyBlobs;
  /// Pipelines that need to be started.
  final pulumi.Input<List<TriggerPipelineReference>>? pipelines;
  /// The ARM resource ID of the Storage Account.
  final pulumi.Input<String> scope;
  /// Trigger type.
  /// Expected value is 'BlobEventsTrigger'.
  final pulumi.Input<String> type;

  /// Creates a new [BlobEventsTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [blobPathBeginsWith] The blob path must begin with the pattern provided for trigger to fire. For example, '/records/blobs/december/' will only fire the trigger for blobs in the december folder under the records container. At least one of these must be provided: blobPathBeginsWith, blobPathEndsWith.
  /// [blobPathEndsWith] The blob path must end with the pattern provided for trigger to fire. For example, 'december/boxes.csv' will only fire the trigger for blobs named boxes in a december folder. At least one of these must be provided: blobPathBeginsWith, blobPathEndsWith.
  /// [description] Trigger description.
  /// [events] The type of events that cause this trigger to fire.
  /// [ignoreEmptyBlobs] If set to true, blobs with zero bytes will be ignored.
  /// [pipelines] Pipelines that need to be started.
  /// [scope] The ARM resource ID of the Storage Account.
  /// [type] Trigger type.
  BlobEventsTrigger({
    this.annotations,
    this.blobPathBeginsWith,
    this.blobPathEndsWith,
    this.description,
    required this.events,
    this.ignoreEmptyBlobs,
    this.pipelines,
    required this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'blobPathBeginsWith': ?blobPathBeginsWith,
      'blobPathEndsWith': ?blobPathEndsWith,
      'description': ?description,
      'events': events,
      'ignoreEmptyBlobs': ?ignoreEmptyBlobs,
      'pipelines': ?pulumi.Input.mapOptionalInputValue<List<TriggerPipelineReference>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerPipelineReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
      'type': type,
    };
  }

  factory BlobEventsTrigger.fromMap(Map<String, dynamic> map) {
    return BlobEventsTrigger(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      blobPathBeginsWith: (() { final guardedValue = map['blobPathBeginsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blobPathEndsWith: (() { final guardedValue = map['blobPathEndsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      ignoreEmptyBlobs: (() { final guardedValue = map['ignoreEmptyBlobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pipelines: (() { final guardedValue = map['pipelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerPipelineReference>(guardedValue, (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

