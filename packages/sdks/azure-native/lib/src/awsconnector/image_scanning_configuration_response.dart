// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ImageScanningConfiguration
class ImageScanningConfigurationResponse {
  /// The setting that determines whether images are scanned after being pushed to a repository. If set to ``true``, images will be scanned after being pushed. If this parameter is not specified, it will default to ``false`` and images will not be scanned unless a scan is manually started. The setting that determines whether images are scanned after being pushed to a repository.
  final bool? scanOnPush;

  /// Creates a new [ImageScanningConfigurationResponse].
  /// [scanOnPush] The setting that determines whether images are scanned after being pushed to a repository. If set to ``true``, images will be scanned after being pushed. If this parameter is not specified, it will default to ``false`` and images will not be scanned unless a scan is manually started. The setting that determines whether images are scanned after being pushed to a repository.
  ImageScanningConfigurationResponse({
    this.scanOnPush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scanOnPush': ?scanOnPush,
    };
  }

  factory ImageScanningConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ImageScanningConfigurationResponse(
      scanOnPush: map['scanOnPush'] == null ? null : map['scanOnPush'] as bool,
    );
  }
}

