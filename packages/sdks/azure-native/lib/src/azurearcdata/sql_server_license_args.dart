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
    pulumi.Output<String>? location,
    required pulumi.Output<SqlServerLicenseProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlServerLicenseName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<SqlServerLicenseProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerLicenseName = pulumi.Input.asOptionalInput<String>(sqlServerLicenseName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<SqlServerLicenseProperties>(SqlServerLicenseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerLicenseName: map['sqlServerLicenseName'] == null ? null : pulumi.Output.create<String>(map['sqlServerLicenseName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

