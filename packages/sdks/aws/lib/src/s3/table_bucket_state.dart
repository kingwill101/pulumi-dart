// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_encryption_configuration.dart';
import 'table_bucket_maintenance_configuration.dart';

/// Input properties used for looking up and filtering TableBucket resources.
class TableBucketState {
  /// ARN of the table bucket.
  final pulumi.Input<String>? arn;
  /// Date and time when the bucket was created.
  final pulumi.Input<String>? createdAt;
  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  final pulumi.Input<TableBucketEncryptionConfiguration>? encryptionConfiguration;
  /// Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;
  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  final pulumi.Input<TableBucketMaintenanceConfiguration>? maintenanceConfiguration;
  /// Name of the table bucket.
  /// Must be between 3 and 63 characters in length.
  /// Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number.
  /// A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Account ID of the account that owns the table bucket.
  final pulumi.Input<String>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TableBucketState].
  /// [arn] ARN of the table bucket.
  /// [createdAt] Date and time when the bucket was created.
  /// [encryptionConfiguration] A single table bucket encryption configuration object.
  /// [forceDestroy] Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [maintenanceConfiguration] A single table bucket maintenance configuration object.
  /// [name] Name of the table bucket.
  /// [ownerAccountId] Account ID of the account that owns the table bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TableBucketState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<TableBucketEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<TableBucketMaintenanceConfiguration>? maintenanceConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      encryptionConfiguration = pulumi.Input.asOptionalInput<TableBucketEncryptionConfiguration>(encryptionConfiguration),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      maintenanceConfiguration = pulumi.Input.asOptionalInput<TableBucketMaintenanceConfiguration>(maintenanceConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<TableBucketEncryptionConfiguration>(TableBucketEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      maintenanceConfiguration: map['maintenanceConfiguration'] == null ? null : pulumi.Output.create<TableBucketMaintenanceConfiguration>(TableBucketMaintenanceConfiguration.fromMap((map['maintenanceConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

