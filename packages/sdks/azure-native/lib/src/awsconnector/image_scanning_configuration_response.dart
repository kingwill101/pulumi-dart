// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ImageScanningConfiguration
class ImageScanningConfigurationResponse {
  /// The setting that determines whether images are scanned after being pushed to a repository. If set to ``true``, images will be scanned after being pushed. If this parameter is not specified, it will default to ``false`` and images will not be scanned unless a scan is manually started. The setting that determines whether images are scanned after being pushed to a repository.
  final pulumi.Input<bool>? scanOnPush;

  /// Creates a new [ImageScanningConfigurationResponse].
  /// [scanOnPush] The setting that determines whether images are scanned after being pushed to a repository. If set to ``true``, images will be scanned after being pushed. If this parameter is not specified, it will default to ``false`` and images will not be scanned unless a scan is manually started. The setting that determines whether images are scanned after being pushed to a repository.
  const ImageScanningConfigurationResponse({
    this.scanOnPush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scanOnPush': ?scanOnPush,
    };
  }

  factory ImageScanningConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ImageScanningConfigurationResponse(
      scanOnPush: (() { final guardedValue = map['scanOnPush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
