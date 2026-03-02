// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_image_pipeline_pipeline.dart';

/// Result data returned by getEcsImagePipeline.
class GetEcsImagePipelineResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? name;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetEcsImagePipelinePipeline> pipelines;
  final String? resourceGroupId;
  final Map<String, String>? tags;

  /// Creates a new [GetEcsImagePipelineResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pipelines] Required.
  /// [resourceGroupId] Optional.
  /// [tags] Optional.
  GetEcsImagePipelineResult({
    required this.id,
    required this.ids,
    this.name,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.pipelines,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pipelines': pulumi.Input.encodeList<GetEcsImagePipelinePipeline, Map<String, dynamic>>(pipelines, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEcsImagePipelineResult.fromMap(Map<String, dynamic> map) {
    return GetEcsImagePipelineResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pipelines: pulumi.Input.decodeList<GetEcsImagePipelinePipeline>(map['pipelines'], (value) => GetEcsImagePipelinePipeline.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

