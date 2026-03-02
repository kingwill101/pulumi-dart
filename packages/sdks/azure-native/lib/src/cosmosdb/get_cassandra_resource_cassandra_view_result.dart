// ignore_for_file: unused_element, unnecessary_cast

import 'cassandra_view_get_properties_response_options.dart';
import 'cassandra_view_get_properties_response_resource.dart';
import 'managed_service_identity_response.dart';

/// Result data returned by getCassandraResourceCassandraView.
class GetCassandraResourceCassandraViewResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the ARM resource.
  final String id;
  /// Identity for the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the ARM resource.
  final String name;
  final CassandraViewGetPropertiesResponseOptions? options;
  final CassandraViewGetPropertiesResponseResource? resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetCassandraResourceCassandraViewResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the ARM resource.
  /// [identity] Identity for the resource.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the ARM resource.
  /// [options] Optional.
  /// [resource] Optional.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  GetCassandraResourceCassandraViewResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    this.options,
    this.resource,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'options': ?options == null ? null : options!.toMap(),
      'resource': ?resource == null ? null : resource!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCassandraResourceCassandraViewResult.fromMap(Map<String, dynamic> map) {
    return GetCassandraResourceCassandraViewResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      options: map['options'] == null ? null : CassandraViewGetPropertiesResponseOptions.fromMap((map['options']! as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : CassandraViewGetPropertiesResponseResource.fromMap((map['resource']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

