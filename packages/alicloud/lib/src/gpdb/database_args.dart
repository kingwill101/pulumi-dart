// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_gpdb_database_database_args_doc}
class DatabaseArgs {
  /// Character set, default value is UTF8
  final pulumi.Input<String>? characterSetName;
  /// Database locale parameters, specifying string comparison/collation
  final pulumi.Input<String>? collate;
  /// Database locale parameters, specifying character classification/case conversion rules
  final pulumi.Input<String>? ctype;
  /// Database Name
  final pulumi.Input<String> databaseName;
  /// Instance ID
  final pulumi.Input<String> dbInstanceId;
  /// Database Description
  final pulumi.Input<String>? description;
  /// Data Sheet owner
  final pulumi.Input<String> owner;

  /// Creates a new [DatabaseArgs].
  /// [characterSetName] Character set, default value is UTF8
  /// [collate] Database locale parameters, specifying string comparison/collation
  /// [ctype] Database locale parameters, specifying character classification/case conversion rules
  /// [databaseName] Database Name
  /// [dbInstanceId] Instance ID
  /// [description] Database Description
  /// [owner] Data Sheet owner
  DatabaseArgs({
    String? characterSetName,
    String? collate,
    String? ctype,
    required String databaseName,
    required String dbInstanceId,
    String? description,
    required String owner,
  }) :
      characterSetName = pulumi.Input.asOptionalInput<String>(characterSetName),
      collate = pulumi.Input.asOptionalInput<String>(collate),
      ctype = pulumi.Input.asOptionalInput<String>(ctype),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      owner = pulumi.Input.asInput<String>(owner);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSetName': ?characterSetName,
      'collate': ?collate,
      'ctype': ?ctype,
      'databaseName': databaseName,
      'dbInstanceId': dbInstanceId,
      'description': ?description,
      'owner': owner,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      characterSetName: map['characterSetName'] == null ? null : map['characterSetName'] as String,
      collate: map['collate'] == null ? null : map['collate'] as String,
      ctype: map['ctype'] == null ? null : map['ctype'] as String,
      databaseName: map['databaseName'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      owner: map['owner'] as String,
    );
  }
}

