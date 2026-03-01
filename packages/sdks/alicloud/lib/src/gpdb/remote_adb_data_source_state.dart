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
    pulumi.Output<String>? dataSourceName,
    pulumi.Output<String>? localDatabase,
    pulumi.Output<String>? localDbInstanceId,
    pulumi.Output<String>? managerUserName,
    pulumi.Output<String>? managerUserPassword,
    pulumi.Output<int>? remoteAdbDataSourceId,
    pulumi.Output<String>? remoteDatabase,
    pulumi.Output<String>? remoteDbInstanceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? userName,
    pulumi.Output<String>? userPassword,
  }) :
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      localDatabase = pulumi.Input.asOptionalInput<String>(localDatabase),
      localDbInstanceId = pulumi.Input.asOptionalInput<String>(localDbInstanceId),
      managerUserName = pulumi.Input.asOptionalInput<String>(managerUserName),
      managerUserPassword = pulumi.Input.asOptionalInput<String>(managerUserPassword),
      remoteAdbDataSourceId = pulumi.Input.asOptionalInput<int>(remoteAdbDataSourceId),
      remoteDatabase = pulumi.Input.asOptionalInput<String>(remoteDatabase),
      remoteDbInstanceId = pulumi.Input.asOptionalInput<String>(remoteDbInstanceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      userPassword = pulumi.Input.asOptionalInput<String>(userPassword);

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
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      localDatabase: map['localDatabase'] == null ? null : pulumi.Output.create<String>(map['localDatabase'] as String),
      localDbInstanceId: map['localDbInstanceId'] == null ? null : pulumi.Output.create<String>(map['localDbInstanceId'] as String),
      managerUserName: map['managerUserName'] == null ? null : pulumi.Output.create<String>(map['managerUserName'] as String),
      managerUserPassword: map['managerUserPassword'] == null ? null : pulumi.Output.create<String>(map['managerUserPassword'] as String),
      remoteAdbDataSourceId: map['remoteAdbDataSourceId'] == null ? null : pulumi.Output.create<int>(map['remoteAdbDataSourceId'] as int),
      remoteDatabase: map['remoteDatabase'] == null ? null : pulumi.Output.create<String>(map['remoteDatabase'] as String),
      remoteDbInstanceId: map['remoteDbInstanceId'] == null ? null : pulumi.Output.create<String>(map['remoteDbInstanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      userPassword: map['userPassword'] == null ? null : pulumi.Output.create<String>(map['userPassword'] as String),
    );
  }
}

