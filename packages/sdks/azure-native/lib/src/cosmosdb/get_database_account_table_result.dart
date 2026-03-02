// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseAccountTable.
class GetDatabaseAccountTableResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the database account.
  final String id;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// The name of the database account.
  final String name;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetDatabaseAccountTableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the database account.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  GetDatabaseAccountTableResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDatabaseAccountTableResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountTableResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

