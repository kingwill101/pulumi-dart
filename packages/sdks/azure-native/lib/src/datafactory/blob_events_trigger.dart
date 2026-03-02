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
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      blobPathBeginsWith: map['blobPathBeginsWith'] == null ? null : (map['blobPathBeginsWith'] as String).input(),
      blobPathEndsWith: map['blobPathEndsWith'] == null ? null : (map['blobPathEndsWith'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      events: ((map['events'] as List).cast<String>()).input(),
      ignoreEmptyBlobs: map['ignoreEmptyBlobs'] == null ? null : (map['ignoreEmptyBlobs'] as bool).input(),
      pipelines: map['pipelines'] == null ? null : (pulumi.Input.decodeList<TriggerPipelineReference>(map['pipelines'], (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scope: (map['scope'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

