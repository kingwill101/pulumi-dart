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
  const GetEcsImageComponentsArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      imageComponentName: (() { final guardedValue = map['imageComponentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

