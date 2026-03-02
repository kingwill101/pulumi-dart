// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotImportDiskContainerUserBucket {
  /// The name of the Amazon S3 bucket where the disk image is located.
  final pulumi.Input<String> s3Bucket;
  /// The file name of the disk image.
  final pulumi.Input<String> s3Key;

  /// Creates a new [SnapshotImportDiskContainerUserBucket].
  /// [s3Bucket] The name of the Amazon S3 bucket where the disk image is located.
  /// [s3Key] The file name of the disk image.
  SnapshotImportDiskContainerUserBucket({
    required this.s3Bucket,
    required this.s3Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Bucket': s3Bucket,
      's3Key': s3Key,
    };
  }

  factory SnapshotImportDiskContainerUserBucket.fromMap(Map<String, dynamic> map) {
    return SnapshotImportDiskContainerUserBucket(
      s3Bucket: (map['s3Bucket'] as String).input(),
      s3Key: (map['s3Key'] as String).input(),
    );
  }
}

