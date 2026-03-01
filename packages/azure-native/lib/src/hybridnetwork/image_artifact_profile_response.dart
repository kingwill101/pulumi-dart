// ignore_for_file: unused_element, unnecessary_cast


/// Image artifact profile.
class ImageArtifactProfileResponse {
  /// Image name.
  final String? imageName;
  /// Image version.
  final String? imageVersion;

  /// Creates a new [ImageArtifactProfileResponse].
  /// [imageName] Image name.
  /// [imageVersion] Image version.
  ImageArtifactProfileResponse({
    this.imageName,
    this.imageVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': ?imageName,
      'imageVersion': ?imageVersion,
    };
  }

  factory ImageArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return ImageArtifactProfileResponse(
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageVersion: map['imageVersion'] == null ? null : map['imageVersion'] as String,
    );
  }
}

