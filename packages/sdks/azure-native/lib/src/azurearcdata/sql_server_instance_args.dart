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
  SqlServerInstanceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<SqlServerInstanceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlServerInstanceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<SqlServerInstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlServerInstanceName = pulumi.Input.asOptionalInput<String>(sqlServerInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SqlServerInstanceProperties>(SqlServerInstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlServerInstanceName: map['sqlServerInstanceName'] == null ? null : pulumi.Output.create<String>(map['sqlServerInstanceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

