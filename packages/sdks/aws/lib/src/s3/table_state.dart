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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<TableEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? format,
    pulumi.Output<TableMaintenanceConfiguration>? maintenanceConfiguration,
    pulumi.Output<TableMetadata>? metadata,
    pulumi.Output<String>? metadataLocation,
    pulumi.Output<String>? modifiedAt,
    pulumi.Output<String>? modifiedBy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tableBucketArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? versionToken,
    pulumi.Output<String>? warehouseLocation,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      encryptionConfiguration = pulumi.Input.asOptionalInput<TableEncryptionConfiguration>(encryptionConfiguration),
      format = pulumi.Input.asOptionalInput<String>(format),
      maintenanceConfiguration = pulumi.Input.asOptionalInput<TableMaintenanceConfiguration>(maintenanceConfiguration),
      metadata = pulumi.Input.asOptionalInput<TableMetadata>(metadata),
      metadataLocation = pulumi.Input.asOptionalInput<String>(metadataLocation),
      modifiedAt = pulumi.Input.asOptionalInput<String>(modifiedAt),
      modifiedBy = pulumi.Input.asOptionalInput<String>(modifiedBy),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableBucketArn = pulumi.Input.asOptionalInput<String>(tableBucketArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      versionToken = pulumi.Input.asOptionalInput<String>(versionToken),
      warehouseLocation = pulumi.Input.asOptionalInput<String>(warehouseLocation);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<TableEncryptionConfiguration>(TableEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      maintenanceConfiguration: map['maintenanceConfiguration'] == null ? null : pulumi.Output.create<TableMaintenanceConfiguration>(TableMaintenanceConfiguration.fromMap((map['maintenanceConfiguration'] as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<TableMetadata>(TableMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      metadataLocation: map['metadataLocation'] == null ? null : pulumi.Output.create<String>(map['metadataLocation'] as String),
      modifiedAt: map['modifiedAt'] == null ? null : pulumi.Output.create<String>(map['modifiedAt'] as String),
      modifiedBy: map['modifiedBy'] == null ? null : pulumi.Output.create<String>(map['modifiedBy'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableBucketArn: map['tableBucketArn'] == null ? null : pulumi.Output.create<String>(map['tableBucketArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      versionToken: map['versionToken'] == null ? null : pulumi.Output.create<String>(map['versionToken'] as String),
      warehouseLocation: map['warehouseLocation'] == null ? null : pulumi.Output.create<String>(map['warehouseLocation'] as String),
    );
  }
}

