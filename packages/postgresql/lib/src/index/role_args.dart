// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_index_role_role_args_doc}
class RoleArgs {
  /// Defines the role to switch to at login via [`SET ROLE`](https://www.postgresql.org/docs/current/sql-set-role.html).
  final pulumi.Input<String>? assumeRole;
  /// Defines whether a role bypasses every
  /// row-level security (RLS) policy.  Default value is `false`.
  final pulumi.Input<bool>? bypassRowLevelSecurity;
  /// If this role can log in, this specifies how
  /// many concurrent connections the role can establish. `-1` (the default) means no
  /// limit.
  final pulumi.Input<int>? connectionLimit;
  /// Defines a role's ability to execute `CREATE
  /// DATABASE`.  Default value is `false`.
  final pulumi.Input<bool>? createDatabase;
  /// Defines a role's ability to execute `CREATE ROLE`.
  /// A role with this privilege can also alter and drop other roles.  Default value
  /// is `false`.
  final pulumi.Input<bool>? createRole;
  final pulumi.Input<String>? encrypted;
  /// Defines whether the password is stored
  /// encrypted in the system catalogs.  Default value is `true`.  NOTE: this value
  /// is always set (to the conservative and safe value), but may interfere with the
  /// behavior of
  /// [PostgreSQL's `password_encryption` setting](https://www.postgresql.org/docs/current/static/runtime-config-connection.html#GUC-PASSWORD-ENCRYPTION).
  final pulumi.Input<bool>? encryptedPassword;
  /// Terminate any session with an open transaction that has been idle for longer than the specified duration in milliseconds
  final pulumi.Input<int>? idleInTransactionSessionTimeout;
  /// Defines whether a role "inherits" the privileges of
  /// roles it is a member of.  Default value is `true`.
  final pulumi.Input<bool>? inherit;
  /// Defines whether role is allowed to log in.  Roles without
  /// this attribute are useful for managing database privileges, but are not users
  /// in the usual sense of the word.  Default value is `false`.
  final pulumi.Input<bool>? login;
  /// The name of the role. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  final pulumi.Input<String>? name;
  /// Sets the role's password. A password is only of use
  /// for roles having the `login` attribute set to true.
  final pulumi.Input<String>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Sets the role's password without storing it in the state file.
  /// This is useful for managing passwords securely. Must be used together with `password_wo_version`.
  /// Conflicts with `password`.
  final pulumi.Input<String>? passwordWo;
  /// Prevents applies from updating the role password on every
  /// apply unless the value changes. This version string should be updated whenever you want to
  /// change the password specified in `password_wo`. Must be used together with `password_wo`.
  /// Conflicts with `password`.
  final pulumi.Input<String>? passwordWoVersion;
  /// Defines whether a role is allowed to initiate
  /// streaming replication or put the system in and out of backup mode.  Default
  /// value is `false`
  final pulumi.Input<bool>? replication;
  /// Defines list of roles which will be granted to this new role.
  final pulumi.Input<List<String>>? roles;
  /// Alters the search path of this new role. Note that
  /// due to limitations in the implementation, values cannot contain the substring
  /// `", "`.
  final pulumi.Input<List<String>>? searchPaths;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, the
  /// [cleanup of ownership of objects](https://www.postgresql.org/docs/current/static/role-removal.html)
  /// in each of the respective databases must occur before the ROLE can be dropped
  /// from the catalog.  Set this option to true when there are multiple databases
  /// in a PostgreSQL cluster using the same PostgreSQL ROLE for object ownership.
  /// This is the third and final step taken when removing a ROLE from a database.
  final pulumi.Input<bool>? skipDropRole;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, a
  /// [`REASSIGN OWNED`](https://www.postgresql.org/docs/current/static/sql-reassign-owned.html) in
  /// must be executed on each of the respective databases before the `DROP ROLE`
  /// can be executed to drop the ROLE from the catalog.  This is the first and
  /// second steps taken when removing a ROLE from a database (the second step being
  /// an implicit
  /// [`DROP OWNED`](https://www.postgresql.org/docs/current/static/sql-drop-owned.html)).
  final pulumi.Input<bool>? skipReassignOwned;
  /// Defines [`statement_timeout`](https://www.postgresql.org/docs/current/runtime-config-client.html#RUNTIME-CONFIG-CLIENT-STATEMENT) setting for this role which allows to abort any statement that takes more than the specified amount of time.
  final pulumi.Input<int>? statementTimeout;
  /// Defines whether the role is a "superuser", and
  /// therefore can override all access restrictions within the database.  Default
  /// value is `false`.
  final pulumi.Input<bool>? superuser;
  /// Defines the date and time after which the role's
  /// password is no longer valid.  Established connections past this `valid_time`
  /// will have to be manually terminated.  This value corresponds to a PostgreSQL
  /// datetime. If omitted or the magic value `NULL` is used, `valid_until` will be
  /// set to `infinity`.  Default is `NULL`, therefore `infinity`.
  final pulumi.Input<String>? validUntil;

  /// Creates a new [RoleArgs].
  /// [assumeRole] Defines the role to switch to at login via [`SET ROLE`](https://www.postgresql.org/docs/current/sql-set-role.html).
  /// [bypassRowLevelSecurity] Defines whether a role bypasses every
  /// [connectionLimit] If this role can log in, this specifies how
  /// [createDatabase] Defines a role's ability to execute `CREATE
  /// [createRole] Defines a role's ability to execute `CREATE ROLE`.
  /// [encrypted] Optional.
  /// [encryptedPassword] Defines whether the password is stored
  /// [idleInTransactionSessionTimeout] Terminate any session with an open transaction that has been idle for longer than the specified duration in milliseconds
  /// [inherit] Defines whether a role "inherits" the privileges of
  /// [login] Defines whether role is allowed to log in.  Roles without
  /// [name] The name of the role. Must be unique on the PostgreSQL
  /// [password] Sets the role's password. A password is only of use
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Prevents applies from updating the role password on every
  /// [replication] Defines whether a role is allowed to initiate
  /// [roles] Defines list of roles which will be granted to this new role.
  /// [searchPaths] Alters the search path of this new role. Note that
  /// [skipDropRole] When a PostgreSQL ROLE exists in multiple
  /// [skipReassignOwned] When a PostgreSQL ROLE exists in multiple
  /// [statementTimeout] Defines [`statement_timeout`](https://www.postgresql.org/docs/current/runtime-config-client.html#RUNTIME-CONFIG-CLIENT-STATEMENT) setting for this role which allows to abort any statement that takes more than the specified amount of time.
  /// [superuser] Defines whether the role is a "superuser", and
  /// [validUntil] Defines the date and time after which the role's
  RoleArgs({
    String? assumeRole,
    bool? bypassRowLevelSecurity,
    int? connectionLimit,
    bool? createDatabase,
    bool? createRole,
    String? encrypted,
    bool? encryptedPassword,
    int? idleInTransactionSessionTimeout,
    bool? inherit,
    bool? login,
    String? name,
    String? password,
    String? passwordWo,
    String? passwordWoVersion,
    bool? replication,
    List<String>? roles,
    List<String>? searchPaths,
    bool? skipDropRole,
    bool? skipReassignOwned,
    int? statementTimeout,
    bool? superuser,
    String? validUntil,
  }) :
      assumeRole = pulumi.Input.asOptionalInput<String>(assumeRole),
      bypassRowLevelSecurity = pulumi.Input.asOptionalInput<bool>(bypassRowLevelSecurity),
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      createDatabase = pulumi.Input.asOptionalInput<bool>(createDatabase),
      createRole = pulumi.Input.asOptionalInput<bool>(createRole),
      encrypted = pulumi.Input.asOptionalInput<String>(encrypted),
      encryptedPassword = pulumi.Input.asOptionalInput<bool>(encryptedPassword),
      idleInTransactionSessionTimeout = pulumi.Input.asOptionalInput<int>(idleInTransactionSessionTimeout),
      inherit = pulumi.Input.asOptionalInput<bool>(inherit),
      login = pulumi.Input.asOptionalInput<bool>(login),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordWo = pulumi.Input.asOptionalInput<String>(passwordWo),
      passwordWoVersion = pulumi.Input.asOptionalInput<String>(passwordWoVersion),
      replication = pulumi.Input.asOptionalInput<bool>(replication),
      roles = pulumi.Input.asOptionalInput<List<String>>(roles),
      searchPaths = pulumi.Input.asOptionalInput<List<String>>(searchPaths),
      skipDropRole = pulumi.Input.asOptionalInput<bool>(skipDropRole),
      skipReassignOwned = pulumi.Input.asOptionalInput<bool>(skipReassignOwned),
      statementTimeout = pulumi.Input.asOptionalInput<int>(statementTimeout),
      superuser = pulumi.Input.asOptionalInput<bool>(superuser),
      validUntil = pulumi.Input.asOptionalInput<String>(validUntil);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumeRole': ?assumeRole,
      'bypassRowLevelSecurity': ?bypassRowLevelSecurity,
      'connectionLimit': ?connectionLimit,
      'createDatabase': ?createDatabase,
      'createRole': ?createRole,
      'encrypted': ?encrypted,
      'encryptedPassword': ?encryptedPassword,
      'idleInTransactionSessionTimeout': ?idleInTransactionSessionTimeout,
      'inherit': ?inherit,
      'login': ?login,
      'name': ?name,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'replication': ?replication,
      'roles': ?roles,
      'searchPaths': ?searchPaths,
      'skipDropRole': ?skipDropRole,
      'skipReassignOwned': ?skipReassignOwned,
      'statementTimeout': ?statementTimeout,
      'superuser': ?superuser,
      'validUntil': ?validUntil,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      assumeRole: map['assumeRole'] == null ? null : map['assumeRole'] as String,
      bypassRowLevelSecurity: map['bypassRowLevelSecurity'] == null ? null : map['bypassRowLevelSecurity'] as bool,
      connectionLimit: map['connectionLimit'] == null ? null : map['connectionLimit'] as int,
      createDatabase: map['createDatabase'] == null ? null : map['createDatabase'] as bool,
      createRole: map['createRole'] == null ? null : map['createRole'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      encryptedPassword: map['encryptedPassword'] == null ? null : map['encryptedPassword'] as bool,
      idleInTransactionSessionTimeout: map['idleInTransactionSessionTimeout'] == null ? null : map['idleInTransactionSessionTimeout'] as int,
      inherit: map['inherit'] == null ? null : map['inherit'] as bool,
      login: map['login'] == null ? null : map['login'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      passwordWo: map['passwordWo'] == null ? null : map['passwordWo'] as String,
      passwordWoVersion: map['passwordWoVersion'] == null ? null : map['passwordWoVersion'] as String,
      replication: map['replication'] == null ? null : map['replication'] as bool,
      roles: map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
      searchPaths: map['searchPaths'] == null ? null : (map['searchPaths'] as List).cast<String>(),
      skipDropRole: map['skipDropRole'] == null ? null : map['skipDropRole'] as bool,
      skipReassignOwned: map['skipReassignOwned'] == null ? null : map['skipReassignOwned'] as bool,
      statementTimeout: map['statementTimeout'] == null ? null : map['statementTimeout'] as int,
      superuser: map['superuser'] == null ? null : map['superuser'] as bool,
      validUntil: map['validUntil'] == null ? null : map['validUntil'] as String,
    );
  }
}

