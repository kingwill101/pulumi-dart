// ignore_for_file: unused_element, unnecessary_cast

import 'revision_assets_asset_create_s3_data_access_from_s3_bucket_asset_source.dart';

class RevisionAssetsAssetCreateS3DataAccessFromS3Bucket {
  final String? accessPointAlias;
  final String? accessPointArn;

  /// A block specifying the source bucket for the asset. This block supports the following:
  final RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource?
      assetSource;

  /// Creates a new [RevisionAssetsAssetCreateS3DataAccessFromS3Bucket].
  /// [accessPointAlias] Optional.
  /// [accessPointArn] Optional.
  /// [assetSource] A block specifying the source bucket for the asset. This block supports the following:
  RevisionAssetsAssetCreateS3DataAccessFromS3Bucket({
    this.accessPointAlias,
    this.accessPointArn,
    this.assetSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessPointAliasValue = accessPointAlias;
    if (accessPointAliasValue != null) {
      map['accessPointAlias'] = accessPointAliasValue;
    }
    final accessPointArnValue = accessPointArn;
    if (accessPointArnValue != null) {
      map['accessPointArn'] = accessPointArnValue;
    }
    final assetSourceValue = assetSource;
    if (assetSourceValue != null) {
      map['assetSource'] = assetSourceValue.toMap();
    }
    return map;
  }

  factory RevisionAssetsAssetCreateS3DataAccessFromS3Bucket.fromMap(
      Map<String, dynamic> map) {
    return RevisionAssetsAssetCreateS3DataAccessFromS3Bucket(
      accessPointAlias: map['accessPointAlias'] == null
          ? null
          : map['accessPointAlias'] as String,
      accessPointArn: map['accessPointArn'] == null
          ? null
          : map['accessPointArn'] as String,
      assetSource: map['assetSource'] == null
          ? null
          : RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource
              .fromMap((map['assetSource'] as Map).cast<String, dynamic>()),
    );
  }
}
