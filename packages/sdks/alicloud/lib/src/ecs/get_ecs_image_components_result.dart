// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_image_components_component.dart';

/// Result data returned by getEcsImageComponents.
class GetEcsImageComponentsResult {
  final List<GetEcsImageComponentsComponent> components;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? imageComponentName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? owner;
  final String? resourceGroupId;
  final Map<String, String>? tags;

  /// Creates a new [GetEcsImageComponentsResult].
  /// [components] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [imageComponentName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [owner] Optional.
  /// [resourceGroupId] Optional.
  /// [tags] Optional.
  GetEcsImageComponentsResult({
    required this.components,
    required this.id,
    required this.ids,
    this.imageComponentName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.owner,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': pulumi.Input.encodeList<GetEcsImageComponentsComponent, Map<String, dynamic>>(components, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'imageComponentName': ?imageComponentName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'owner': ?owner,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEcsImageComponentsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsImageComponentsResult(
      components: pulumi.Input.decodeList<GetEcsImageComponentsComponent>(map['components'], (value) => GetEcsImageComponentsComponent.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageComponentName: map['imageComponentName'] == null ? null : map['imageComponentName']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      owner: map['owner'] == null ? null : map['owner']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

