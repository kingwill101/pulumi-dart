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
  const DatabaseArgs({
    this.characterSetName,
    this.collate,
    this.ctype,
    required this.databaseName,
    required this.dbInstanceId,
    this.description,
    required this.owner,
  });

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
      characterSetName: (() { final guardedValue = map['characterSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collate: (() { final guardedValue = map['collate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ctype: (() { final guardedValue = map['ctype']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: pulumi.Input.fromValue(map['owner'] as String),
    );
  }
}

