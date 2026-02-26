// ignore_for_file: unused_element, unnecessary_cast

import 'image_raw_disk_container_type3.dart';

/// The parameters of the raw disk image.
class ImageRawDisk3 {
  /// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
  final ImageRawDiskContainerType3? containerType;

  /// [Deprecated] This field is deprecated. An optional SHA1 checksum of the disk image before unpackaging provided by the client when the disk image is created.
  final String? sha1Checksum;

  /// The full Google Cloud Storage URL where the raw disk image archive is stored. The following are valid formats for the URL: - https://storage.googleapis.com/bucket_name/image_archive_name - https://storage.googleapis.com/bucket_name/folder_name/ image_archive_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final String? source;

  ImageRawDisk3({
    this.containerType,
    this.sha1Checksum,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerTypeValue = containerType;
    if (containerTypeValue != null) {
      map['containerType'] = containerTypeValue.value;
    }
    final sha1ChecksumValue = sha1Checksum;
    if (sha1ChecksumValue != null) {
      map['sha1Checksum'] = sha1ChecksumValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory ImageRawDisk3.fromMap(Map<String, dynamic> map) {
    return ImageRawDisk3(
      containerType: map['containerType'] == null
          ? null
          : ImageRawDiskContainerType3.fromValue(
              map['containerType'] as String),
      sha1Checksum:
          map['sha1Checksum'] == null ? null : map['sha1Checksum'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
