// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_index_database_database_args_doc}
class DatabaseArgs {
  /// The default character set to use when
  /// a table is created without specifying an explicit character set. Defaults
  /// to "utf8".
  final pulumi.Input<String>? defaultCharacterSet;
  /// The default collation to use when a table
  /// is created without specifying an explicit collation. Defaults to
  /// ``utf8_general_ci``. Each character set has its own set of collations, so
  /// changing the character set requires also changing the collation.
  ///
  /// Note that the defaults for character set and collation above do not respect
  /// any defaults set on the MySQL server, so that the configuration can be set
  /// appropriately even though Terraform cannot see the server-level defaults. If
  /// you wish to use the server's defaults you must consult the server's
  /// configuration and then set the ``default_character_set`` and
  /// ``default_collation`` to match.
  final pulumi.Input<String>? defaultCollation;
  /// The name of the database. This must be unique within
  /// a given MySQL server and may or may not be case-sensitive depending on
  /// the operating system on which the MySQL server is running.
  final pulumi.Input<String>? name;

  /// Creates a new [DatabaseArgs].
  /// [defaultCharacterSet] The default character set to use when
  /// [defaultCollation] The default collation to use when a table
  /// [name] The name of the database. This must be unique within
  DatabaseArgs({
    String? defaultCharacterSet,
    String? defaultCollation,
    String? name,
  }) :
      defaultCharacterSet = pulumi.Input.asOptionalInput<String>(defaultCharacterSet),
      defaultCollation = pulumi.Input.asOptionalInput<String>(defaultCollation),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCharacterSet': ?defaultCharacterSet,
      'defaultCollation': ?defaultCollation,
      'name': ?name,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      defaultCharacterSet: map['defaultCharacterSet'] == null ? null : map['defaultCharacterSet'] as String,
      defaultCollation: map['defaultCollation'] == null ? null : map['defaultCollation'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

