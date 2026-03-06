// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_image_upload_url_for_data_args_doc}
/// Arguments for getImageUploadUrlForData.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_image_upload_url_for_data_args_doc}
class GetImageUploadUrlForDataArgs {
  /// Type of entity. Can be Profile or Interaction.
  final pulumi.Input<String>? entityType;
  /// Name of the entity type.
  final pulumi.Input<String>? entityTypeName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// Relative path of the image.
  final pulumi.Input<String>? relativePath;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImageUploadUrlForDataArgs].
  /// [entityType] Type of entity. Can be Profile or Interaction.
  /// [entityTypeName] Name of the entity type.
  /// [hubName] The name of the hub.
  /// [relativePath] Relative path of the image.
  /// [resourceGroupName] The name of the resource group.
  const GetImageUploadUrlForDataArgs({
    this.entityType,
    this.entityTypeName,
    required this.hubName,
    this.relativePath,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': ?entityType,
      'entityTypeName': ?entityTypeName,
      'hubName': hubName,
      'relativePath': ?relativePath,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImageUploadUrlForDataArgs.fromMap(Map<String, dynamic> map) {
    return GetImageUploadUrlForDataArgs(
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityTypeName: (() { final guardedValue = map['entityTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      relativePath: (() { final guardedValue = map['relativePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

