// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_encryption_configuration.dart';
import 'table_maintenance_configuration.dart';
import 'table_metadata.dart';

/// {@template pulumi_s3_tables_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_table_table_args_doc}
class TableArgs {
  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  final pulumi.Input<TableEncryptionConfiguration>? encryptionConfiguration;

  /// Format of the table.
  /// Must be `ICEBERG`.
  final pulumi.Input<String> format;

  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  final pulumi.Input<TableMaintenanceConfiguration>? maintenanceConfiguration;

  /// Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// See `metadata` below.
  final pulumi.Input<TableMetadata>? metadata;

  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// A full list of table naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#naming-rules-table).
  final pulumi.Input<String>? name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tableBucketArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TableArgs].
  /// [encryptionConfiguration] A single table bucket encryption configuration object.
  /// [format] Format of the table.
  /// [maintenanceConfiguration] A single table bucket maintenance configuration object.
  /// [metadata] Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// [name] Name of the table.
  /// [namespace] Name of the namespace for this table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TableArgs({
    TableEncryptionConfiguration? encryptionConfiguration,
    required String format,
    TableMaintenanceConfiguration? maintenanceConfiguration,
    TableMetadata? metadata,
    String? name,
    required String namespace,
    String? region,
    required String tableBucketArn,
    Map<String, String>? tags,
  })  : encryptionConfiguration =
            pulumi.Input.asOptionalInput<TableEncryptionConfiguration>(
                encryptionConfiguration),
        format = pulumi.Input.asInput<String>(format),
        maintenanceConfiguration =
            pulumi.Input.asOptionalInput<TableMaintenanceConfiguration>(
                maintenanceConfiguration),
        metadata = pulumi.Input.asOptionalInput<TableMetadata>(metadata),
        name = pulumi.Input.asOptionalInput<String>(name),
        namespace = pulumi.Input.asInput<String>(namespace),
        region = pulumi.Input.asOptionalInput<String>(region),
        tableBucketArn = pulumi.Input.asInput<String>(tableBucketArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              TableEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    map['format'] = format;
    final maintenanceConfigurationValue = maintenanceConfiguration;
    if (maintenanceConfigurationValue != null) {
      map['maintenanceConfiguration'] = pulumi.Input.mapOptionalInputValue<
              TableMaintenanceConfiguration, Map<String, dynamic>>(
          maintenanceConfigurationValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = pulumi.Input.mapOptionalInputValue<TableMetadata,
          Map<String, dynamic>>(metadataValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namespace'] = namespace;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableBucketArn'] = tableBucketArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : TableEncryptionConfiguration.fromMap(
              (map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      format: map['format'] as String,
      maintenanceConfiguration: map['maintenanceConfiguration'] == null
          ? null
          : TableMaintenanceConfiguration.fromMap(
              (map['maintenanceConfiguration'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null
          ? null
          : TableMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tableBucketArn: map['tableBucketArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
