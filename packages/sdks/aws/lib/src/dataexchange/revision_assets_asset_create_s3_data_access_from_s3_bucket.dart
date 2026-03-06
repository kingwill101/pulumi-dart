// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset_create_s3_data_access_from_s3_bucket_asset_source.dart';

class RevisionAssetsAssetCreateS3DataAccessFromS3Bucket {
  final pulumi.Input<String>? accessPointAlias;
  final pulumi.Input<String>? accessPointArn;
  /// A block specifying the source bucket for the asset. This block supports the following:
  final pulumi.Input<RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource>? assetSource;

  /// Creates a new [RevisionAssetsAssetCreateS3DataAccessFromS3Bucket].
  /// [accessPointAlias] Optional.
  /// [accessPointArn] Optional.
  /// [assetSource] A block specifying the source bucket for the asset. This block supports the following:
  const RevisionAssetsAssetCreateS3DataAccessFromS3Bucket({
    this.accessPointAlias,
    this.accessPointArn,
    this.assetSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointAlias': ?accessPointAlias,
      'accessPointArn': ?accessPointArn,
      'assetSource': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource, Map<String, dynamic>>(assetSource, (value) => value.toMap()),
    };
  }

  factory RevisionAssetsAssetCreateS3DataAccessFromS3Bucket.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAssetCreateS3DataAccessFromS3Bucket(
      accessPointAlias: (() { final guardedValue = map['accessPointAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessPointArn: (() { final guardedValue = map['accessPointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assetSource: (() { final guardedValue = map['assetSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RevisionAssetsAssetCreateS3DataAccessFromS3BucketAssetSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

