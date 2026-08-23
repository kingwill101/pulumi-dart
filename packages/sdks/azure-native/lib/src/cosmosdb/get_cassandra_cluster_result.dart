// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_resource_response_properties.dart';
import 'managed_cassandra_managed_service_identity_response.dart';

/// Result data returned by getCassandraCluster.
class GetCassandraClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the ARM resource.
  final String id;
  /// Identity for the resource.
  final ManagedCassandraManagedServiceIdentityResponse? identity;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the ARM resource.
  final String name;
  /// Properties of a managed Cassandra cluster.
  final ClusterResourceResponseProperties properties;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetCassandraClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the ARM resource.
  /// [identity] Identity for the resource.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the ARM resource.
  /// [properties] Properties of a managed Cassandra cluster.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  const GetCassandraClusterResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCassandraClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCassandraClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedCassandraManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: ClusterResourceResponseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
