// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseAccountSqlDatabase.
class GetDatabaseAccountSqlDatabaseResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A system generated property that specified the addressable path of the collections resource.
  final String? colls;
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
  /// A system generated property that specifies the addressable path of the users resource.
  final String? users;

  /// Creates a new [GetDatabaseAccountSqlDatabaseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [colls] A system generated property that specified the addressable path of the collections resource.
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] The unique resource identifier of the database account.
  /// [location] The location of the resource group to which the resource belongs.
  /// [name] The name of the database account.
  /// [rid] A system generated property. A unique identifier.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [type] The type of Azure resource.
  /// [users] A system generated property that specifies the addressable path of the users resource.
  GetDatabaseAccountSqlDatabaseResult({
    required this.azureApiVersion,
    this.colls,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    this.rid,
    this.tags,
    this.ts,
    required this.type,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'colls': ?colls,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'rid': ?rid,
      'tags': ?tags,
      'ts': ?ts,
      'type': type,
      'users': ?users,
    };
  }

  factory GetDatabaseAccountSqlDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountSqlDatabaseResult(
      azureApiVersion: map['azureApiVersion'] as String,
      colls: map['colls'] == null ? null : map['colls'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      rid: map['rid'] == null ? null : map['rid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      ts: map['ts'] == null ? null : map['ts'],
      type: map['type'] as String,
      users: map['users'] == null ? null : map['users'] as String,
    );
  }
}

