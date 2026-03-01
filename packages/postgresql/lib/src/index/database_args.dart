// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_index_database_database_args_doc}
class DatabaseArgs {
  /// If `false` then no one can connect to this
  /// database. The default is `true`, allowing connections (except as restricted by
  /// other mechanisms, such as `GRANT` or `REVOKE CONNECT`).
  final pulumi.Input<bool>? allowConnections;
  /// If `true`, the change of the database
  /// `owner` will also include a reassignment of the ownership of preexisting
  /// objects like tables or sequences from the previous owner to the new one.
  /// If set to `false` (the default), then the previous database `owner` will still
  /// hold the ownership of the objects in that database. To alter existing objects in
  /// the database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider must be superuser.
  final pulumi.Input<bool>? alterObjectOwnership;
  /// How many concurrent connections can be
  /// established to this database. `-1` (the default) means no limit.
  final pulumi.Input<int>? connectionLimit;
  /// Character set encoding to use in the new database
  final pulumi.Input<String>? encoding;
  /// If `true`, then this database can be cloned by any
  /// user with `CREATEDB` privileges; if `false` (the default), then only
  /// superusers or the owner of the database can clone it.
  final pulumi.Input<bool>? isTemplate;
  /// Collation order (LC_COLLATE) to use in the new database
  final pulumi.Input<String>? lcCollate;
  /// Character classification (LC_CTYPE) to use in the new database
  final pulumi.Input<String>? lcCtype;
  /// The name of the database. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  final pulumi.Input<String>? name;
  /// The role name of the user who will own the database, or
  /// `DEFAULT` to use the default (namely, the user executing the command). To
  /// create a database owned by another role or to change the owner of an existing
  /// database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider is a superuser.
  final pulumi.Input<String>? owner;
  /// The name of the tablespace that will be
  /// associated with the database, or `DEFAULT` to use the template database's
  /// tablespace.  This tablespace will be the default tablespace used for objects
  /// created in this database.
  final pulumi.Input<String>? tablespaceName;
  /// The name of the template from which to create the new database
  final pulumi.Input<String>? template;

  /// Creates a new [DatabaseArgs].
  /// [allowConnections] If `false` then no one can connect to this
  /// [alterObjectOwnership] If `true`, the change of the database
  /// [connectionLimit] How many concurrent connections can be
  /// [encoding] Character set encoding to use in the new database
  /// [isTemplate] If `true`, then this database can be cloned by any
  /// [lcCollate] Collation order (LC_COLLATE) to use in the new database
  /// [lcCtype] Character classification (LC_CTYPE) to use in the new database
  /// [name] The name of the database. Must be unique on the PostgreSQL
  /// [owner] The role name of the user who will own the database, or
  /// [tablespaceName] The name of the tablespace that will be
  /// [template] The name of the template from which to create the new database
  DatabaseArgs({
    bool? allowConnections,
    bool? alterObjectOwnership,
    int? connectionLimit,
    String? encoding,
    bool? isTemplate,
    String? lcCollate,
    String? lcCtype,
    String? name,
    String? owner,
    String? tablespaceName,
    String? template,
  }) :
      allowConnections = pulumi.Input.asOptionalInput<bool>(allowConnections),
      alterObjectOwnership = pulumi.Input.asOptionalInput<bool>(alterObjectOwnership),
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      isTemplate = pulumi.Input.asOptionalInput<bool>(isTemplate),
      lcCollate = pulumi.Input.asOptionalInput<String>(lcCollate),
      lcCtype = pulumi.Input.asOptionalInput<String>(lcCtype),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      tablespaceName = pulumi.Input.asOptionalInput<String>(tablespaceName),
      template = pulumi.Input.asOptionalInput<String>(template);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowConnections': ?allowConnections,
      'alterObjectOwnership': ?alterObjectOwnership,
      'connectionLimit': ?connectionLimit,
      'encoding': ?encoding,
      'isTemplate': ?isTemplate,
      'lcCollate': ?lcCollate,
      'lcCtype': ?lcCtype,
      'name': ?name,
      'owner': ?owner,
      'tablespaceName': ?tablespaceName,
      'template': ?template,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      allowConnections: map['allowConnections'] == null ? null : map['allowConnections'] as bool,
      alterObjectOwnership: map['alterObjectOwnership'] == null ? null : map['alterObjectOwnership'] as bool,
      connectionLimit: map['connectionLimit'] == null ? null : map['connectionLimit'] as int,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      isTemplate: map['isTemplate'] == null ? null : map['isTemplate'] as bool,
      lcCollate: map['lcCollate'] == null ? null : map['lcCollate'] as String,
      lcCtype: map['lcCtype'] == null ? null : map['lcCtype'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      tablespaceName: map['tablespaceName'] == null ? null : map['tablespaceName'] as String,
      template: map['template'] == null ? null : map['template'] as String,
    );
  }
}

