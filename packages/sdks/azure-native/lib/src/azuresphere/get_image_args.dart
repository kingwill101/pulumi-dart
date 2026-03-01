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
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> imageName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      imageName = pulumi.Input.asInput<String>(imageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'imageName': imageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      imageName: pulumi.Output.create<String>(map['imageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

