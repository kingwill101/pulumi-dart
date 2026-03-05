// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant {
  /// The ARN of the KMS key.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant].
  /// [kmsKeyArn] The ARN of the KMS key.
  RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}

