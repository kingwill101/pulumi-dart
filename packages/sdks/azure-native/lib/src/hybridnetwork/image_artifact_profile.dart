// ignore_for_file: unused_element, unnecessary_cast


/// Image artifact profile.
class ImageArtifactProfile {
  /// Image name.
  final String? imageName;
  /// Image version.
  final String? imageVersion;

  /// Creates a new [ImageArtifactProfile].
  /// [imageName] Image name.
  /// [imageVersion] Image version.
  ImageArtifactProfile({
    this.imageName,
    this.imageVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': ?imageName,
      'imageVersion': ?imageVersion,
    };
  }

  factory ImageArtifactProfile.fromMap(Map<String, dynamic> map) {
    return ImageArtifactProfile(
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageVersion: map['imageVersion'] == null ? null : map['imageVersion'] as String,
    );
  }
}

