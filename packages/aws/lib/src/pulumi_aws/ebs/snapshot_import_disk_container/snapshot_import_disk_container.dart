// ignore_for_file: unused_element, unnecessary_cast

import '../snapshot_import_disk_container_user_bucket/snapshot_import_disk_container_user_bucket.dart';

class SnapshotImportDiskContainer {
  /// The description of the disk image being imported.
  final String? description;

  /// The format of the disk image being imported. One of `VHD` or `VMDK`.
  final String format;

  /// The URL to the Amazon S3-based disk image being imported. It can either be a https URL (https://..) or an Amazon S3 URL (s3://..). One of <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span> or <span pulumi-lang-nodejs="`userBucket`" pulumi-lang-dotnet="`UserBucket`" pulumi-lang-go="`userBucket`" pulumi-lang-python="`user_bucket`" pulumi-lang-yaml="`userBucket`" pulumi-lang-java="`userBucket`">`user_bucket`</span> must be set.
  final String? url;

  /// The Amazon S3 bucket for the disk image. One of <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span> or <span pulumi-lang-nodejs="`userBucket`" pulumi-lang-dotnet="`UserBucket`" pulumi-lang-go="`userBucket`" pulumi-lang-python="`user_bucket`" pulumi-lang-yaml="`userBucket`" pulumi-lang-java="`userBucket`">`user_bucket`</span> must be set. Detailed below.
  final SnapshotImportDiskContainerUserBucket? userBucket;

  SnapshotImportDiskContainer({
    this.description,
    required this.format,
    this.url,
    this.userBucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['format'] = format;
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    final userBucketValue = userBucket;
    if (userBucketValue != null) {
      map['userBucket'] = userBucketValue.toMap();
    }
    return map;
  }

  factory SnapshotImportDiskContainer.fromMap(Map<String, dynamic> map) {
    return SnapshotImportDiskContainer(
      description:
          map['description'] == null ? null : map['description'] as String,
      format: map['format'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      userBucket: map['userBucket'] == null
          ? null
          : SnapshotImportDiskContainerUserBucket.fromMap(
              (map['userBucket'] as Map).cast<String, dynamic>()),
    );
  }
}
