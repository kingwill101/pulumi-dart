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
    this.ids,
    this.imageComponentName,
    this.nameRegex,
    this.outputFile,
    this.owner,
    this.resourceGroupId,
    this.tags,
  });

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
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      imageComponentName: map['imageComponentName'] == null ? null : (map['imageComponentName']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

