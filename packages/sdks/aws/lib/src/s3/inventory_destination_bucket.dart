// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_destination_bucket_encryption.dart';

class InventoryDestinationBucket {
  /// ID of the account that owns the destination bucket. Recommended to be set to prevent problems if the destination bucket ownership changes.
  final pulumi.Input<String>? accountId;

  /// Amazon S3 bucket ARN of the destination.
  final pulumi.Input<String> bucketArn;

  /// Contains the type of server-side encryption to use to encrypt the inventory (documented below).
  final pulumi.Input<InventoryDestinationBucketEncryption>? encryption;

  /// Specifies the output format of the inventory results. Can be `CSV`, [`ORC`](https://orc.apache.org/) or [`Parquet`](https://parquet.apache.org/).
  final pulumi.Input<String> format;

  /// Prefix that is prepended to all inventory results.
  final pulumi.Input<String>? prefix;

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
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            InventoryDestinationBucketEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'format': format,
      'prefix': ?prefix,
    };
  }

  factory InventoryDestinationBucket.fromMap(Map<String, dynamic> map) {
    return InventoryDestinationBucket(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InventoryDestinationBucketEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
