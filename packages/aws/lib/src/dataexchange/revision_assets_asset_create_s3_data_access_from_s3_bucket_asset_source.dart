// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset_create_s3_data_access_from_s3_bucket_asset_source_kms_keys_to_grant.dart';

class RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource {
  /// The name of the S3 bucket.
  final String bucket;

  /// List of key prefixes in the S3 bucket.
  final List<String>? keyPrefixes;

  /// List of object keys in the S3 bucket.
  final List<String>? keys;
  final List<
    RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant
  >?
  kmsKeysToGrants;

  /// Creates a new [RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource].
  /// [bucket] The name of the S3 bucket.
  /// [keyPrefixes] List of key prefixes in the S3 bucket.
  /// [keys] List of object keys in the S3 bucket.
  /// [kmsKeysToGrants] Optional.
  RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource({
    required this.bucket,
    this.keyPrefixes,
    this.keys,
    this.kmsKeysToGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'keyPrefixes': ?keyPrefixes,
      'keys': ?keys,
      'kmsKeysToGrants': ?kmsKeysToGrants == null
          ? null
          : pulumi.Input.encodeList<
              RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant,
              Map<String, dynamic>
            >(kmsKeysToGrants!, (value) => value.toMap()),
    };
  }

  factory RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource(
      bucket: map['bucket'] as String,
      keyPrefixes: map['keyPrefixes'] == null
          ? null
          : (map['keyPrefixes'] as List).cast<String>(),
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
      kmsKeysToGrants: map['kmsKeysToGrants'] == null
          ? null
          : pulumi.Input.decodeList<
              RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant
            >(
              map['kmsKeysToGrants'],
              (value) =>
                  RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSourceKmsKeysToGrant.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
