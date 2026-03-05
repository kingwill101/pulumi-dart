// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_license_properties.dart';

/// {@template pulumi_azurearcdata_sql_server_license_args_doc}
/// The set of arguments for SqlServerLicense.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_sql_server_license_args_doc}
class SqlServerLicenseArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// SQL Server license properties
  final pulumi.Input<SqlServerLicenseProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server License
  final pulumi.Input<String>? sqlServerLicenseName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlServerLicenseArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] SQL Server license properties
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerLicenseName] Name of SQL Server License
  /// [tags] Resource tags.
  SqlServerLicenseArgs({
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.sqlServerLicenseName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SqlServerLicenseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlServerLicenseName': ?sqlServerLicenseName,
      'tags': ?tags,
    };
  }

  factory SqlServerLicenseArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerLicenseArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(SqlServerLicenseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlServerLicenseName: (() { final guardedValue = map['sqlServerLicenseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

