// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';
import 'trigger_pipeline_reference_response.dart';

/// Trigger that runs every time the selected Blob container changes.
class BlobTriggerResponse {
  /// List of tags that can be used for describing the trigger.
  final pulumi.Input<List<dynamic>>? annotations;

  /// Trigger description.
  final pulumi.Input<String>? description;

  /// The path of the container/folder that will trigger the pipeline.
  final pulumi.Input<String> folderPath;

  /// The Azure Storage linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedService;

  /// The max number of parallel files to handle when it is triggered.
  final pulumi.Input<int> maxConcurrency;

  /// Pipelines that need to be started.
  final pulumi.Input<List<TriggerPipelineReferenceResponse>>? pipelines;

  /// Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger.
  final pulumi.Input<String> runtimeState;

  /// Trigger type.
  /// Expected value is 'BlobTrigger'.
  final pulumi.Input<String> type;

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
      'linkedService':
          pulumi.Input.mapInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedService, (value) => value.toMap()),
      'maxConcurrency': maxConcurrency,
      'pipelines':
          ?pulumi.Input.mapOptionalInputValue<
            List<TriggerPipelineReferenceResponse>,
            List<Map<String, dynamic>>
          >(
            pipelines,
            (value) =>
                pulumi.Input.encodeList<
                  TriggerPipelineReferenceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runtimeState': runtimeState,
      'type': type,
    };
  }

  factory BlobTriggerResponse.fromMap(Map<String, dynamic> map) {
    return BlobTriggerResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folderPath: pulumi.Input.fromValue(map['folderPath'] as String),
      linkedService: pulumi.Input.fromValue(
        LinkedServiceReferenceResponse.fromMap(
          (map['linkedService']! as Map).cast<String, dynamic>(),
        ),
      ),
      maxConcurrency: pulumi.Input.fromValue(map['maxConcurrency'] as int),
      pipelines: (() {
        final guardedValue = map['pipelines'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TriggerPipelineReferenceResponse>(
            guardedValue,
            (value) => TriggerPipelineReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      runtimeState: pulumi.Input.fromValue(map['runtimeState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
