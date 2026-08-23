// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_instance_properties.dart';

/// {@template pulumi_azurearcdata_sql_server_instance_args_doc}
/// The set of arguments for SqlServerInstance.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_sql_server_instance_args_doc}
class SqlServerInstanceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// null
  final pulumi.Input<SqlServerInstanceProperties>? properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String>? sqlServerInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlServerInstanceArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] null
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  /// [tags] Resource tags.
  const SqlServerInstanceArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.sqlServerInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SqlServerInstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': ?sqlServerInstanceName,
      'tags': ?tags,
    };
  }

  factory SqlServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerInstanceArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerInstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerInstanceName: (() { final guardedValue = map['sqlServerInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
