// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_service_replication_instance_properties.dart';

/// {@template pulumi_awsconnector_database_migration_service_replication_instance_args_doc}
/// The set of arguments for DatabaseMigrationServiceReplicationInstance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_database_migration_service_replication_instance_args_doc}
class DatabaseMigrationServiceReplicationInstanceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of DatabaseMigrationServiceReplicationInstance
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DatabaseMigrationServiceReplicationInstanceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DatabaseMigrationServiceReplicationInstanceArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of DatabaseMigrationServiceReplicationInstance
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DatabaseMigrationServiceReplicationInstanceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<DatabaseMigrationServiceReplicationInstanceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<DatabaseMigrationServiceReplicationInstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<DatabaseMigrationServiceReplicationInstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DatabaseMigrationServiceReplicationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationServiceReplicationInstanceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DatabaseMigrationServiceReplicationInstanceProperties>(DatabaseMigrationServiceReplicationInstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

