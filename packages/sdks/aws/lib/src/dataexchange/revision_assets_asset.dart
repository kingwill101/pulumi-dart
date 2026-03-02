// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset_create_s3_data_access_from_s3_bucket.dart';
import 'revision_assets_asset_import_assets_from_s3.dart';
import 'revision_assets_asset_import_assets_from_signed_url.dart';

class RevisionAssetsAsset {
  /// The ARN of the Data Exchange Revision Assets.
  final pulumi.Input<String>? arn;
  /// A block to create S3 data access from an S3 bucket. See Create S3 Data Access from S3 Bucket for more details.
  final pulumi.Input<RevisionAssetsAssetCreateS3DataAccessFromS3Bucket>? createS3DataAccessFromS3Bucket;
  /// The timestamp when the revision was created, in RFC3339 format.
  final pulumi.Input<String>? createdAt;
  /// The unique identifier for the revision.
  final pulumi.Input<String>? id;
  /// A block to import assets from S3. See Import Assets from S3 for more details.
  final pulumi.Input<RevisionAssetsAssetImportAssetsFromS3>? importAssetsFromS3;
  /// A block to import assets from a signed URL. See Import Assets from Signed URL for more details.
  final pulumi.Input<RevisionAssetsAssetImportAssetsFromSignedUrl>? importAssetsFromSignedUrl;
  final pulumi.Input<String>? name;
  /// The timestamp when the revision was last updated, in RFC3339 format.
  final pulumi.Input<String>? updatedAt;

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
    return <String, dynamic>{
      'arn': ?arn,
      'createS3DataAccessFromS3Bucket': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsAssetCreateS3DataAccessFromS3Bucket, Map<String, dynamic>>(createS3DataAccessFromS3Bucket, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'id': ?id,
      'importAssetsFromS3': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsAssetImportAssetsFromS3, Map<String, dynamic>>(importAssetsFromS3, (value) => value.toMap()),
      'importAssetsFromSignedUrl': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsAssetImportAssetsFromSignedUrl, Map<String, dynamic>>(importAssetsFromSignedUrl, (value) => value.toMap()),
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory RevisionAssetsAsset.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAsset(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createS3DataAccessFromS3Bucket: map['createS3DataAccessFromS3Bucket'] == null ? null : ((RevisionAssetsAssetCreateS3DataAccessFromS3Bucket.fromMap((map['createS3DataAccessFromS3Bucket']! as Map).cast<String, dynamic>())).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      importAssetsFromS3: map['importAssetsFromS3'] == null ? null : ((RevisionAssetsAssetImportAssetsFromS3.fromMap((map['importAssetsFromS3']! as Map).cast<String, dynamic>())).input()).input(),
      importAssetsFromSignedUrl: map['importAssetsFromSignedUrl'] == null ? null : ((RevisionAssetsAssetImportAssetsFromSignedUrl.fromMap((map['importAssetsFromSignedUrl']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}

