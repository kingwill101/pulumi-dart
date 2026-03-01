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
    required pulumi.Output<String> catalogName,
    pulumi.Output<String>? image,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? regionalDataBoundary,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      image = pulumi.Input.asOptionalInput<String>(image),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      regionalDataBoundary = pulumi.Input.asOptionalInput<String>(regionalDataBoundary),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : pulumi.Output.create<String>(map['regionalDataBoundary'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

