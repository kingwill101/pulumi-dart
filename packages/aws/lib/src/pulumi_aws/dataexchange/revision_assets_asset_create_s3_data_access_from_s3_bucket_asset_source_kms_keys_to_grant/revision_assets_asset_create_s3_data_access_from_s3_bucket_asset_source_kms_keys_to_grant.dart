// ignore_for_file: unused_element, unnecessary_cast

class RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant {
  /// The ARN of the KMS key.
  final String kmsKeyArn;

  RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyArn'] = kmsKeyArn;
    return map;
  }

  factory RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant.fromMap(
      Map<String, dynamic> map) {
    return RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}
