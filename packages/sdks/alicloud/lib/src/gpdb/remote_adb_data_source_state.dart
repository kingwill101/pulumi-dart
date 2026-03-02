// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RemoteAdbDataSource resources.
class RemoteAdbDataSourceState {
  /// Data Source Name
  final pulumi.Input<String>? dataSourceName;
  /// The database of the local instance which connection data.
  final pulumi.Input<String>? localDatabase;
  /// The instanceId of the local instance which connection data.
  final pulumi.Input<String>? localDbInstanceId;
  /// The Management user name of the local instance.
  final pulumi.Input<String>? managerUserName;
  /// Password of the Manager user of the local instance
  final pulumi.Input<String>? managerUserPassword;
  /// The first ID of the resource
  final pulumi.Input<int>? remoteAdbDataSourceId;
  /// The database of the remote instance which provide data.
  final pulumi.Input<String>? remoteDatabase;
  /// The instanceId of the remote instance which provide data.
  final pulumi.Input<String>? remoteDbInstanceId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The user name used to connect to the remote instance
  final pulumi.Input<String>? userName;
  /// The user password used to connect to the remote instance
  final pulumi.Input<String>? userPassword;

  /// Creates a new [RemoteAdbDataSourceState].
  /// [dataSourceName] Data Source Name
  /// [localDatabase] The database of the local instance which connection data.
  /// [localDbInstanceId] The instanceId of the local instance which connection data.
  /// [managerUserName] The Management user name of the local instance.
  /// [managerUserPassword] Password of the Manager user of the local instance
  /// [remoteAdbDataSourceId] The first ID of the resource
  /// [remoteDatabase] The database of the remote instance which provide data.
  /// [remoteDbInstanceId] The instanceId of the remote instance which provide data.
  /// [status] The status of the resource
  /// [userName] The user name used to connect to the remote instance
  /// [userPassword] The user password used to connect to the remote instance
  RemoteAdbDataSourceState({
    this.dataSourceName,
    this.localDatabase,
    this.localDbInstanceId,
    this.managerUserName,
    this.managerUserPassword,
    this.remoteAdbDataSourceId,
    this.remoteDatabase,
    this.remoteDbInstanceId,
    this.status,
    this.userName,
    this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
      'localDatabase': ?localDatabase,
      'localDbInstanceId': ?localDbInstanceId,
      'managerUserName': ?managerUserName,
      'managerUserPassword': ?managerUserPassword,
      'remoteAdbDataSourceId': ?remoteAdbDataSourceId,
      'remoteDatabase': ?remoteDatabase,
      'remoteDbInstanceId': ?remoteDbInstanceId,
      'status': ?status,
      'userName': ?userName,
      'userPassword': ?userPassword,
    };
  }

  factory RemoteAdbDataSourceState.fromMap(Map<String, dynamic> map) {
    return RemoteAdbDataSourceState(
      dataSourceName: map['dataSourceName'] == null ? null : (map['dataSourceName'] as String).input(),
      localDatabase: map['localDatabase'] == null ? null : (map['localDatabase'] as String).input(),
      localDbInstanceId: map['localDbInstanceId'] == null ? null : (map['localDbInstanceId'] as String).input(),
      managerUserName: map['managerUserName'] == null ? null : (map['managerUserName'] as String).input(),
      managerUserPassword: map['managerUserPassword'] == null ? null : (map['managerUserPassword'] as String).input(),
      remoteAdbDataSourceId: map['remoteAdbDataSourceId'] == null ? null : (map['remoteAdbDataSourceId'] as int).input(),
      remoteDatabase: map['remoteDatabase'] == null ? null : (map['remoteDatabase'] as String).input(),
      remoteDbInstanceId: map['remoteDbInstanceId'] == null ? null : (map['remoteDbInstanceId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
      userPassword: map['userPassword'] == null ? null : (map['userPassword'] as String).input(),
    );
  }
}

