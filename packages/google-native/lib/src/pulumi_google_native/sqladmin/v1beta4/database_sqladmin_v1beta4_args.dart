// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_database_details_sqladmin_v1beta4.dart';

/// The set of arguments for Database.
class DatabaseSqladminV1beta4Args {
  /// The Cloud SQL charset value.
  final pulumi.Input<String>? charset;

  /// The Cloud SQL collation value.
  final pulumi.Input<String>? collation;

  /// This field is deprecated and will be removed from a future version of the API.
  final pulumi.Input<String>? etag;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  final pulumi.Input<String> instance;

  /// This is always `sql#database`.
  final pulumi.Input<String>? kind;

  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  final pulumi.Input<String>? name;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  final pulumi.Input<String>? project;

  /// The URI of this resource.
  final pulumi.Input<String>? selfLink;
  final pulumi.Input<SqlServerDatabaseDetailsSqladminV1beta4>?
      sqlserverDatabaseDetails;

  DatabaseSqladminV1beta4Args({
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
      map['sqlserverDatabaseDetails'] = pulumi.Input.mapOptionalInputValue<
              SqlServerDatabaseDetailsSqladminV1beta4, Map<String, dynamic>>(
          sqlserverDatabaseDetailsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DatabaseSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return DatabaseSqladminV1beta4Args(
      charset: pulumi.Input.asOptionalInput<String>(map['charset']),
      collation: pulumi.Input.asOptionalInput<String>(map['collation']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      sqlserverDatabaseDetails:
          pulumi.Input.asOptionalInput<SqlServerDatabaseDetailsSqladminV1beta4>(
              map['sqlserverDatabaseDetails']),
    );
  }
}
