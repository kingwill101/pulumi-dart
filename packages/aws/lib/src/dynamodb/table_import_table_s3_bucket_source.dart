// ignore_for_file: unused_element, unnecessary_cast

class TableImportTableS3BucketSource {
  /// The S3 bucket that is being imported from.
  final String bucket;

  /// The account number of the S3 bucket that is being imported from.
  final String? bucketOwner;

  /// The key prefix shared by all S3 Objects that are being imported.
  final String? keyPrefix;

  /// Creates a new [TableImportTableS3BucketSource].
  /// [bucket] The S3 bucket that is being imported from.
  /// [bucketOwner] The account number of the S3 bucket that is being imported from.
  /// [keyPrefix] The key prefix shared by all S3 Objects that are being imported.
  TableImportTableS3BucketSource({
    required this.bucket,
    this.bucketOwner,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final bucketOwnerValue = bucketOwner;
    if (bucketOwnerValue != null) {
      map['bucketOwner'] = bucketOwnerValue;
    }
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    return map;
  }

  factory TableImportTableS3BucketSource.fromMap(Map<String, dynamic> map) {
    return TableImportTableS3BucketSource(
      bucket: map['bucket'] as String,
      bucketOwner:
          map['bucketOwner'] == null ? null : map['bucketOwner'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
    );
  }
}
