// ignore_for_file: unused_element, unnecessary_cast


class RevisionAssetsAssetImportAssetsFromS3AssetSource {
  /// The name of the S3 bucket.
  final String bucket;
  /// The key of the object in the S3 bucket.
  final String key;

  /// Creates a new [RevisionAssetsAssetImportAssetsFromS3AssetSource].
  /// [bucket] The name of the S3 bucket.
  /// [key] The key of the object in the S3 bucket.
  RevisionAssetsAssetImportAssetsFromS3AssetSource({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
    };
  }

  factory RevisionAssetsAssetImportAssetsFromS3AssetSource.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAssetImportAssetsFromS3AssetSource(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}

