// ignore_for_file: unused_element, unnecessary_cast

class SnapshotImportDiskContainerUserBucket {
  /// The name of the Amazon S3 bucket where the disk image is located.
  final String s3Bucket;

  /// The file name of the disk image.
  final String s3Key;

  /// Creates a new [SnapshotImportDiskContainerUserBucket].
  /// [s3Bucket] The name of the Amazon S3 bucket where the disk image is located.
  /// [s3Key] The file name of the disk image.
  SnapshotImportDiskContainerUserBucket({
    required this.s3Bucket,
    required this.s3Key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Bucket'] = s3Bucket;
    map['s3Key'] = s3Key;
    return map;
  }

  factory SnapshotImportDiskContainerUserBucket.fromMap(
      Map<String, dynamic> map) {
    return SnapshotImportDiskContainerUserBucket(
      s3Bucket: map['s3Bucket'] as String,
      s3Key: map['s3Key'] as String,
    );
  }
}
