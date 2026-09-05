// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_encryption_configuration.dart';
import 'table_bucket_maintenance_configuration.dart';

/// Input properties used for looking up and filtering TableBucket resources.
class TableBucketState {
  /// ARN of the table bucket.
  final pulumi.Input<String?>? arn;
  /// Date and time when the bucket was created.
  final pulumi.Input<String?>? createdAt;
  /// Encryption configuration for the table bucket. See `encryptionConfiguration` below.
  final pulumi.Input<TableBucketEncryptionConfiguration?>? encryptionConfiguration;
  /// Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool?>? forceDestroy;
  /// Maintenance configuration for the table bucket. See `maintenanceConfiguration` below.
  final pulumi.Input<TableBucketMaintenanceConfiguration?>? maintenanceConfiguration;
  /// Name of the table bucket. Must be between 3 and 63 characters in length. Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number. A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Account ID of the account that owns the table bucket.
  final pulumi.Input<String?>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [TableBucketState].
  /// [arn] ARN of the table bucket.
  /// [createdAt] Date and time when the bucket was created.
  /// [encryptionConfiguration] Encryption configuration for the table bucket. See `encryptionConfiguration` below.
  /// [forceDestroy] Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [maintenanceConfiguration] Maintenance configuration for the table bucket. See `maintenanceConfiguration` below.
  /// [name] Name of the table bucket. Must be between 3 and 63 characters in length. Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number. A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  /// [ownerAccountId] Account ID of the account that owns the table bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const TableBucketState({
    this.arn,
    this.createdAt,
    this.encryptionConfiguration,
    this.forceDestroy,
    this.maintenanceConfiguration,
    this.name,
    this.ownerAccountId,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<TableBucketEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'maintenanceConfiguration': ?pulumi.Input.mapOptionalInputValue<TableBucketMaintenanceConfiguration, Map<String, dynamic>>(maintenanceConfiguration, (value) => value.toMap()),
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TableBucketState.fromMap(Map<String, dynamic> map) {
    return TableBucketState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableBucketEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maintenanceConfiguration: (() { final guardedValue = map['maintenanceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableBucketMaintenanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
