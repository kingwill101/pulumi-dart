// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnterpriseDatabasesDatabase {
  /// The name of the Database Directory.> PG Series databases will display the database name.
  final pulumi.Input<String> catalogName;
  /// The ID of the physical library.
  final pulumi.Input<String> databaseId;
  /// Database type.
  final pulumi.Input<String> dbType;
  /// The DBA user ID of the target database.
  final pulumi.Input<String> dbaId;
  /// The DBA nickname of the target Library.
  final pulumi.Input<String> dbaName;
  /// Database encoding.
  final pulumi.Input<String> encoding;
  /// The environment type of the database.
  final pulumi.Input<String> envType;
  /// The database connection address.
  final pulumi.Input<String> host;
  /// The Database ID, same value as `database_id`.
  final pulumi.Input<String> id;
  /// The instance ID of the target database.
  final pulumi.Input<String> instanceId;
  /// Library Owner User ID list.
  final pulumi.Input<List<String>> ownerIdLists;
  /// Library Owner nickname list.
  final pulumi.Input<List<String>> ownerNameLists;
  /// The connection port of the database.
  final pulumi.Input<int> port;
  /// The name of the database.> PG Series databases will display schema names.
  final pulumi.Input<String> schemaName;
  /// Library search name.
  final pulumi.Input<String> searchName;
  /// Database SID.> only Oracle Database Display.
  final pulumi.Input<String> sid;
  /// Library status, value description:-**NORMAL**: NORMAL-**DISABLE**: Disabled-**OFFLINE**: OFFLINE-**NOT_EXIST**: does not exist
  final pulumi.Input<String> state;

  /// Creates a new [GetEnterpriseDatabasesDatabase].
  /// [catalogName] The name of the Database Directory.> PG Series databases will display the database name.
  /// [databaseId] The ID of the physical library.
  /// [dbType] Database type.
  /// [dbaId] The DBA user ID of the target database.
  /// [dbaName] The DBA nickname of the target Library.
  /// [encoding] Database encoding.
  /// [envType] The environment type of the database.
  /// [host] The database connection address.
  /// [id] The Database ID, same value as `database_id`.
  /// [instanceId] The instance ID of the target database.
  /// [ownerIdLists] Library Owner User ID list.
  /// [ownerNameLists] Library Owner nickname list.
  /// [port] The connection port of the database.
  /// [schemaName] The name of the database.> PG Series databases will display schema names.
  /// [searchName] Library search name.
  /// [sid] Database SID.> only Oracle Database Display.
  /// [state] Library status, value description:-**NORMAL**: NORMAL-**DISABLE**: Disabled-**OFFLINE**: OFFLINE-**NOT_EXIST**: does not exist
  GetEnterpriseDatabasesDatabase({
    required this.catalogName,
    required this.databaseId,
    required this.dbType,
    required this.dbaId,
    required this.dbaName,
    required this.encoding,
    required this.envType,
    required this.host,
    required this.id,
    required this.instanceId,
    required this.ownerIdLists,
    required this.ownerNameLists,
    required this.port,
    required this.schemaName,
    required this.searchName,
    required this.sid,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'databaseId': databaseId,
      'dbType': dbType,
      'dbaId': dbaId,
      'dbaName': dbaName,
      'encoding': encoding,
      'envType': envType,
      'host': host,
      'id': id,
      'instanceId': instanceId,
      'ownerIdLists': ownerIdLists,
      'ownerNameLists': ownerNameLists,
      'port': port,
      'schemaName': schemaName,
      'searchName': searchName,
      'sid': sid,
      'state': state,
    };
  }

  factory GetEnterpriseDatabasesDatabase.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseDatabasesDatabase(
      catalogName: (map['catalogName'] as String).input(),
      databaseId: (map['databaseId'] as String).input(),
      dbType: (map['dbType'] as String).input(),
      dbaId: (map['dbaId'] as String).input(),
      dbaName: (map['dbaName'] as String).input(),
      encoding: (map['encoding'] as String).input(),
      envType: (map['envType'] as String).input(),
      host: (map['host'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ownerIdLists: ((map['ownerIdLists'] as List).cast<String>()).input(),
      ownerNameLists: ((map['ownerNameLists'] as List).cast<String>()).input(),
      port: (map['port'] as int).input(),
      schemaName: (map['schemaName'] as String).input(),
      searchName: (map['searchName'] as String).input(),
      sid: (map['sid'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

