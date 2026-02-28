// ignore_for_file: unused_element, unnecessary_cast

import 'inventory_destination_bucket_encryption.dart';

class InventoryDestinationBucket {
  /// ID of the account that owns the destination bucket. Recommended to be set to prevent problems if the destination bucket ownership changes.
  final String? accountId;
  /// Amazon S3 bucket ARN of the destination.
  final String bucketArn;
  /// Contains the type of server-side encryption to use to encrypt the inventory (documented below).
  final InventoryDestinationBucketEncryption? encryption;
  /// Specifies the output format of the inventory results. Can be `CSV`, [`ORC`](https://orc.apache.org/) or [`Parquet`](https://parquet.apache.org/).
  final String format;
  /// Prefix that is prepended to all inventory results.
  final String? prefix;

  /// Creates a new [InventoryDestinationBucket].
  /// [accountId] ID of the account that owns the destination bucket. Recommended to be set to prevent problems if the destination bucket ownership changes.
  /// [bucketArn] Amazon S3 bucket ARN of the destination.
  /// [encryption] Contains the type of server-side encryption to use to encrypt the inventory (documented below).
  /// [format] Specifies the output format of the inventory results. Can be `CSV`, [`ORC`](https://orc.apache.org/) or [`Parquet`](https://parquet.apache.org/).
  /// [prefix] Prefix that is prepended to all inventory results.
  InventoryDestinationBucket({
    this.accountId,
    required this.bucketArn,
    this.encryption,
    required this.format,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketArn': bucketArn,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'format': format,
      'prefix': ?prefix,
    };
  }

  factory InventoryDestinationBucket.fromMap(Map<String, dynamic> map) {
    return InventoryDestinationBucket(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      bucketArn: map['bucketArn'] as String,
      encryption: map['encryption'] == null ? null : InventoryDestinationBucketEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      format: map['format'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

