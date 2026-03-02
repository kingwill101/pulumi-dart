// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image artifact profile.
class ImageArtifactProfile {
  /// Image name.
  final pulumi.Input<String>? imageName;
  /// Image version.
  final pulumi.Input<String>? imageVersion;

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
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      imageVersion: map['imageVersion'] == null ? null : (map['imageVersion'] as String).input(),
    );
  }
}

