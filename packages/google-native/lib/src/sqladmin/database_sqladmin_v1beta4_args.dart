// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_database_details_sqladmin_v1beta4.dart';

/// {@template pulumi_sqladmin_v1beta4_database_sqladmin_v1beta4_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_database_sqladmin_v1beta4_args_doc}
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

  /// Creates a new [DatabaseSqladminV1beta4Args].
  /// [charset] The Cloud SQL charset value.
  /// [collation] The Cloud SQL collation value.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID.
  /// [kind] This is always `sql#database`.
  /// [name] The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.
  /// [selfLink] The URI of this resource.
  /// [sqlserverDatabaseDetails] Optional.
  DatabaseSqladminV1beta4Args({
    String? charset,
    String? collation,
    String? etag,
    required String instance,
    String? kind,
    String? name,
    String? project,
    String? selfLink,
    SqlServerDatabaseDetailsSqladminV1beta4? sqlserverDatabaseDetails,
  })  : charset = pulumi.Input.asOptionalInput<String>(charset),
        collation = pulumi.Input.asOptionalInput<String>(collation),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        instance = pulumi.Input.asInput<String>(instance),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
        sqlserverDatabaseDetails = pulumi.Input.asOptionalInput<
            SqlServerDatabaseDetailsSqladminV1beta4>(sqlserverDatabaseDetails);

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
      charset: map['charset'] == null ? null : map['charset'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      sqlserverDatabaseDetails: map['sqlserverDatabaseDetails'] == null
          ? null
          : SqlServerDatabaseDetailsSqladminV1beta4.fromMap(
              (map['sqlserverDatabaseDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
