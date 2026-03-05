// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_remote_adb_data_source_remote_adb_data_source_args_doc}
/// The set of arguments for RemoteAdbDataSource.
/// {@endtemplate}
/// {@macro pulumi_gpdb_remote_adb_data_source_remote_adb_data_source_args_doc}
class RemoteAdbDataSourceArgs {
  /// Data Source Name
  final pulumi.Input<String>? dataSourceName;
  /// The database of the local instance which connection data.
  final pulumi.Input<String> localDatabase;
  /// The instanceId of the local instance which connection data.
  final pulumi.Input<String> localDbInstanceId;
  /// The Management user name of the local instance.
  final pulumi.Input<String> managerUserName;
  /// Password of the Manager user of the local instance
  final pulumi.Input<String> managerUserPassword;
  /// The database of the remote instance which provide data.
  final pulumi.Input<String> remoteDatabase;
  /// The instanceId of the remote instance which provide data.
  final pulumi.Input<String> remoteDbInstanceId;
  /// The user name used to connect to the remote instance
  final pulumi.Input<String> userName;
  /// The user password used to connect to the remote instance
  final pulumi.Input<String> userPassword;

  /// Creates a new [RemoteAdbDataSourceArgs].
  /// [dataSourceName] Data Source Name
  /// [localDatabase] The database of the local instance which connection data.
  /// [localDbInstanceId] The instanceId of the local instance which connection data.
  /// [managerUserName] The Management user name of the local instance.
  /// [managerUserPassword] Password of the Manager user of the local instance
  /// [remoteDatabase] The database of the remote instance which provide data.
  /// [remoteDbInstanceId] The instanceId of the remote instance which provide data.
  /// [userName] The user name used to connect to the remote instance
  /// [userPassword] The user password used to connect to the remote instance
  RemoteAdbDataSourceArgs({
    this.dataSourceName,
    required this.localDatabase,
    required this.localDbInstanceId,
    required this.managerUserName,
    required this.managerUserPassword,
    required this.remoteDatabase,
    required this.remoteDbInstanceId,
    required this.userName,
    required this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
      'localDatabase': localDatabase,
      'localDbInstanceId': localDbInstanceId,
      'managerUserName': managerUserName,
      'managerUserPassword': managerUserPassword,
      'remoteDatabase': remoteDatabase,
      'remoteDbInstanceId': remoteDbInstanceId,
      'userName': userName,
      'userPassword': userPassword,
    };
  }

  factory RemoteAdbDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return RemoteAdbDataSourceArgs(
      dataSourceName: (() { final guardedValue = map['dataSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localDatabase: pulumi.Input.fromValue(map['localDatabase'] as String),
      localDbInstanceId: pulumi.Input.fromValue(map['localDbInstanceId'] as String),
      managerUserName: pulumi.Input.fromValue(map['managerUserName'] as String),
      managerUserPassword: pulumi.Input.fromValue(map['managerUserPassword'] as String),
      remoteDatabase: pulumi.Input.fromValue(map['remoteDatabase'] as String),
      remoteDbInstanceId: pulumi.Input.fromValue(map['remoteDbInstanceId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      userPassword: pulumi.Input.fromValue(map['userPassword'] as String),
    );
  }
}

