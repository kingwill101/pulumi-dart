// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_get_image_args_doc}
class GetImageArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;

  /// Image name. Use an image GUID for GA versions of the API.
  final pulumi.Input<String> imageName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImageArgs].
  /// [catalogName] Name of catalog
  /// [imageName] Image name. Use an image GUID for GA versions of the API.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetImageArgs({
    required this.catalogName,
    required this.imageName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'imageName': imageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
