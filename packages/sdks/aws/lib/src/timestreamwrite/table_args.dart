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
  final pulumi.Input<TableMagneticStoreWriteProperties>? magneticStoreWriteProperties;
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
    required pulumi.Output<String> databaseName,
    pulumi.Output<TableMagneticStoreWriteProperties>? magneticStoreWriteProperties,
    pulumi.Output<String>? region,
    pulumi.Output<TableRetentionProperties>? retentionProperties,
    pulumi.Output<TableSchema>? schema,
    required pulumi.Output<String> tableName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      magneticStoreWriteProperties = pulumi.Input.asOptionalInput<TableMagneticStoreWriteProperties>(magneticStoreWriteProperties),
      region = pulumi.Input.asOptionalInput<String>(region),
      retentionProperties = pulumi.Input.asOptionalInput<TableRetentionProperties>(retentionProperties),
      schema = pulumi.Input.asOptionalInput<TableSchema>(schema),
      tableName = pulumi.Input.asInput<String>(tableName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'magneticStoreWriteProperties': ?pulumi.Input.mapOptionalInputValue<TableMagneticStoreWriteProperties, Map<String, dynamic>>(magneticStoreWriteProperties, (value) => value.toMap()),
      'region': ?region,
      'retentionProperties': ?pulumi.Input.mapOptionalInputValue<TableRetentionProperties, Map<String, dynamic>>(retentionProperties, (value) => value.toMap()),
      'schema': ?pulumi.Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableName': tableName,
      'tags': ?tags,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      magneticStoreWriteProperties: map['magneticStoreWriteProperties'] == null ? null : pulumi.Output.create<TableMagneticStoreWriteProperties>(TableMagneticStoreWriteProperties.fromMap((map['magneticStoreWriteProperties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retentionProperties: map['retentionProperties'] == null ? null : pulumi.Output.create<TableRetentionProperties>(TableRetentionProperties.fromMap((map['retentionProperties'] as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : pulumi.Output.create<TableSchema>(TableSchema.fromMap((map['schema'] as Map).cast<String, dynamic>())),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

