// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference.dart';
import 'trigger_pipeline_reference.dart';

/// Trigger that runs every time the selected Blob container changes.
class BlobTrigger {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// The path of the container/folder that will trigger the pipeline.
  final String folderPath;
  /// The Azure Storage linked service reference.
  final LinkedServiceReference linkedService;
  /// The max number of parallel files to handle when it is triggered.
  final int maxConcurrency;
  /// Pipelines that need to be started.
  final List<TriggerPipelineReference>? pipelines;
  /// Trigger type.
  /// Expected value is 'BlobTrigger'.
  final String type;

  /// Creates a new [BlobTrigger].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [folderPath] The path of the container/folder that will trigger the pipeline.
  /// [linkedService] The Azure Storage linked service reference.
  /// [maxConcurrency] The max number of parallel files to handle when it is triggered.
  /// [pipelines] Pipelines that need to be started.
  /// [type] Trigger type.
  BlobTrigger({
    this.annotations,
    this.description,
    required this.folderPath,
    required this.linkedService,
    required this.maxConcurrency,
    this.pipelines,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folderPath': folderPath,
      'linkedService': linkedService.toMap(),
      'maxConcurrency': maxConcurrency,
      'pipelines': ?pipelines == null ? null : pulumi.Input.encodeList<TriggerPipelineReference, Map<String, dynamic>>(pipelines!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory BlobTrigger.fromMap(Map<String, dynamic> map) {
    return BlobTrigger(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folderPath: map['folderPath'] as String,
      linkedService: LinkedServiceReference.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      maxConcurrency: map['maxConcurrency'] as int,
      pipelines: map['pipelines'] == null ? null : pulumi.Input.decodeList<TriggerPipelineReference>(map['pipelines'], (value) => TriggerPipelineReference.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

