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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

