// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An image resource belonging to a catalog resource.
class Image {
  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  final pulumi.Input<String?>? image;
  /// Image ID
  final pulumi.Input<String?>? imageId;
  /// Regional data boundary for an image
  final pulumi.Input<dynamic>? regionalDataBoundary;

  /// Creates a new [Image].
  /// [image] Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  /// [imageId] Image ID
  /// [regionalDataBoundary] Regional data boundary for an image
  const Image({
    this.image,
    this.imageId,
    this.regionalDataBoundary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': ?image,
      'imageId': ?imageId,
      'regionalDataBoundary': ?regionalDataBoundary,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalDataBoundary: (() { final guardedValue = map['regionalDataBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
