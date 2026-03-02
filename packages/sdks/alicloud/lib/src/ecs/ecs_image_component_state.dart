// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsImageComponent resources.
class EcsImageComponentState {
  /// The component type. Supports mirrored build components and test components.
  ///
  /// Value range:
  /// - Build
  /// - Test
  ///
  /// Default value: Build.
  ///
  /// > **NOTE:**  Build components can only be used in build templates and test components can only be used in test templates.
  final pulumi.Input<String>? componentType;
  /// The component version number, which is used in conjunction with the component name, is in the format of major.minor.patch and is a non-negative integer.
  ///
  /// Default value:(x +1).0.0, where x is the maximum major version of the current component.
  final pulumi.Input<String>? componentVersion;
  /// Component content. Consists of multiple commands. The maximum number of commands cannot exceed 127. Details of supported commands and command formats,
  final pulumi.Input<String>? content;
  /// Component creation time.
  final pulumi.Input<String>? createTime;
  /// Description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// The component name. It must be 2 to 128 characters in length and start with an uppercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-length colons (:), underscores (_), half-length periods (.), or dashes (-).
  ///
  /// > **NOTE:**  When 'Name' is not set, the 'ImageComponentId' return value is used by default.
  final pulumi.Input<String>? imageComponentName;
  /// The ID of the enterprise resource group to which the created image component belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The operating system supported by the component.
  ///
  /// Value range:
  /// - Linux
  /// - Windows
  ///
  /// Default value: Linux.
  final pulumi.Input<String>? systemType;
  /// List of label key-value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcsImageComponentState].
  /// [componentType] The component type. Supports mirrored build components and test components.
  /// [componentVersion] The component version number, which is used in conjunction with the component name, is in the format of major.minor.patch and is a non-negative integer.
  /// [content] Component content. Consists of multiple commands. The maximum number of commands cannot exceed 127. Details of supported commands and command formats,
  /// [createTime] Component creation time.
  /// [description] Description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  /// [imageComponentName] The component name. It must be 2 to 128 characters in length and start with an uppercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-length colons (:), underscores (_), half-length periods (.), or dashes (-).
  /// [resourceGroupId] The ID of the enterprise resource group to which the created image component belongs.
  /// [systemType] The operating system supported by the component.
  /// [tags] List of label key-value pairs.
  EcsImageComponentState({
    this.componentType,
    this.componentVersion,
    this.content,
    this.createTime,
    this.description,
    this.imageComponentName,
    this.resourceGroupId,
    this.systemType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': ?componentType,
      'componentVersion': ?componentVersion,
      'content': ?content,
      'createTime': ?createTime,
      'description': ?description,
      'imageComponentName': ?imageComponentName,
      'resourceGroupId': ?resourceGroupId,
      'systemType': ?systemType,
      'tags': ?tags,
    };
  }

  factory EcsImageComponentState.fromMap(Map<String, dynamic> map) {
    return EcsImageComponentState(
      componentType: map['componentType'] == null ? null : (map['componentType'] as String).input(),
      componentVersion: map['componentVersion'] == null ? null : (map['componentVersion'] as String).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      imageComponentName: map['imageComponentName'] == null ? null : (map['imageComponentName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      systemType: map['systemType'] == null ? null : (map['systemType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

