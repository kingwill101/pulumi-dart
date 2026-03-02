// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_esu_license_properties.dart';

/// {@template pulumi_azurearcdata_sql_server_esu_license_args_doc}
/// The set of arguments for SqlServerEsuLicense.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_sql_server_esu_license_args_doc}
class SqlServerEsuLicenseArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// SQL Server ESU license properties
  final pulumi.Input<SqlServerEsuLicenseProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server ESU License
  final pulumi.Input<String>? sqlServerEsuLicenseName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlServerEsuLicenseArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] SQL Server ESU license properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlServerEsuLicenseName] Name of SQL Server ESU License
  /// [tags] Resource tags.
  SqlServerEsuLicenseArgs({
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.sqlServerEsuLicenseName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SqlServerEsuLicenseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlServerEsuLicenseName': ?sqlServerEsuLicenseName,
      'tags': ?tags,
    };
  }

  factory SqlServerEsuLicenseArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerEsuLicenseArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: (SqlServerEsuLicenseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlServerEsuLicenseName: map['sqlServerEsuLicenseName'] == null ? null : (map['sqlServerEsuLicenseName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

