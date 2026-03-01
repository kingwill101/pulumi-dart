// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_image_components_get_ecs_image_components_args_doc}
/// Arguments for getEcsImageComponents.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_image_components_get_ecs_image_components_args_doc}
class GetEcsImageComponentsArgs {
  /// A list of Image Component IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the component.
  final pulumi.Input<String>? imageComponentName;
  /// A regex string to filter results by Image Component name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Mirror component type. Valid values: `SELF` or `ALIYUN`. Possible values:
  /// - SELF: The custom image component you created.
  /// - ALIYUN: System components provided by Alibaba Cloud.
  final pulumi.Input<String>? owner;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEcsImageComponentsArgs].
  /// [ids] A list of Image Component IDs.
  /// [imageComponentName] The name of the component.
  /// [nameRegex] A regex string to filter results by Image Component name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [owner] Mirror component type. Valid values: `SELF` or `ALIYUN`. Possible values:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  GetEcsImageComponentsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? imageComponentName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      imageComponentName = pulumi.Input.asOptionalInput<String>(imageComponentName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'imageComponentName': ?imageComponentName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'owner': ?owner,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEcsImageComponentsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsImageComponentsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      imageComponentName: map['imageComponentName'] == null ? null : pulumi.Output.create<String>(map['imageComponentName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

