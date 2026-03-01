// ignore_for_file: unused_element, unnecessary_cast


class HiveMetastoreResponse {
  /// The databaseName for the Hive MetaStore
  final String databaseName;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The current state of the NestedResource
  final String nestedResourceProvisioningState;
  /// The password for the Hive MetaStore
  final String password;
  /// The runtimeVersion for the Hive MetaStore
  final String runtimeVersion;
  /// The serverUri for the Hive MetaStore
  final String serverUri;
  /// The resource type.
  final String type;
  /// The userName for the Hive MetaStore
  final String userName;

  /// Creates a new [HiveMetastoreResponse].
  /// [databaseName] The databaseName for the Hive MetaStore
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [nestedResourceProvisioningState] The current state of the NestedResource
  /// [password] The password for the Hive MetaStore
  /// [runtimeVersion] The runtimeVersion for the Hive MetaStore
  /// [serverUri] The serverUri for the Hive MetaStore
  /// [type] The resource type.
  /// [userName] The userName for the Hive MetaStore
  HiveMetastoreResponse({
    required this.databaseName,
    required this.id,
    required this.name,
    required this.nestedResourceProvisioningState,
    required this.password,
    required this.runtimeVersion,
    required this.serverUri,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'id': id,
      'name': name,
      'nestedResourceProvisioningState': nestedResourceProvisioningState,
      'password': password,
      'runtimeVersion': runtimeVersion,
      'serverUri': serverUri,
      'type': type,
      'userName': userName,
    };
  }

  factory HiveMetastoreResponse.fromMap(Map<String, dynamic> map) {
    return HiveMetastoreResponse(
      databaseName: map['databaseName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nestedResourceProvisioningState: map['nestedResourceProvisioningState'] as String,
      password: map['password'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      serverUri: map['serverUri'] as String,
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}

