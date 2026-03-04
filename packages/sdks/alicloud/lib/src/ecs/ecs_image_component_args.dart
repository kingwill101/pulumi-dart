// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_image_component_ecs_image_component_args_doc}
/// The set of arguments for EcsImageComponent.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_image_component_ecs_image_component_args_doc}
class EcsImageComponentArgs {
  /// The component type. Supports mirrored build components and test components.
  ///
  /// Value range:
  /// - Build
  /// - Test
  ///
  /// Default value: Build.
  ///
  /// &gt; **NOTE:**  Build components can only be used in build templates and test components can only be used in test templates.
  final pulumi.Input<String>? componentType;

  /// The component version number, which is used in conjunction with the component name, is in the format of major.minor.patch and is a non-negative integer.
  ///
  /// Default value:(x +1).0.0, where x is the maximum major version of the current component.
  final pulumi.Input<String>? componentVersion;

  /// Component content. Consists of multiple commands. The maximum number of commands cannot exceed 127. Details of supported commands and command formats,
  final pulumi.Input<String> content;

  /// Description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;

  /// The component name. It must be 2 to 128 characters in length and start with an uppercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-length colons (:), underscores (_), half-length periods (.), or dashes (-).
  ///
  /// &gt; **NOTE:**  When 'Name' is not set, the 'ImageComponentId' return value is used by default.
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

  /// Creates a new [EcsImageComponentArgs].
  /// [componentType] The component type. Supports mirrored build components and test components.
  /// [componentVersion] The component version number, which is used in conjunction with the component name, is in the format of major.minor.patch and is a non-negative integer.
  /// [content] Component content. Consists of multiple commands. The maximum number of commands cannot exceed 127. Details of supported commands and command formats,
  /// [description] Description information. It must be 2 to 256 characters in length and cannot start with http:// or https.
  /// [imageComponentName] The component name. It must be 2 to 128 characters in length and start with an uppercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-length colons (:), underscores (_), half-length periods (.), or dashes (-).
  /// [resourceGroupId] The ID of the enterprise resource group to which the created image component belongs.
  /// [systemType] The operating system supported by the component.
  /// [tags] List of label key-value pairs.
  EcsImageComponentArgs({
    this.componentType,
    this.componentVersion,
    required this.content,
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
      'content': content,
      'description': ?description,
      'imageComponentName': ?imageComponentName,
      'resourceGroupId': ?resourceGroupId,
      'systemType': ?systemType,
      'tags': ?tags,
    };
  }

  factory EcsImageComponentArgs.fromMap(Map<String, dynamic> map) {
    return EcsImageComponentArgs(
      componentType: (() {
        final guardedValue = map['componentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      componentVersion: (() {
        final guardedValue = map['componentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      content: pulumi.Input.fromValue(map['content'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageComponentName: (() {
        final guardedValue = map['imageComponentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemType: (() {
        final guardedValue = map['systemType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
