// ignore_for_file: unused_element, unnecessary_cast


class GetEcsImageComponentsComponent {
  /// The type of the image component.
  final String componentType;
  /// The content of the image component.
  final String content;
  /// The time when the image component was created.
  final String createTime;
  /// The description of the image component.
  final String description;
  /// The ID of the Image Component.
  final String id;
  /// The ID of the image component.
  final String imageComponentId;
  /// The name of the image component.
  final String imageComponentName;
  /// The type of the image component.
  final String owner;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The operating system type supported by the image component.
  final String systemType;
  /// List of label key-value pairs.
  final Map<String, String> tags;

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
      componentType: map['componentType'] as String,
      content: map['content'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      imageComponentId: map['imageComponentId'] as String,
      imageComponentName: map['imageComponentName'] as String,
      owner: map['owner'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      systemType: map['systemType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

