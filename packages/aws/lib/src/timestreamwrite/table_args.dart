// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_magnetic_store_write_properties.dart';
import 'table_retention_properties.dart';
import 'table_schema.dart';

/// {@template pulumi_timestreamwrite_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_timestreamwrite_table_table_args_doc}
class TableArgs {
  /// The name of the Timestream database.
  final pulumi.Input<String> databaseName;

  /// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  final pulumi.Input<TableMagneticStoreWriteProperties>?
      magneticStoreWriteProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magnetic_store_retention_period_in_days` default to 73000 and `memory_store_retention_period_in_hours` defaults to 6.
  final pulumi.Input<TableRetentionProperties>? retentionProperties;

  /// The schema of the table. See Schema below for more details.
  final pulumi.Input<TableSchema>? schema;

  /// The name of the Timestream table.
  final pulumi.Input<String> tableName;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TableArgs].
  /// [databaseName] The name of the Timestream database.
  /// [magneticStoreWriteProperties] Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionProperties] The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magnetic_store_retention_period_in_days` default to 73000 and `memory_store_retention_period_in_hours` defaults to 6.
  /// [schema] The schema of the table. See Schema below for more details.
  /// [tableName] The name of the Timestream table.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TableArgs({
    required String databaseName,
    TableMagneticStoreWriteProperties? magneticStoreWriteProperties,
    String? region,
    TableRetentionProperties? retentionProperties,
    TableSchema? schema,
    required String tableName,
    Map<String, String>? tags,
  })  : databaseName = pulumi.Input.asInput<String>(databaseName),
        magneticStoreWriteProperties =
            pulumi.Input.asOptionalInput<TableMagneticStoreWriteProperties>(
                magneticStoreWriteProperties),
        region = pulumi.Input.asOptionalInput<String>(region),
        retentionProperties =
            pulumi.Input.asOptionalInput<TableRetentionProperties>(
                retentionProperties),
        schema = pulumi.Input.asOptionalInput<TableSchema>(schema),
        tableName = pulumi.Input.asInput<String>(tableName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    final magneticStoreWritePropertiesValue = magneticStoreWriteProperties;
    if (magneticStoreWritePropertiesValue != null) {
      map['magneticStoreWriteProperties'] = pulumi.Input.mapOptionalInputValue<
              TableMagneticStoreWriteProperties, Map<String, dynamic>>(
          magneticStoreWritePropertiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPropertiesValue = retentionProperties;
    if (retentionPropertiesValue != null) {
      map['retentionProperties'] = pulumi.Input.mapOptionalInputValue<
              TableRetentionProperties, Map<String, dynamic>>(
          retentionPropertiesValue, (value) => value.toMap());
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] =
          pulumi.Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(
              schemaValue, (value) => value.toMap());
    }
    map['tableName'] = tableName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      databaseName: map['databaseName'] as String,
      magneticStoreWriteProperties: map['magneticStoreWriteProperties'] == null
          ? null
          : TableMagneticStoreWriteProperties.fromMap(
              (map['magneticStoreWriteProperties'] as Map)
                  .cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      retentionProperties: map['retentionProperties'] == null
          ? null
          : TableRetentionProperties.fromMap(
              (map['retentionProperties'] as Map).cast<String, dynamic>()),
      schema: map['schema'] == null
          ? null
          : TableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
