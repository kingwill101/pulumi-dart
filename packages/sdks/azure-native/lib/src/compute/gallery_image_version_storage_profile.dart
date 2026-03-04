// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_artifact_version_full_source.dart';
import 'gallery_data_disk_image.dart';
import 'gallery_osdisk_image.dart';

/// This is the storage profile of a Gallery Image Version.
class GalleryImageVersionStorageProfile {
  /// A list of data disk images.
  final pulumi.Input<List<GalleryDataDiskImage>>? dataDiskImages;

  /// This is the OS disk image.
  final pulumi.Input<GalleryOSDiskImage>? osDiskImage;

  /// The source of the gallery artifact version.
  final pulumi.Input<GalleryArtifactVersionFullSource>? source;

  /// Creates a new [GalleryImageVersionStorageProfile].
  /// [dataDiskImages] A list of data disk images.
  /// [osDiskImage] This is the OS disk image.
  /// [source] The source of the gallery artifact version.
  GalleryImageVersionStorageProfile({
    this.dataDiskImages,
    this.osDiskImage,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskImages':
          ?pulumi.Input.mapOptionalInputValue<
            List<GalleryDataDiskImage>,
            List<Map<String, dynamic>>
          >(
            dataDiskImages,
            (value) =>
                pulumi.Input.encodeList<
                  GalleryDataDiskImage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'osDiskImage':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryOSDiskImage,
            Map<String, dynamic>
          >(osDiskImage, (value) => value.toMap()),
      'source':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryArtifactVersionFullSource,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
    };
  }

  factory GalleryImageVersionStorageProfile.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionStorageProfile(
      dataDiskImages: (() {
        final guardedValue = map['dataDiskImages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GalleryDataDiskImage>(
            guardedValue,
            (value) => GalleryDataDiskImage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      osDiskImage: (() {
        final guardedValue = map['osDiskImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryOSDiskImage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryArtifactVersionFullSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
