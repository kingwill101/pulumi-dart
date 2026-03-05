// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_dbcollection_get_properties_response_options.dart';
import 'mongo_dbcollection_get_properties_response_resource.dart';

/// Result data returned by getMongoDBResourceMongoDBCollection.
class GetMongoDBResourceMongoDBCollectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the ARM resource.
  final String id;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the ARM resource.
  final String name;
  final MongoDBCollectionGetPropertiesResponseOptions? options;
  final MongoDBCollectionGetPropertiesResponseResource? resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetMongoDBResourceMongoDBCollectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the ARM resource.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the ARM resource.
  /// [options] Optional.
  /// [resource] Optional.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  GetMongoDBResourceMongoDBCollectionResult({
    required this.azureApiVersion,
    required this.id,
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
      'location': ?location,
      'name': name,
      'options': ?options?.toMap(),
      'resource': ?resource?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMongoDBResourceMongoDBCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetMongoDBResourceMongoDBCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return MongoDBCollectionGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return MongoDBCollectionGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

