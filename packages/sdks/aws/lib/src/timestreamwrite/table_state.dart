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
  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magnetic_store_retention_period_in_days` default to 73000 and `memory_store_retention_period_in_hours` defaults to 6.
  final pulumi.Input<TableRetentionProperties>? retentionProperties;
  /// The schema of the table. See Schema below for more details.
  final pulumi.Input<TableSchema>? schema;
  /// The name of the Timestream table.
  final pulumi.Input<String>? tableName;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TableState].
  /// [arn] The ARN that uniquely identifies this table.
  /// [databaseName] The name of the Timestream database.
  /// [magneticStoreWriteProperties] Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionProperties] The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magnetic_store_retention_period_in_days` default to 73000 and `memory_store_retention_period_in_hours` defaults to 6.
  /// [schema] The schema of the table. See Schema below for more details.
  /// [tableName] The name of the Timestream table.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TableState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      magneticStoreWriteProperties: map['magneticStoreWriteProperties'] == null ? null : ((TableMagneticStoreWriteProperties.fromMap((map['magneticStoreWriteProperties']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      retentionProperties: map['retentionProperties'] == null ? null : ((TableRetentionProperties.fromMap((map['retentionProperties']! as Map).cast<String, dynamic>())).input()).input(),
      schema: map['schema'] == null ? null : ((TableSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input()).input(),
      tableName: map['tableName'] == null ? null : ((map['tableName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

