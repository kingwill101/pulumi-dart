// ignore_for_file: unused_element, unnecessary_cast


/// An image resource belonging to a catalog resource.
class Image {
  /// Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  final String? image;
  /// Image ID
  final String? imageId;
  /// Regional data boundary for an image
  final String? regionalDataBoundary;

  /// Creates a new [Image].
  /// [image] Image as a UTF-8 encoded base 64 string on image create. This field contains the image URI on image reads.
  /// [imageId] Image ID
  /// [regionalDataBoundary] Regional data boundary for an image
  Image({
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
      image: map['image'] == null ? null : map['image'] as String,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      regionalDataBoundary: map['regionalDataBoundary'] == null ? null : map['regionalDataBoundary'] as String,
    );
  }
}

