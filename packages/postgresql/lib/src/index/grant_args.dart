// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_grant_grant_args_doc}
/// The set of arguments for Grant.
/// {@endtemplate}
/// {@macro pulumi_index_grant_grant_args_doc}
class GrantArgs {
  /// The columns upon which to grant the privileges. Required when `object_type` is `column`. You cannot specify this option if the `object_type` is not `column`.
  final pulumi.Input<List<String>>? columns;
  /// The database to grant privileges on for this role.
  final pulumi.Input<String> database;
  /// The PostgreSQL object type to grant the privileges on (one of: database, schema, table, sequence, function, procedure, routine, foreign_data_wrapper, foreign_server, column).
  final pulumi.Input<String> objectType;
  /// The objects upon which to grant the privileges. An empty list (the default) means to grant permissions on *all* objects of the specified type. You cannot specify this option if the `object_type` is `database` or `schema`. When `object_type` is `column`, only one value is allowed.
  final pulumi.Input<List<String>>? objects;
  /// The list of privileges to grant. There are different kinds of privileges: SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER, CREATE, CONNECT, TEMPORARY, EXECUTE, and USAGE. An empty list could be provided to revoke all privileges for this role.
  final pulumi.Input<List<String>> privileges;
  /// The name of the role to grant privileges on, Set it to "public" for all roles.
  final pulumi.Input<String> role;
  /// The database schema to grant privileges on for this role (Required except if object_type is "database")
  final pulumi.Input<String>? schema;
  /// Whether the recipient of these privileges can grant the same privileges to others. Defaults to false.
  final pulumi.Input<bool>? withGrantOption;

  /// Creates a new [GrantArgs].
  /// [columns] The columns upon which to grant the privileges. Required when `object_type` is `column`. You cannot specify this option if the `object_type` is not `column`.
  /// [database] The database to grant privileges on for this role.
  /// [objectType] The PostgreSQL object type to grant the privileges on (one of: database, schema, table, sequence, function, procedure, routine, foreign_data_wrapper, foreign_server, column).
  /// [objects] The objects upon which to grant the privileges. An empty list (the default) means to grant permissions on *all* objects of the specified type. You cannot specify this option if the `object_type` is `database` or `schema`. When `object_type` is `column`, only one value is allowed.
  /// [privileges] The list of privileges to grant. There are different kinds of privileges: SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER, CREATE, CONNECT, TEMPORARY, EXECUTE, and USAGE. An empty list could be provided to revoke all privileges for this role.
  /// [role] The name of the role to grant privileges on, Set it to "public" for all roles.
  /// [schema] The database schema to grant privileges on for this role (Required except if object_type is "database")
  /// [withGrantOption] Whether the recipient of these privileges can grant the same privileges to others. Defaults to false.
  GrantArgs({
    List<String>? columns,
    required String database,
    required String objectType,
    List<String>? objects,
    required List<String> privileges,
    required String role,
    String? schema,
    bool? withGrantOption,
  }) :
      columns = pulumi.Input.asOptionalInput<List<String>>(columns),
      database = pulumi.Input.asInput<String>(database),
      objectType = pulumi.Input.asInput<String>(objectType),
      objects = pulumi.Input.asOptionalInput<List<String>>(objects),
      privileges = pulumi.Input.asInput<List<String>>(privileges),
      role = pulumi.Input.asInput<String>(role),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      withGrantOption = pulumi.Input.asOptionalInput<bool>(withGrantOption);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'database': database,
      'objectType': objectType,
      'objects': ?objects,
      'privileges': privileges,
      'role': role,
      'schema': ?schema,
      'withGrantOption': ?withGrantOption,
    };
  }

  factory GrantArgs.fromMap(Map<String, dynamic> map) {
    return GrantArgs(
      columns: map['columns'] == null ? null : (map['columns'] as List).cast<String>(),
      database: map['database'] as String,
      objectType: map['objectType'] as String,
      objects: map['objects'] == null ? null : (map['objects'] as List).cast<String>(),
      privileges: (map['privileges'] as List).cast<String>(),
      role: map['role'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      withGrantOption: map['withGrantOption'] == null ? null : map['withGrantOption'] as bool,
    );
  }
}

