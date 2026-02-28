// ignore_for_file: unused_element, unnecessary_cast

import 'revision_assets_asset_create_s3_data_access_from_s3_bucket.dart';
import 'revision_assets_asset_import_assets_from_s3.dart';
import 'revision_assets_asset_import_assets_from_signed_url.dart';

class RevisionAssetsAsset {
  /// The ARN of the Data Exchange Revision Assets.
  final String? arn;

  /// A block to create S3 data access from an S3 bucket. See Create S3 Data Access from S3 Bucket for more details.
  final RevisionAssetsAssetCreateS3DataAccessFromS3Bucket?
      createS3DataAccessFromS3Bucket;

  /// The timestamp when the revision was created, in RFC3339 format.
  final String? createdAt;

  /// The unique identifier for the revision.
  final String? id;

  /// A block to import assets from S3. See Import Assets from S3 for more details.
  final RevisionAssetsAssetImportAssetsFromS3? importAssetsFromS3;

  /// A block to import assets from a signed URL. See Import Assets from Signed URL for more details.
  final RevisionAssetsAssetImportAssetsFromSignedUrl? importAssetsFromSignedUrl;
  final String? name;

  /// The timestamp when the revision was last updated, in RFC3339 format.
  final String? updatedAt;

  /// Creates a new [RevisionAssetsAsset].
  /// [arn] The ARN of the Data Exchange Revision Assets.
  /// [createS3DataAccessFromS3Bucket] A block to create S3 data access from an S3 bucket. See Create S3 Data Access from S3 Bucket for more details.
  /// [createdAt] The timestamp when the revision was created, in RFC3339 format.
  /// [id] The unique identifier for the revision.
  /// [importAssetsFromS3] A block to import assets from S3. See Import Assets from S3 for more details.
  /// [importAssetsFromSignedUrl] A block to import assets from a signed URL. See Import Assets from Signed URL for more details.
  /// [name] Optional.
  /// [updatedAt] The timestamp when the revision was last updated, in RFC3339 format.
  RevisionAssetsAsset({
    this.arn,
    this.createS3DataAccessFromS3Bucket,
    this.createdAt,
    this.id,
    this.importAssetsFromS3,
    this.importAssetsFromSignedUrl,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final createS3DataAccessFromS3BucketValue = createS3DataAccessFromS3Bucket;
    if (createS3DataAccessFromS3BucketValue != null) {
      map['createS3DataAccessFromS3Bucket'] =
          createS3DataAccessFromS3BucketValue.toMap();
    }
    final createdAtValue = createdAt;
    if (createdAtValue != null) {
      map['createdAt'] = createdAtValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final importAssetsFromS3Value = importAssetsFromS3;
    if (importAssetsFromS3Value != null) {
      map['importAssetsFromS3'] = importAssetsFromS3Value.toMap();
    }
    final importAssetsFromSignedUrlValue = importAssetsFromSignedUrl;
    if (importAssetsFromSignedUrlValue != null) {
      map['importAssetsFromSignedUrl'] = importAssetsFromSignedUrlValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final updatedAtValue = updatedAt;
    if (updatedAtValue != null) {
      map['updatedAt'] = updatedAtValue;
    }
    return map;
  }

  factory RevisionAssetsAsset.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAsset(
      arn: map['arn'] == null ? null : map['arn'] as String,
      createS3DataAccessFromS3Bucket:
          map['createS3DataAccessFromS3Bucket'] == null
              ? null
              : RevisionAssetsAssetCreateS3DataAccessFromS3Bucket.fromMap(
                  (map['createS3DataAccessFromS3Bucket'] as Map)
                      .cast<String, dynamic>()),
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      importAssetsFromS3: map['importAssetsFromS3'] == null
          ? null
          : RevisionAssetsAssetImportAssetsFromS3.fromMap(
              (map['importAssetsFromS3'] as Map).cast<String, dynamic>()),
      importAssetsFromSignedUrl: map['importAssetsFromSignedUrl'] == null
          ? null
          : RevisionAssetsAssetImportAssetsFromSignedUrl.fromMap(
              (map['importAssetsFromSignedUrl'] as Map)
                  .cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
    );
  }
}
