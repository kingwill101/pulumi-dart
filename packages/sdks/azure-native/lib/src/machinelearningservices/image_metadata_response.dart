// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'os_patching_status_response.dart';

/// Returns metadata about the operating system image for this compute instance.
class ImageMetadataResponse {
  /// Specifies the current operating system image version this compute instance is running on.
  final pulumi.Input<String>? currentImageVersion;
  /// Specifies whether this compute instance is running on the latest operating system image.
  final pulumi.Input<bool>? isLatestOsImageVersion;
  /// Specifies the latest available operating system image version.
  final pulumi.Input<String>? latestImageVersion;
  /// Metadata about the os patching.
  final pulumi.Input<OsPatchingStatusResponse> osPatchingStatus;

  /// Creates a new [ImageMetadataResponse].
  /// [currentImageVersion] Specifies the current operating system image version this compute instance is running on.
  /// [isLatestOsImageVersion] Specifies whether this compute instance is running on the latest operating system image.
  /// [latestImageVersion] Specifies the latest available operating system image version.
  /// [osPatchingStatus] Metadata about the os patching.
  const ImageMetadataResponse({
    this.currentImageVersion,
    this.isLatestOsImageVersion,
    this.latestImageVersion,
    required this.osPatchingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentImageVersion': ?currentImageVersion,
      'isLatestOsImageVersion': ?isLatestOsImageVersion,
      'latestImageVersion': ?latestImageVersion,
      'osPatchingStatus': pulumi.Input.mapInputValue<OsPatchingStatusResponse, Map<String, dynamic>>(osPatchingStatus, (value) => value.toMap()),
    };
  }

  factory ImageMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ImageMetadataResponse(
      currentImageVersion: (() { final guardedValue = map['currentImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isLatestOsImageVersion: (() { final guardedValue = map['isLatestOsImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latestImageVersion: (() { final guardedValue = map['latestImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osPatchingStatus: pulumi.Input.fromValue(OsPatchingStatusResponse.fromMap((map['osPatchingStatus']! as Map).cast<String, dynamic>())),
    );
  }
}
