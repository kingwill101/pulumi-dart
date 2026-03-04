// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_osdisk_image_response.dart';

/// This is the storage profile of a Gallery Image Version.
class GalleryImageVersionStorageProfileResponse {
  /// This is the OS disk image.
  final pulumi.Input<GalleryOSDiskImageResponse>? osDiskImage;

  /// Creates a new [GalleryImageVersionStorageProfileResponse].
  /// [osDiskImage] This is the OS disk image.
  GalleryImageVersionStorageProfileResponse({this.osDiskImage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDiskImage':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryOSDiskImageResponse,
            Map<String, dynamic>
          >(osDiskImage, (value) => value.toMap()),
    };
  }

  factory GalleryImageVersionStorageProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GalleryImageVersionStorageProfileResponse(
      osDiskImage: (() {
        final guardedValue = map['osDiskImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryOSDiskImageResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
