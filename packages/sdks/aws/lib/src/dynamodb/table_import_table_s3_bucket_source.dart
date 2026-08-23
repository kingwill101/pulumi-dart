// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableImportTableS3BucketSource {
  /// The S3 bucket that is being imported from.
  final pulumi.Input<String> bucket;
  /// The account number of the S3 bucket that is being imported from.
  final pulumi.Input<String>? bucketOwner;
  /// The key prefix shared by all S3 Objects that are being imported.
  final pulumi.Input<String>? keyPrefix;

  /// Creates a new [TableImportTableS3BucketSource].
  /// [bucket] The S3 bucket that is being imported from.
  /// [bucketOwner] The account number of the S3 bucket that is being imported from.
  /// [keyPrefix] The key prefix shared by all S3 Objects that are being imported.
  const TableImportTableS3BucketSource({
    required this.bucket,
    this.bucketOwner,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketOwner': ?bucketOwner,
      'keyPrefix': ?keyPrefix,
    };
  }

  factory TableImportTableS3BucketSource.fromMap(Map<String, dynamic> map) {
    return TableImportTableS3BucketSource(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketOwner: (() { final guardedValue = map['bucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPrefix: (() { final guardedValue = map['keyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
