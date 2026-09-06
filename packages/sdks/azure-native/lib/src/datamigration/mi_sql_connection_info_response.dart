// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties required to create a connection to Azure SQL database Managed instance
class MiSqlConnectionInfoResponse {
  /// Resource id for Azure SQL database Managed instance
  final pulumi.Input<String> managedInstanceResourceId;
  /// Password credential.
  final pulumi.Input<String?>? password;
  /// Type of connection info
  /// Expected value is 'MiSqlConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String?>? userName;

  /// Creates a new [MiSqlConnectionInfoResponse].
  /// [managedInstanceResourceId] Resource id for Azure SQL database Managed instance
  /// [password] Password credential.
  /// [type] Type of connection info
  /// [userName] User name
  const MiSqlConnectionInfoResponse({
    required this.managedInstanceResourceId,
    this.password,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceResourceId': managedInstanceResourceId,
      'password': ?password,
      'type': type,
      'userName': ?userName,
    };
  }

  factory MiSqlConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return MiSqlConnectionInfoResponse(
      managedInstanceResourceId: pulumi.Input.fromValue(map['managedInstanceResourceId'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
