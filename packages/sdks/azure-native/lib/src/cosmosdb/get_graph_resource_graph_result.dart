// ignore_for_file: unused_element, unnecessary_cast

import 'graph_resource_get_properties_response_options.dart';
import 'graph_resource_get_properties_response_resource.dart';
import 'managed_service_identity_response.dart';

/// Result data returned by getGraphResourceGraph.
class GetGraphResourceGraphResult {
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
  final GraphResourceGetPropertiesResponseOptions? options;
  final GraphResourceGetPropertiesResponseResource? resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetGraphResourceGraphResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the ARM resource.
  /// [identity] Identity for the resource.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the ARM resource.
  /// [options] Optional.
  /// [resource] Optional.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  GetGraphResourceGraphResult({
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
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'options': ?options?.toMap(),
      'resource': ?resource?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGraphResourceGraphResult.fromMap(Map<String, dynamic> map) {
    return GetGraphResourceGraphResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return GraphResourceGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return GraphResourceGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

