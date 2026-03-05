// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsImageComponentsComponent {
  /// The type of the image component.
  final pulumi.Input<String> componentType;
  /// The content of the image component.
  final pulumi.Input<String> content;
  /// The time when the image component was created.
  final pulumi.Input<String> createTime;
  /// The description of the image component.
  final pulumi.Input<String> description;
  /// The ID of the Image Component.
  final pulumi.Input<String> id;
  /// The ID of the image component.
  final pulumi.Input<String> imageComponentId;
  /// The name of the image component.
  final pulumi.Input<String> imageComponentName;
  /// The type of the image component.
  final pulumi.Input<String> owner;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The operating system type supported by the image component.
  final pulumi.Input<String> systemType;
  /// List of label key-value pairs.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetEcsImageComponentsComponent].
  /// [componentType] The type of the image component.
  /// [content] The content of the image component.
  /// [createTime] The time when the image component was created.
  /// [description] The description of the image component.
  /// [id] The ID of the Image Component.
  /// [imageComponentId] The ID of the image component.
  /// [imageComponentName] The name of the image component.
  /// [owner] The type of the image component.
  /// [resourceGroupId] The ID of the resource group.
  /// [systemType] The operating system type supported by the image component.
  /// [tags] List of label key-value pairs.
  GetEcsImageComponentsComponent({
    required this.componentType,
    required this.content,
    required this.createTime,
    required this.description,
    required this.id,
    required this.imageComponentId,
    required this.imageComponentName,
    required this.owner,
    required this.resourceGroupId,
    required this.systemType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'content': content,
      'createTime': createTime,
      'description': description,
      'id': id,
      'imageComponentId': imageComponentId,
      'imageComponentName': imageComponentName,
      'owner': owner,
      'resourceGroupId': resourceGroupId,
      'systemType': systemType,
      'tags': tags,
    };
  }

  factory GetEcsImageComponentsComponent.fromMap(Map<String, dynamic> map) {
    return GetEcsImageComponentsComponent(
      componentType: pulumi.Input.fromValue(map['componentType'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageComponentId: pulumi.Input.fromValue(map['imageComponentId'] as String),
      imageComponentName: pulumi.Input.fromValue(map['imageComponentName'] as String),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      systemType: pulumi.Input.fromValue(map['systemType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}

