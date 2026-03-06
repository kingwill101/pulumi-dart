// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_image_args_doc}
class ImageArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  final pulumi.Input<String>? image;
  /// Image ID
  final pulumi.Input<String>? imageId;
  /// Image name. Use an image GUID for GA versions of the API.
  final pulumi.Input<String>? imageName;
  /// Regional data boundary for an image
  final pulumi.Input<String>? regionalDataBoundary;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ImageArgs].
  /// [catalogName] Name of catalog
  /// [image] Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  /// [imageId] Image ID
  /// [imageName] Image name. Use an image GUID for GA versions of the API.
  /// [regionalDataBoundary] Regional data boundary for an image
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ImageArgs({
    required this.catalogName,
    this.image,
    this.imageId,
    this.imageName,
    this.regionalDataBoundary,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'image': ?image,
      'imageId': ?imageId,
      'imageName': ?imageName,
      'regionalDataBoundary': ?regionalDataBoundary,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalDataBoundary: (() { final guardedValue = map['regionalDataBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

