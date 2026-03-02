// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_image_pipeline_get_ecs_image_pipeline_args_doc}
/// Arguments for getEcsImagePipeline.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_image_pipeline_get_ecs_image_pipeline_args_doc}
class GetEcsImagePipelineArgs {
  /// A list of Image Pipeline ids.
  final pulumi.Input<List<String>>? ids;
  /// The name of the image template.
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Image Pipeline name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group to which the image template belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEcsImagePipelineArgs].
  /// [ids] A list of Image Pipeline ids.
  /// [name] The name of the image template.
  /// [nameRegex] A regex string to filter results by Image Pipeline name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group to which the image template belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetEcsImagePipelineArgs({
    this.ids,
    this.name,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEcsImagePipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsImagePipelineArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

