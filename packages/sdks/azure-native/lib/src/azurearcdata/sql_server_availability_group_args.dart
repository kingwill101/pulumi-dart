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
    pulumi.Output<String>? availabilityGroupName,
    pulumi.Output<String>? location,
    required pulumi.Output<SqlServerAvailabilityGroupResourceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlServerInstanceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      availabilityGroupName = pulumi.Input.asOptionalInput<String>(availabilityGroupName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<SqlServerAvailabilityGroupResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asInput<String>(sqlServerInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      availabilityGroupName: map['availabilityGroupName'] == null ? null : pulumi.Output.create<String>(map['availabilityGroupName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<SqlServerAvailabilityGroupResourceProperties>(SqlServerAvailabilityGroupResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerInstanceName: pulumi.Output.create<String>(map['sqlServerInstanceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

