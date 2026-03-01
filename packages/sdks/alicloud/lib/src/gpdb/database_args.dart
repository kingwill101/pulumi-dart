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
    pulumi.Output<String>? characterSetName,
    pulumi.Output<String>? collate,
    pulumi.Output<String>? ctype,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> owner,
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
      characterSetName: map['characterSetName'] == null ? null : pulumi.Output.create<String>(map['characterSetName'] as String),
      collate: map['collate'] == null ? null : pulumi.Output.create<String>(map['collate'] as String),
      ctype: map['ctype'] == null ? null : pulumi.Output.create<String>(map['ctype'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      owner: pulumi.Output.create<String>(map['owner'] as String),
    );
  }
}

