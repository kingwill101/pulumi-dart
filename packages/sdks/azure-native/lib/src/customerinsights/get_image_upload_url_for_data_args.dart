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
  GetImageUploadUrlForDataArgs({
    pulumi.Output<String>? entityType,
    pulumi.Output<String>? entityTypeName,
    required pulumi.Output<String> hubName,
    pulumi.Output<String>? relativePath,
    required pulumi.Output<String> resourceGroupName,
  }) :
      entityType = pulumi.Input.asOptionalInput<String>(entityType),
      entityTypeName = pulumi.Input.asOptionalInput<String>(entityTypeName),
      hubName = pulumi.Input.asInput<String>(hubName),
      relativePath = pulumi.Input.asOptionalInput<String>(relativePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      entityType: map['entityType'] == null ? null : pulumi.Output.create<String>(map['entityType'] as String),
      entityTypeName: map['entityTypeName'] == null ? null : pulumi.Output.create<String>(map['entityTypeName'] as String),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      relativePath: map['relativePath'] == null ? null : pulumi.Output.create<String>(map['relativePath'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

