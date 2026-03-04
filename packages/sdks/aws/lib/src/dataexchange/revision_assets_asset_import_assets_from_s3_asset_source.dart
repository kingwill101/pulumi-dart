// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RevisionAssetsAssetImportAssetsFromS3AssetSource {
  /// The name of the S3 bucket.
  final pulumi.Input<String> bucket;

  /// The key of the object in the S3 bucket.
  final pulumi.Input<String> key;

  /// Creates a new [RevisionAssetsAssetImportAssetsFromS3AssetSource].
  /// [bucket] The name of the S3 bucket.
  /// [key] The key of the object in the S3 bucket.
  RevisionAssetsAssetImportAssetsFromS3AssetSource({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'key': key};
  }

  factory RevisionAssetsAssetImportAssetsFromS3AssetSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return RevisionAssetsAssetImportAssetsFromS3AssetSource(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
