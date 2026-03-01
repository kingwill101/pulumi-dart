// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_artifact_version_full_source.dart';
import 'gallery_data_disk_image.dart';
import 'gallery_osdisk_image.dart';

/// This is the storage profile of a Gallery Image Version.
class GalleryImageVersionStorageProfile {
  /// A list of data disk images.
  final List<GalleryDataDiskImage>? dataDiskImages;
  /// This is the OS disk image.
  final GalleryOSDiskImage? osDiskImage;
  /// The source of the gallery artifact version.
  final GalleryArtifactVersionFullSource? source;

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
      'dataDiskImages': ?dataDiskImages == null ? null : pulumi.Input.encodeList<GalleryDataDiskImage, Map<String, dynamic>>(dataDiskImages!, (value) => value.toMap()),
      'osDiskImage': ?osDiskImage == null ? null : osDiskImage!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory GalleryImageVersionStorageProfile.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionStorageProfile(
      dataDiskImages: map['dataDiskImages'] == null ? null : pulumi.Input.decodeList<GalleryDataDiskImage>(map['dataDiskImages'], (value) => GalleryDataDiskImage.fromMap((value as Map).cast<String, dynamic>())),
      osDiskImage: map['osDiskImage'] == null ? null : GalleryOSDiskImage.fromMap((map['osDiskImage'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : GalleryArtifactVersionFullSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

