// ignore_for_file: unused_element, unnecessary_cast


/// Returns metadata about the operating system image for this compute instance.
class ImageMetadataResponse {
  /// Specifies the current operating system image version this compute instance is running on.
  final String? currentImageVersion;
  /// Specifies whether this compute instance is running on the latest operating system image.
  final bool? isLatestOsImageVersion;
  /// Specifies the latest available operating system image version.
  final String? latestImageVersion;

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
      currentImageVersion: map['currentImageVersion'] == null ? null : map['currentImageVersion'] as String,
      isLatestOsImageVersion: map['isLatestOsImageVersion'] == null ? null : map['isLatestOsImageVersion'] as bool,
      latestImageVersion: map['latestImageVersion'] == null ? null : map['latestImageVersion'] as String,
    );
  }
}

