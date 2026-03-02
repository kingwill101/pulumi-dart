// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_availability_group_resource_properties.dart';

/// {@template pulumi_azurearcdata_sql_server_availability_group_args_doc}
/// The set of arguments for SqlServerAvailabilityGroup.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_sql_server_availability_group_args_doc}
class SqlServerAvailabilityGroupArgs {
  /// Name of SQL Availability Group
  final pulumi.Input<String>? availabilityGroupName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of Arc Sql Server availability group
  final pulumi.Input<SqlServerAvailabilityGroupResourceProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Server Instance
  final pulumi.Input<String> sqlServerInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlServerAvailabilityGroupArgs].
  /// [availabilityGroupName] Name of SQL Availability Group
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Arc Sql Server availability group
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlServerInstanceName] Name of SQL Server Instance
  /// [tags] Resource tags.
  SqlServerAvailabilityGroupArgs({
    this.availabilityGroupName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    required this.sqlServerInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupName': ?availabilityGroupName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SqlServerAvailabilityGroupResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlServerInstanceName': sqlServerInstanceName,
      'tags': ?tags,
    };
  }

  factory SqlServerAvailabilityGroupArgs.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupArgs(
      availabilityGroupName: map['availabilityGroupName'] == null ? null : (map['availabilityGroupName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: (SqlServerAvailabilityGroupResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlServerInstanceName: (map['sqlServerInstanceName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

