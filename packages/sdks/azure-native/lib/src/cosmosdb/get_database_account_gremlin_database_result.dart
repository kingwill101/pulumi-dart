// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseAccountGremlinDatabase.
class GetDatabaseAccountGremlinDatabaseResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String? etag;
  /// The unique resource identifier of the database account.
  final String id;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the database account.
  final String name;
  /// A system generated property. A unique identifier.
  final String? rid;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final dynamic ts;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetDatabaseAccountGremlinDatabaseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] The unique resource identifier of the database account.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the database account.
  /// [rid] A system generated property. A unique identifier.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [type] The type of Azure resource.
  const GetDatabaseAccountGremlinDatabaseResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    this.rid,
    this.tags,
    this.ts,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'rid': ?rid,
      'tags': ?tags,
      'ts': ?ts,
      'type': type,
    };
  }

  factory GetDatabaseAccountGremlinDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountGremlinDatabaseResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      rid: (() { final guardedValue = map['rid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ts: (() { final guardedValue = map['ts']; if (guardedValue == null) return null; return guardedValue; })(),
      type: map['type'] as String,
    );
  }
}
