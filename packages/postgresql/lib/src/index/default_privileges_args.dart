// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_default_privileges_default_privileges_args_doc}
/// The set of arguments for DefaultPrivileges.
/// {@endtemplate}
/// {@macro pulumi_index_default_privileges_default_privileges_args_doc}
class DefaultPrivilegesArgs {
  /// The database to grant default privileges for this role.
  final pulumi.Input<String> database;
  /// The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  final pulumi.Input<String> objectType;
  /// Specifies the role that creates objects for which the default privileges will be applied.
  final pulumi.Input<String> owner;
  /// List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  final pulumi.Input<List<String>> privileges;
  /// The role that will automatically be granted the specified privileges on new objects created by the owner.
  final pulumi.Input<String> role;
  /// The database schema to set default privileges for this role.
  final pulumi.Input<String>? schema;
  /// Permit the grant recipient to grant it to others
  final pulumi.Input<bool>? withGrantOption;

  /// Creates a new [DefaultPrivilegesArgs].
  /// [database] The database to grant default privileges for this role.
  /// [objectType] The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  /// [owner] Specifies the role that creates objects for which the default privileges will be applied.
  /// [privileges] List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  /// [role] The role that will automatically be granted the specified privileges on new objects created by the owner.
  /// [schema] The database schema to set default privileges for this role.
  /// [withGrantOption] Permit the grant recipient to grant it to others
  DefaultPrivilegesArgs({
    required String database,
    required String objectType,
    required String owner,
    required List<String> privileges,
    required String role,
    String? schema,
    bool? withGrantOption,
  }) :
      database = pulumi.Input.asInput<String>(database),
      objectType = pulumi.Input.asInput<String>(objectType),
      owner = pulumi.Input.asInput<String>(owner),
      privileges = pulumi.Input.asInput<List<String>>(privileges),
      role = pulumi.Input.asInput<String>(role),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      withGrantOption = pulumi.Input.asOptionalInput<bool>(withGrantOption);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'objectType': objectType,
      'owner': owner,
      'privileges': privileges,
      'role': role,
      'schema': ?schema,
      'withGrantOption': ?withGrantOption,
    };
  }

  factory DefaultPrivilegesArgs.fromMap(Map<String, dynamic> map) {
    return DefaultPrivilegesArgs(
      database: map['database'] as String,
      objectType: map['objectType'] as String,
      owner: map['owner'] as String,
      privileges: (map['privileges'] as List).cast<String>(),
      role: map['role'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      withGrantOption: map['withGrantOption'] == null ? null : map['withGrantOption'] as bool,
    );
  }
}

