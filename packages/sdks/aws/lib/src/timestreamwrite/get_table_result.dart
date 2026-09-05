// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_magnetic_store_write_property.dart';
import 'get_table_retention_property.dart';
import 'get_table_schema.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// ARN that uniquely identifies the table.
  final String? arn;
  /// Time that table was created.
  final String? creationTime;
  /// Name of database.
  final String? databaseName;
  /// Last time table was updated.
  final String? lastUpdatedTime;
  /// Object containing the following attributes to desribe magnetic store writes.
  final List<GetTableMagneticStoreWriteProperty>? magneticStoreWriteProperties;
  /// Name of the table.
  final String? name;
  final String? region;
  /// Object containing the following attributes to describe the retention duration for the memory and magnetic stores.
  final List<GetTableRetentionProperty>? retentionProperties;
  /// Object containing the following attributes to describe the schema of the table.
  final List<GetTableSchema>? schemas;
  /// Current state of table.
  final String? tableStatus;

  /// Creates a new [GetTableResult].
  /// [arn] ARN that uniquely identifies the table.
  /// [creationTime] Time that table was created.
  /// [databaseName] Name of database.
  /// [lastUpdatedTime] Last time table was updated.
  /// [magneticStoreWriteProperties] Object containing the following attributes to desribe magnetic store writes.
  /// [name] Name of the table.
  /// [region] Optional.
  /// [retentionProperties] Object containing the following attributes to describe the retention duration for the memory and magnetic stores.
  /// [schemas] Object containing the following attributes to describe the schema of the table.
  /// [tableStatus] Current state of table.
  const GetTableResult({
    this.arn,
    this.creationTime,
    this.databaseName,
    this.lastUpdatedTime,
    this.magneticStoreWriteProperties,
    this.name,
    this.region,
    this.retentionProperties,
    this.schemas,
    this.tableStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'databaseName': ?databaseName,
      'lastUpdatedTime': ?lastUpdatedTime,
      'magneticStoreWriteProperties': ?(() { final guardedValue = magneticStoreWriteProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableMagneticStoreWriteProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'retentionProperties': ?(() { final guardedValue = retentionProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableRetentionProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'schemas': ?(() { final guardedValue = schemas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTableSchema, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tableStatus': ?tableStatus,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      magneticStoreWriteProperties: (() { final guardedValue = map['magneticStoreWriteProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableMagneticStoreWriteProperty>(guardedValue, (value) => GetTableMagneticStoreWriteProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionProperties: (() { final guardedValue = map['retentionProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableRetentionProperty>(guardedValue, (value) => GetTableRetentionProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTableSchema>(guardedValue, (value) => GetTableSchema.fromMap((value as Map).cast<String, dynamic>())); })(),
      tableStatus: (() { final guardedValue = map['tableStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
