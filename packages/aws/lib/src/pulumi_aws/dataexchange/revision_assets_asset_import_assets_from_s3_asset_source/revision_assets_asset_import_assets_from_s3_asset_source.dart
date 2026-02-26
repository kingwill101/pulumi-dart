// ignore_for_file: unused_element, unnecessary_cast

class RevisionAssetsAssetImportAssetsFromS3AssetSource {
  /// The name of the S3 bucket.
  final String bucket;

  /// The key of the object in the S3 bucket.
  final String key;

  RevisionAssetsAssetImportAssetsFromS3AssetSource({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    return map;
  }

  factory RevisionAssetsAssetImportAssetsFromS3AssetSource.fromMap(
      Map<String, dynamic> map) {
    return RevisionAssetsAssetImportAssetsFromS3AssetSource(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
    );
  }
}
