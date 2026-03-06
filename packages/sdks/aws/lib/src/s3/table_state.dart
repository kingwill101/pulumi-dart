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
  const TableState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfiguration: (() { final guardedValue = map['maintenanceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableMaintenanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataLocation: (() { final guardedValue = map['metadataLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableBucketArn: (() { final guardedValue = map['tableBucketArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionToken: (() { final guardedValue = map['versionToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warehouseLocation: (() { final guardedValue = map['warehouseLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

