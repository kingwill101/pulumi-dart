// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HiveMetastoreResponse {
  /// The databaseName for the Hive MetaStore
  final pulumi.Input<String> databaseName;
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The current state of the NestedResource
  final pulumi.Input<String> nestedResourceProvisioningState;
  /// The password for the Hive MetaStore
  final pulumi.Input<String> password;
  /// The runtimeVersion for the Hive MetaStore
  final pulumi.Input<String> runtimeVersion;
  /// The serverUri for the Hive MetaStore
  final pulumi.Input<String> serverUri;
  /// The resource type.
  final pulumi.Input<String> type;
  /// The userName for the Hive MetaStore
  final pulumi.Input<String> userName;

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
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nestedResourceProvisioningState: pulumi.Input.fromValue(map['nestedResourceProvisioningState'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      serverUri: pulumi.Input.fromValue(map['serverUri'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

