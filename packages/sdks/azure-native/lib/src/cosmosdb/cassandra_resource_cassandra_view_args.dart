// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_view_resource.dart';
import 'create_update_options.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_cosmosdb_cassandra_resource_cassandra_view_args_doc}
/// The set of arguments for CassandraResourceCassandraView.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_resource_cassandra_view_args_doc}
class CassandraResourceCassandraViewArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;

  /// Identity for the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// Cosmos DB keyspace name.
  final pulumi.Input<String> keyspaceName;

  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;

  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions>? options;

  /// The standard JSON format of a Cassandra view
  final pulumi.Input<CassandraViewResource> resource;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Cosmos DB view name.
  final pulumi.Input<String>? viewName;

  /// Creates a new [CassandraResourceCassandraViewArgs].
  /// [accountName] Cosmos DB database account name.
  /// [identity] Identity for the resource.
  /// [keyspaceName] Cosmos DB keyspace name.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Cassandra view
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [viewName] Cosmos DB view name.
  CassandraResourceCassandraViewArgs({
    required this.accountName,
    this.identity,
    required this.keyspaceName,
    this.location,
    this.options,
    required this.resource,
    required this.resourceGroupName,
    this.tags,
    this.viewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyspaceName': keyspaceName,
      'location': ?location,
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            CreateUpdateOptions,
            Map<String, dynamic>
          >(options, (value) => value.toMap()),
      'resource':
          pulumi.Input.mapInputValue<
            CassandraViewResource,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'viewName': ?viewName,
    };
  }

  factory CassandraResourceCassandraViewArgs.fromMap(Map<String, dynamic> map) {
    return CassandraResourceCassandraViewArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyspaceName: pulumi.Input.fromValue(map['keyspaceName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CreateUpdateOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resource: pulumi.Input.fromValue(
        CassandraViewResource.fromMap(
          (map['resource']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      viewName: (() {
        final guardedValue = map['viewName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
