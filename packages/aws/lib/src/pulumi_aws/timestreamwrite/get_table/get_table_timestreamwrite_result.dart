// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_magnetic_store_write_property/get_table_magnetic_store_write_property.dart';
import '../get_table_retention_property/get_table_retention_property.dart';
import '../get_table_schema/get_table_schema.dart';

/// Result data returned by getTable.
class GetTableTimestreamwriteResult {
  /// ARN that uniquely identifies the table.
  final String arn;

  /// Time that table was created.
  final String creationTime;

  /// Name of database.
  final String databaseName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last time table was updated.
  final String lastUpdatedTime;

  /// Object containing the following attributes to desribe magnetic store writes.
  final List<GetTableMagneticStoreWriteProperty> magneticStoreWriteProperties;

  /// Name of the table.
  final String name;
  final String region;

  /// Object containing the following attributes to describe the retention duration for the memory and magnetic stores.
  final List<GetTableRetentionProperty> retentionProperties;

  /// Object containing the following attributes to describe the schema of the table.
  final List<GetTableSchema> schemas;

  /// Current state of table.
  final String tableStatus;

  GetTableTimestreamwriteResult({
    required this.arn,
    required this.creationTime,
    required this.databaseName,
    required this.id,
    required this.lastUpdatedTime,
    required this.magneticStoreWriteProperties,
    required this.name,
    required this.region,
    required this.retentionProperties,
    required this.schemas,
    required this.tableStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['creationTime'] = creationTime;
    map['databaseName'] = databaseName;
    map['id'] = id;
    map['lastUpdatedTime'] = lastUpdatedTime;
    map['magneticStoreWriteProperties'] = pulumi.Input.encodeList<
            GetTableMagneticStoreWriteProperty, Map<String, dynamic>>(
        magneticStoreWriteProperties, (value) => value.toMap());
    map['name'] = name;
    map['region'] = region;
    map['retentionProperties'] = pulumi.Input.encodeList<
        GetTableRetentionProperty,
        Map<String, dynamic>>(retentionProperties, (value) => value.toMap());
    map['schemas'] =
        pulumi.Input.encodeList<GetTableSchema, Map<String, dynamic>>(
            schemas, (value) => value.toMap());
    map['tableStatus'] = tableStatus;
    return map;
  }

  factory GetTableTimestreamwriteResult.fromMap(Map<String, dynamic> map) {
    return GetTableTimestreamwriteResult(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      databaseName: map['databaseName'] as String,
      id: map['id'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      magneticStoreWriteProperties:
          pulumi.Input.decodeList<GetTableMagneticStoreWriteProperty>(
              map['magneticStoreWriteProperties'],
              (value) => GetTableMagneticStoreWriteProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      region: map['region'] as String,
      retentionProperties: pulumi.Input.decodeList<GetTableRetentionProperty>(
          map['retentionProperties'],
          (value) => GetTableRetentionProperty.fromMap(
              (value as Map).cast<String, dynamic>())),
      schemas: pulumi.Input.decodeList<GetTableSchema>(
          map['schemas'],
          (value) =>
              GetTableSchema.fromMap((value as Map).cast<String, dynamic>())),
      tableStatus: map['tableStatus'] as String,
    );
  }
}
