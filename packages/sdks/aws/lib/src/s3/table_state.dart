// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_encryption_configuration.dart';
import 'table_maintenance_configuration.dart';
import 'table_metadata.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// ARN of the table.
  final pulumi.Input<String>? arn;
  /// Date and time when the namespace was created.
  final pulumi.Input<String>? createdAt;
  /// Account ID of the account that created the namespace.
  final pulumi.Input<String>? createdBy;
  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  final pulumi.Input<TableEncryptionConfiguration>? encryptionConfiguration;
  /// Format of the table.
  /// Must be `ICEBERG`.
  final pulumi.Input<String>? format;
  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  final pulumi.Input<TableMaintenanceConfiguration>? maintenanceConfiguration;
  /// Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// See `metadata` below.
  final pulumi.Input<TableMetadata>? metadata;
  /// Location of table metadata.
  final pulumi.Input<String>? metadataLocation;
  /// Date and time when the namespace was last modified.
  final pulumi.Input<String>? modifiedAt;
  /// Account ID of the account that last modified the namespace.
  final pulumi.Input<String>? modifiedBy;
  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// A full list of table naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#naming-rules-table).
  final pulumi.Input<String>? name;
  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String>? namespace;
  /// Account ID of the account that owns the namespace.
  final pulumi.Input<String>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the Table Bucket that contains this Namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? tableBucketArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of the table.
  /// One of `customer` or `aws`.
  final pulumi.Input<String>? type;
  /// Identifier for the current version of table data.
  final pulumi.Input<String>? versionToken;
  /// S3 URI pointing to the S3 Bucket that contains the table data.
  final pulumi.Input<String>? warehouseLocation;

  /// Creates a new [TableState].
  /// [arn] ARN of the table.
  /// [createdAt] Date and time when the namespace was created.
  /// [createdBy] Account ID of the account that created the namespace.
  /// [encryptionConfiguration] A single table bucket encryption configuration object.
  /// [format] Format of the table.
  /// [maintenanceConfiguration] A single table bucket maintenance configuration object.
  /// [metadata] Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// [metadataLocation] Location of table metadata.
  /// [modifiedAt] Date and time when the namespace was last modified.
  /// [modifiedBy] Account ID of the account that last modified the namespace.
  /// [name] Name of the table.
  /// [namespace] Name of the namespace for this table.
  /// [ownerAccountId] Account ID of the account that owns the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of the table.
  /// [versionToken] Identifier for the current version of table data.
  /// [warehouseLocation] S3 URI pointing to the S3 Bucket that contains the table data.
  TableState({
    this.arn,
    this.createdAt,
    this.createdBy,
    this.encryptionConfiguration,
    this.format,
    this.maintenanceConfiguration,
    this.metadata,
    this.metadataLocation,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
    this.namespace,
    this.ownerAccountId,
    this.region,
    this.tableBucketArn,
    this.tags,
    this.tagsAll,
    this.type,
    this.versionToken,
    this.warehouseLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<TableEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'format': ?format,
      'maintenanceConfiguration': ?pulumi.Input.mapOptionalInputValue<TableMaintenanceConfiguration, Map<String, dynamic>>(maintenanceConfiguration, (value) => value.toMap()),
      'metadata': ?pulumi.Input.mapOptionalInputValue<TableMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'metadataLocation': ?metadataLocation,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
      'namespace': ?namespace,
      'ownerAccountId': ?ownerAccountId,
      'region': ?region,
      'tableBucketArn': ?tableBucketArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'versionToken': ?versionToken,
      'warehouseLocation': ?warehouseLocation,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      createdBy: map['createdBy'] == null ? null : ((map['createdBy'] as String).input()).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : ((TableEncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      format: map['format'] == null ? null : ((map['format'] as String).input()).input(),
      maintenanceConfiguration: map['maintenanceConfiguration'] == null ? null : ((TableMaintenanceConfiguration.fromMap((map['maintenanceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      metadata: map['metadata'] == null ? null : ((TableMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input()).input(),
      metadataLocation: map['metadataLocation'] == null ? null : ((map['metadataLocation'] as String).input()).input(),
      modifiedAt: map['modifiedAt'] == null ? null : ((map['modifiedAt'] as String).input()).input(),
      modifiedBy: map['modifiedBy'] == null ? null : ((map['modifiedBy'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namespace: map['namespace'] == null ? null : ((map['namespace'] as String).input()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : ((map['ownerAccountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableBucketArn: map['tableBucketArn'] == null ? null : ((map['tableBucketArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      versionToken: map['versionToken'] == null ? null : ((map['versionToken'] as String).input()).input(),
      warehouseLocation: map['warehouseLocation'] == null ? null : ((map['warehouseLocation'] as String).input()).input(),
    );
  }
}

