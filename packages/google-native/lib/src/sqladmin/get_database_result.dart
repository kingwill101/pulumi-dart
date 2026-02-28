// ignore_for_file: unused_element, unnecessary_cast

import 'sql_server_database_details_response.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The Cloud SQL charset value.
  final String charset;

  /// The Cloud SQL collation value.
  final String collation;

  /// This field is deprecated and will be removed from a future version of the API.
  final String etag;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  final String instance;

  /// This is always `sql#database`.
  final String kind;

  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  final String name;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  final String project;

  /// The URI of this resource.
  final String selfLink;
  final SqlServerDatabaseDetailsResponse sqlserverDatabaseDetails;

  /// Creates a new [GetDatabaseResult].
  /// [charset] The Cloud SQL charset value.
  /// [collation] The Cloud SQL collation value.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID.
  /// [kind] This is always `sql#database`.
  /// [name] The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  /// [selfLink] The URI of this resource.
  /// [sqlserverDatabaseDetails] Required.
  GetDatabaseResult({
    required this.charset,
    required this.collation,
    required this.etag,
    required this.instance,
    required this.kind,
    required this.name,
    required this.project,
    required this.selfLink,
    required this.sqlserverDatabaseDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['charset'] = charset;
    map['collation'] = collation;
    map['etag'] = etag;
    map['instance'] = instance;
    map['kind'] = kind;
    map['name'] = name;
    map['project'] = project;
    map['selfLink'] = selfLink;
    map['sqlserverDatabaseDetails'] = sqlserverDatabaseDetails.toMap();
    return map;
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      charset: map['charset'] as String,
      collation: map['collation'] as String,
      etag: map['etag'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      sqlserverDatabaseDetails: SqlServerDatabaseDetailsResponse.fromMap(
          (map['sqlserverDatabaseDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
