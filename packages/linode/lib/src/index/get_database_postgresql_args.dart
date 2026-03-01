// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_postgresql_get_database_postgresql_args_doc}
/// Arguments for getDatabasePostgresql.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_postgresql_get_database_postgresql_args_doc}
class GetDatabasePostgresqlArgs {
  /// The ID of the PostgreSQL database. Deprecated: Use id instead.
  final pulumi.Input<int>? databaseId;
  /// The ID of the PostgreSQL database. Mutually exclusive with `database_id`.
  final pulumi.Input<int>? id;

  /// Creates a new [GetDatabasePostgresqlArgs].
  /// [databaseId] The ID of the PostgreSQL database. Deprecated: Use id instead.
  /// [id] The ID of the PostgreSQL database. Mutually exclusive with `database_id`.
  GetDatabasePostgresqlArgs({
    int? databaseId,
    int? id,
  }) :
      databaseId = pulumi.Input.asOptionalInput<int>(databaseId),
      id = pulumi.Input.asOptionalInput<int>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': ?databaseId,
      'id': ?id,
    };
  }

  factory GetDatabasePostgresqlArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlArgs(
      databaseId: map['databaseId'] == null ? null : map['databaseId'] as int,
      id: map['id'] == null ? null : map['id'] as int,
    );
  }
}

