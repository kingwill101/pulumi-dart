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
  ImageArgs({
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
      catalogName: (map['catalogName'] as String).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : (map['regionalDataBoundary'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

