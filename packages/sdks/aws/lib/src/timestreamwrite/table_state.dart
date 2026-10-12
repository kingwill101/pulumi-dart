// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_magnetic_store_write_properties.dart';
import 'table_retention_properties.dart';
import 'table_schema.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// ARN that uniquely identifies this table.
  final pulumi.Input<String?>? arn;
  /// Name of the Timestream database.
  final pulumi.Input<String?>? databaseName;
  /// Properties to set on the table when enabling magnetic store writes. See `magneticStoreWriteProperties` Block below for more details.
  final pulumi.Input<TableMagneticStoreWriteProperties?>? magneticStoreWriteProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Retention duration for the memory store and magnetic store. See `retentionProperties` Block below for more details. If not provided, `magneticStoreRetentionPeriodInDays` defaults to 73000 and `memoryStoreRetentionPeriodInHours` defaults to 6.
  final pulumi.Input<TableRetentionProperties?>? retentionProperties;
  /// Schema of the table. See `schema` Block below for more details.
  final pulumi.Input<TableSchema?>? schema;
  /// Name of the Timestream table.
  final pulumi.Input<String?>? tableName;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [TableState].
  /// [arn] ARN that uniquely identifies this table.
  /// [databaseName] Name of the Timestream database.
  /// [magneticStoreWriteProperties] Properties to set on the table when enabling magnetic store writes. See `magneticStoreWriteProperties` Block below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionProperties] Retention duration for the memory store and magnetic store. See `retentionProperties` Block below for more details. If not provided, `magneticStoreRetentionPeriodInDays` defaults to 73000 and `memoryStoreRetentionPeriodInHours` defaults to 6.
  /// [schema] Schema of the table. See `schema` Block below for more details.
  /// [tableName] Name of the Timestream table.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const TableState({
    this.arn,
    this.databaseName,
    this.magneticStoreWriteProperties,
    this.region,
    this.retentionProperties,
    this.schema,
    this.tableName,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'databaseName': ?databaseName,
      'magneticStoreWriteProperties': ?pulumi.Input.mapOptionalInputValue<TableMagneticStoreWriteProperties, Map<String, dynamic>>(magneticStoreWriteProperties, (value) => value.toMap()),
      'region': ?region,
      'retentionProperties': ?pulumi.Input.mapOptionalInputValue<TableRetentionProperties, Map<String, dynamic>>(retentionProperties, (value) => value.toMap()),
      'schema': ?pulumi.Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableName': ?tableName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      magneticStoreWriteProperties: (() { final guardedValue = map['magneticStoreWriteProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableMagneticStoreWriteProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionProperties: (() { final guardedValue = map['retentionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableRetentionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
