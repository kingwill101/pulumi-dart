// ignore_for_file: unused_element, unnecessary_cast


class GetEnterpriseDatabasesDatabase {
  /// The name of the Database Directory.> PG Series databases will display the database name.
  final String catalogName;
  /// The ID of the physical library.
  final String databaseId;
  /// Database type.
  final String dbType;
  /// The DBA user ID of the target database.
  final String dbaId;
  /// The DBA nickname of the target Library.
  final String dbaName;
  /// Database encoding.
  final String encoding;
  /// The environment type of the database.
  final String envType;
  /// The database connection address.
  final String host;
  /// The Database ID, same value as `database_id`.
  final String id;
  /// The instance ID of the target database.
  final String instanceId;
  /// Library Owner User ID list.
  final List<String> ownerIdLists;
  /// Library Owner nickname list.
  final List<String> ownerNameLists;
  /// The connection port of the database.
  final int port;
  /// The name of the database.> PG Series databases will display schema names.
  final String schemaName;
  /// Library search name.
  final String searchName;
  /// Database SID.> only Oracle Database Display.
  final String sid;
  /// Library status, value description:-**NORMAL**: NORMAL-**DISABLE**: Disabled-**OFFLINE**: OFFLINE-**NOT_EXIST**: does not exist
  final String state;

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
      catalogName: map['catalogName'] as String,
      databaseId: map['databaseId'] as String,
      dbType: map['dbType'] as String,
      dbaId: map['dbaId'] as String,
      dbaName: map['dbaName'] as String,
      encoding: map['encoding'] as String,
      envType: map['envType'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      ownerIdLists: (map['ownerIdLists'] as List).cast<String>(),
      ownerNameLists: (map['ownerNameLists'] as List).cast<String>(),
      port: map['port'] as int,
      schemaName: map['schemaName'] as String,
      searchName: map['searchName'] as String,
      sid: map['sid'] as String,
      state: map['state'] as String,
    );
  }
}

