// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_magnetic_store_write_properties.dart';
import 'table_retention_properties.dart';
import 'table_schema.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// The ARN that uniquely identifies this table.
  final pulumi.Input<String>? arn;
  /// The name of the Timestream database.
  final pulumi.Input<String>? databaseName;
  /// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  final pulumi.Input<TableMagneticStoreWriteProperties>? magneticStoreWriteProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magneticStoreRetentionPeriodInDays` default to 73000 and `memoryStoreRetentionPeriodInHours` defaults to 6.
  final pulumi.Input<TableRetentionProperties>? retentionProperties;
  /// The schema of the table. See Schema below for more details.
  final pulumi.Input<TableSchema>? schema;
  /// The name of the Timestream table.
  final pulumi.Input<String>? tableName;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TableState].
  /// [arn] The ARN that uniquely identifies this table.
  /// [databaseName] The name of the Timestream database.
  /// [magneticStoreWriteProperties] Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionProperties] The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magneticStoreRetentionPeriodInDays` default to 73000 and `memoryStoreRetentionPeriodInHours` defaults to 6.
  /// [schema] The schema of the table. See Schema below for more details.
  /// [tableName] The name of the Timestream table.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
