// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset_create_s3_data_access_from_s3_bucket.dart';
import 'revision_assets_asset_import_assets_from_s3.dart';
import 'revision_assets_asset_import_assets_from_signed_url.dart';

class RevisionAssetsAsset {
  /// The ARN of the Data Exchange Revision Assets.
  final pulumi.Input<String?>? arn;
  /// A block to create S3 data access from an S3 bucket. See Create S3 Data Access from S3 Bucket for more details.
  final pulumi.Input<RevisionAssetsAssetCreateS3DataAccessFromS3Bucket?>? createS3DataAccessFromS3Bucket;
  /// The timestamp when the revision was created, in RFC3339 format.
  final pulumi.Input<String?>? createdAt;
  /// The unique identifier for the revision.
  final pulumi.Input<String?>? id;
  /// A block to import assets from S3. See Import Assets from S3 for more details.
  final pulumi.Input<RevisionAssetsAssetImportAssetsFromS3?>? importAssetsFromS3;
  /// A block to import assets from a signed URL. See Import Assets from Signed URL for more details.
  final pulumi.Input<RevisionAssetsAssetImportAssetsFromSignedUrl?>? importAssetsFromSignedUrl;
  final pulumi.Input<String?>? name;
  /// The timestamp when the revision was last updated, in RFC3339 format.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [RevisionAssetsAsset].
  /// [arn] The ARN of the Data Exchange Revision Assets.
  /// [createS3DataAccessFromS3Bucket] A block to create S3 data access from an S3 bucket. See Create S3 Data Access from S3 Bucket for more details.
  /// [createdAt] The timestamp when the revision was created, in RFC3339 format.
  /// [id] The unique identifier for the revision.
  /// [importAssetsFromS3] A block to import assets from S3. See Import Assets from S3 for more details.
  /// [importAssetsFromSignedUrl] A block to import assets from a signed URL. See Import Assets from Signed URL for more details.
  /// [name] Optional.
  /// [updatedAt] The timestamp when the revision was last updated, in RFC3339 format.
  const RevisionAssetsAsset({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createS3DataAccessFromS3Bucket: (() { final guardedValue = map['createS3DataAccessFromS3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RevisionAssetsAssetCreateS3DataAccessFromS3Bucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importAssetsFromS3: (() { final guardedValue = map['importAssetsFromS3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RevisionAssetsAssetImportAssetsFromS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importAssetsFromSignedUrl: (() { final guardedValue = map['importAssetsFromSignedUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RevisionAssetsAssetImportAssetsFromSignedUrl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
