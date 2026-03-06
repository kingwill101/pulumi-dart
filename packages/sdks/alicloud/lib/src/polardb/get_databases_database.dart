// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_database_account.dart';

class GetDatabasesDatabase {
  /// A list of accounts of database. Each element contains the following attributes.
  final pulumi.Input<List<GetDatabasesDatabaseAccount>> accounts;
  /// The character set name of database.
  final pulumi.Input<String> characterSetName;
  /// Database description.
  final pulumi.Input<String> dbDescription;
  /// Database name.
  final pulumi.Input<String> dbName;
  /// The status of database.
  final pulumi.Input<String> dbStatus;
  /// The engine of database.
  final pulumi.Input<String> engine;

  /// Creates a new [GetDatabasesDatabase].
  /// [accounts] A list of accounts of database. Each element contains the following attributes.
  /// [characterSetName] The character set name of database.
  /// [dbDescription] Database description.
  /// [dbName] Database name.
  /// [dbStatus] The status of database.
  /// [engine] The engine of database.
  const GetDatabasesDatabase({
    required this.accounts,
    required this.characterSetName,
    required this.dbDescription,
    required this.dbName,
    required this.dbStatus,
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.mapInputValue<List<GetDatabasesDatabaseAccount>, List<Map<String, dynamic>>>(accounts, (value) => pulumi.Input.encodeList<GetDatabasesDatabaseAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'characterSetName': characterSetName,
      'dbDescription': dbDescription,
      'dbName': dbName,
      'dbStatus': dbStatus,
      'engine': engine,
    };
  }

  factory GetDatabasesDatabase.fromMap(Map<String, dynamic> map) {
    return GetDatabasesDatabase(
      accounts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabasesDatabaseAccount>(map['accounts']!, (value) => GetDatabasesDatabaseAccount.fromMap((value as Map).cast<String, dynamic>()))),
      characterSetName: pulumi.Input.fromValue(map['characterSetName'] as String),
      dbDescription: pulumi.Input.fromValue(map['dbDescription'] as String),
      dbName: pulumi.Input.fromValue(map['dbName'] as String),
      dbStatus: pulumi.Input.fromValue(map['dbStatus'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
    );
  }
}

