// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_magnetic_store_write_properties/table_magnetic_store_write_properties.dart';
import '../table_retention_properties/table_retention_properties.dart';
import '../table_schema/table_schema.dart';

/// The set of arguments for Table.
class TableArgs4 {
  /// The name of the Timestream database.
  final Input<String> databaseName;

  /// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  final Input<TableMagneticStoreWriteProperties>? magneticStoreWriteProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, `magnetic_store_retention_period_in_days` default to 73000 and `memory_store_retention_period_in_hours` defaults to 6.
  final Input<TableRetentionProperties>? retentionProperties;

  /// The schema of the table. See Schema below for more details.
  final Input<TableSchema>? schema;

  /// The name of the Timestream table.
  final Input<String> tableName;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TableArgs4({
    required this.databaseName,
    this.magneticStoreWriteProperties,
    this.region,
    this.retentionProperties,
    this.schema,
    required this.tableName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    final magneticStoreWritePropertiesValue = magneticStoreWriteProperties;
    if (magneticStoreWritePropertiesValue != null) {
      map['magneticStoreWriteProperties'] = Input.mapOptionalInputValue<
              TableMagneticStoreWriteProperties, Map<String, dynamic>>(
          magneticStoreWritePropertiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPropertiesValue = retentionProperties;
    if (retentionPropertiesValue != null) {
      map['retentionProperties'] = Input.mapOptionalInputValue<
              TableRetentionProperties, Map<String, dynamic>>(
          retentionPropertiesValue, (value) => value.toMap());
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] =
          Input.mapOptionalInputValue<TableSchema, Map<String, dynamic>>(
              schemaValue, (value) => value.toMap());
    }
    map['tableName'] = tableName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TableArgs4.fromMap(Map<String, dynamic> map) {
    return TableArgs4(
      databaseName: Input.asInput<String>(map['databaseName']),
      magneticStoreWriteProperties:
          Input.asOptionalInput<TableMagneticStoreWriteProperties>(
              map['magneticStoreWriteProperties']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionProperties: Input.asOptionalInput<TableRetentionProperties>(
          map['retentionProperties']),
      schema: Input.asOptionalInput<TableSchema>(map['schema']),
      tableName: Input.asInput<String>(map['tableName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
