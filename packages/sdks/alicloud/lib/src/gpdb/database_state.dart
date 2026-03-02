// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// Character set, default value is UTF8
  final pulumi.Input<String>? characterSetName;
  /// Database locale parameters, specifying string comparison/collation
  final pulumi.Input<String>? collate;
  /// Database locale parameters, specifying character classification/case conversion rules
  final pulumi.Input<String>? ctype;
  /// Database Name
  final pulumi.Input<String>? databaseName;
  /// Instance ID
  final pulumi.Input<String>? dbInstanceId;
  /// Database Description
  final pulumi.Input<String>? description;
  /// Data Sheet owner
  final pulumi.Input<String>? owner;

  /// Creates a new [DatabaseState].
  /// [characterSetName] Character set, default value is UTF8
  /// [collate] Database locale parameters, specifying string comparison/collation
  /// [ctype] Database locale parameters, specifying character classification/case conversion rules
  /// [databaseName] Database Name
  /// [dbInstanceId] Instance ID
  /// [description] Database Description
  /// [owner] Data Sheet owner
  DatabaseState({
    this.characterSetName,
    this.collate,
    this.ctype,
    this.databaseName,
    this.dbInstanceId,
    this.description,
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSetName': ?characterSetName,
      'collate': ?collate,
      'ctype': ?ctype,
      'databaseName': ?databaseName,
      'dbInstanceId': ?dbInstanceId,
      'description': ?description,
      'owner': ?owner,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      characterSetName: map['characterSetName'] == null ? null : (map['characterSetName']! as String).input(),
      collate: map['collate'] == null ? null : (map['collate']! as String).input(),
      ctype: map['ctype'] == null ? null : (map['ctype']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
    );
  }
}

