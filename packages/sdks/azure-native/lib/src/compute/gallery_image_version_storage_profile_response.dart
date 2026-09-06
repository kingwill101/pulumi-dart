// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_artifact_version_full_source_response.dart';
import 'gallery_data_disk_image_response.dart';
import 'gallery_osdisk_image_response.dart';

/// This is the storage profile of a Gallery Image Version.
class GalleryImageVersionStorageProfileResponse {
  /// A list of data disk images.
  final pulumi.Input<List<GalleryDataDiskImageResponse>?>? dataDiskImages;
  /// This is the OS disk image.
  final pulumi.Input<GalleryOSDiskImageResponse?>? osDiskImage;
  /// The source of the gallery artifact version.
  final pulumi.Input<GalleryArtifactVersionFullSourceResponse?>? source;

  /// Creates a new [GalleryImageVersionStorageProfileResponse].
  /// [dataDiskImages] A list of data disk images.
  /// [osDiskImage] This is the OS disk image.
  /// [source] The source of the gallery artifact version.
  const GalleryImageVersionStorageProfileResponse({
    this.dataDiskImages,
    this.osDiskImage,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskImages': ?pulumi.Input.mapOptionalInputValue<List<GalleryDataDiskImageResponse>, List<Map<String, dynamic>>>(dataDiskImages, (value) => pulumi.Input.encodeList<GalleryDataDiskImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskImage': ?pulumi.Input.mapOptionalInputValue<GalleryOSDiskImageResponse, Map<String, dynamic>>(osDiskImage, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<GalleryArtifactVersionFullSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GalleryImageVersionStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionStorageProfileResponse(
      dataDiskImages: (() { final guardedValue = map['dataDiskImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GalleryDataDiskImageResponse>(guardedValue, (value) => GalleryDataDiskImageResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osDiskImage: (() { final guardedValue = map['osDiskImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryOSDiskImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryArtifactVersionFullSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
