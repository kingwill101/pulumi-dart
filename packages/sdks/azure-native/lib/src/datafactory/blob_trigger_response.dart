// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';
import 'trigger_pipeline_reference_response.dart';

/// Trigger that runs every time the selected Blob container changes.
class BlobTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final List<dynamic>? annotations;
  /// Trigger description.
  final String? description;
  /// The path of the container/folder that will trigger the pipeline.
  final String folderPath;
  /// The Azure Storage linked service reference.
  final LinkedServiceReferenceResponse linkedService;
  /// The max number of parallel files to handle when it is triggered.
  final int maxConcurrency;
  /// Pipelines that need to be started.
  final List<TriggerPipelineReferenceResponse>? pipelines;
  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final String runtimeState;
  /// Trigger type.
  /// Expected value is 'BlobTrigger'.
  final String type;

  /// Creates a new [BlobTriggerResponse].
  /// [annotations] List of tags that can be used for describing the trigger.
  /// [description] Trigger description.
  /// [folderPath] The path of the container/folder that will trigger the pipeline.
  /// [linkedService] The Azure Storage linked service reference.
  /// [maxConcurrency] The max number of parallel files to handle when it is triggered.
  /// [pipelines] Pipelines that need to be started.
  /// [runtimeState] Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  /// [type] Trigger type.
  BlobTriggerResponse({
    this.annotations,
    this.description,
    required this.folderPath,
    required this.linkedService,
    required this.maxConcurrency,
    this.pipelines,
    required this.runtimeState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folderPath': folderPath,
      'linkedService': linkedService.toMap(),
      'maxConcurrency': maxConcurrency,
      'pipelines': ?pipelines == null ? null : pulumi.Input.encodeList<TriggerPipelineReferenceResponse, Map<String, dynamic>>(pipelines!, (value) => value.toMap()),
      'runtimeState': runtimeState,
      'type': type,
    };
  }

  factory BlobTriggerResponse.fromMap(Map<String, dynamic> map) {
    return BlobTriggerResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folderPath: map['folderPath'] as String,
      linkedService: LinkedServiceReferenceResponse.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      maxConcurrency: map['maxConcurrency'] as int,
      pipelines: map['pipelines'] == null ? null : pulumi.Input.decodeList<TriggerPipelineReferenceResponse>(map['pipelines'], (value) => TriggerPipelineReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      runtimeState: map['runtimeState'] as String,
      type: map['type'] as String,
    );
  }
}

