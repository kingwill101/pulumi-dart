// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_import_disk_container_user_bucket.dart';

class SnapshotImportDiskContainer {
  /// The description of the disk image being imported.
  final pulumi.Input<String>? description;
  /// The format of the disk image being imported. One of `VHD` or `VMDK`.
  final pulumi.Input<String> format;
  /// The URL to the Amazon S3-based disk image being imported. It can either be a https URL (https://..) or an Amazon S3 URL (s3://..). One of `url` or `user_bucket` must be set.
  final pulumi.Input<String>? url;
  /// The Amazon S3 bucket for the disk image. One of `url` or `user_bucket` must be set. Detailed below.
  final pulumi.Input<SnapshotImportDiskContainerUserBucket>? userBucket;

  /// Creates a new [SnapshotImportDiskContainer].
  /// [description] The description of the disk image being imported.
  /// [format] The format of the disk image being imported. One of `VHD` or `VMDK`.
  /// [url] The URL to the Amazon S3-based disk image being imported. It can either be a https URL (https://..) or an Amazon S3 URL (s3://..). One of `url` or `user_bucket` must be set.
  /// [userBucket] The Amazon S3 bucket for the disk image. One of `url` or `user_bucket` must be set. Detailed below.
  SnapshotImportDiskContainer({
    this.description,
    required this.format,
    this.url,
    this.userBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'format': format,
      'url': ?url,
      'userBucket': ?pulumi.Input.mapOptionalInputValue<SnapshotImportDiskContainerUserBucket, Map<String, dynamic>>(userBucket, (value) => value.toMap()),
    };
  }

  factory SnapshotImportDiskContainer.fromMap(Map<String, dynamic> map) {
    return SnapshotImportDiskContainer(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      format: (map['format'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
      userBucket: map['userBucket'] == null ? null : (SnapshotImportDiskContainerUserBucket.fromMap((map['userBucket'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

