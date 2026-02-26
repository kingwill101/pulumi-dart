// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'sql_server_database_details.dart';

/// The set of arguments for Database.
class DatabaseArgs4 {
  /// The Cloud SQL charset value.
  final Input<String>? charset;

  /// The Cloud SQL collation value.
  final Input<String>? collation;

  /// This field is deprecated and will be removed from a future version of the API.
  final Input<String>? etag;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  final Input<String> instance;

  /// This is always `sql#database`.
  final Input<String>? kind;

  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  final Input<String>? name;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  final Input<String>? project;

  /// The URI of this resource.
  final Input<String>? selfLink;
  final Input<SqlServerDatabaseDetails>? sqlserverDatabaseDetails;

  DatabaseArgs4({
    this.charset,
    this.collation,
    this.etag,
    required this.instance,
    this.kind,
    this.name,
    this.project,
    this.selfLink,
    this.sqlserverDatabaseDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final charsetValue = charset;
    if (charsetValue != null) {
      map['charset'] = charsetValue;
    }
    final collationValue = collation;
    if (collationValue != null) {
      map['collation'] = collationValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['instance'] = instance;
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final sqlserverDatabaseDetailsValue = sqlserverDatabaseDetails;
    if (sqlserverDatabaseDetailsValue != null) {
      map['sqlserverDatabaseDetails'] = Input.mapOptionalInputValue<
              SqlServerDatabaseDetails, Map<String, dynamic>>(
          sqlserverDatabaseDetailsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DatabaseArgs4.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs4(
      charset: Input.asOptionalInput<String>(map['charset']),
      collation: Input.asOptionalInput<String>(map['collation']),
      etag: Input.asOptionalInput<String>(map['etag']),
      instance: Input.asInput<String>(map['instance']),
      kind: Input.asOptionalInput<String>(map['kind']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
      sqlserverDatabaseDetails: Input.asOptionalInput<SqlServerDatabaseDetails>(
          map['sqlserverDatabaseDetails']),
    );
  }
}
