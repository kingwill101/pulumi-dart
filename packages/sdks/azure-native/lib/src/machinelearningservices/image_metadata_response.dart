// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Returns metadata about the operating system image for this compute instance.
class ImageMetadataResponse {
  /// Specifies the current operating system image version this compute instance is running on.
  final pulumi.Input<String>? currentImageVersion;
  /// Specifies whether this compute instance is running on the latest operating system image.
  final pulumi.Input<bool>? isLatestOsImageVersion;
  /// Specifies the latest available operating system image version.
  final pulumi.Input<String>? latestImageVersion;

  /// Creates a new [ImageMetadataResponse].
  /// [currentImageVersion] Specifies the current operating system image version this compute instance is running on.
  /// [isLatestOsImageVersion] Specifies whether this compute instance is running on the latest operating system image.
  /// [latestImageVersion] Specifies the latest available operating system image version.
  ImageMetadataResponse({
    this.currentImageVersion,
    this.isLatestOsImageVersion,
    this.latestImageVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentImageVersion': ?currentImageVersion,
      'isLatestOsImageVersion': ?isLatestOsImageVersion,
      'latestImageVersion': ?latestImageVersion,
    };
  }

  factory ImageMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ImageMetadataResponse(
      currentImageVersion: map['currentImageVersion'] == null ? null : (map['currentImageVersion']! as String).input(),
      isLatestOsImageVersion: map['isLatestOsImageVersion'] == null ? null : (map['isLatestOsImageVersion']! as bool).input(),
      latestImageVersion: map['latestImageVersion'] == null ? null : (map['latestImageVersion']! as String).input(),
    );
  }
}

