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
    pulumi.Output<String>? dataSourceName,
    required pulumi.Output<String> localDatabase,
    required pulumi.Output<String> localDbInstanceId,
    required pulumi.Output<String> managerUserName,
    required pulumi.Output<String> managerUserPassword,
    required pulumi.Output<String> remoteDatabase,
    required pulumi.Output<String> remoteDbInstanceId,
    required pulumi.Output<String> userName,
    required pulumi.Output<String> userPassword,
  }) :
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      localDatabase = pulumi.Input.asInput<String>(localDatabase),
      localDbInstanceId = pulumi.Input.asInput<String>(localDbInstanceId),
      managerUserName = pulumi.Input.asInput<String>(managerUserName),
      managerUserPassword = pulumi.Input.asInput<String>(managerUserPassword),
      remoteDatabase = pulumi.Input.asInput<String>(remoteDatabase),
      remoteDbInstanceId = pulumi.Input.asInput<String>(remoteDbInstanceId),
      userName = pulumi.Input.asInput<String>(userName),
      userPassword = pulumi.Input.asInput<String>(userPassword);

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
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      localDatabase: pulumi.Output.create<String>(map['localDatabase'] as String),
      localDbInstanceId: pulumi.Output.create<String>(map['localDbInstanceId'] as String),
      managerUserName: pulumi.Output.create<String>(map['managerUserName'] as String),
      managerUserPassword: pulumi.Output.create<String>(map['managerUserPassword'] as String),
      remoteDatabase: pulumi.Output.create<String>(map['remoteDatabase'] as String),
      remoteDbInstanceId: pulumi.Output.create<String>(map['remoteDbInstanceId'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
      userPassword: pulumi.Output.create<String>(map['userPassword'] as String),
    );
  }
}

