// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image artifact profile.
class ImageArtifactProfileResponse {
  /// Image name.
  final pulumi.Input<String>? imageName;
  /// Image version.
  final pulumi.Input<String>? imageVersion;

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
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

