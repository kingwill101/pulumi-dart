// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties required to create a connection to Azure SQL database Managed instance
class MiSqlConnectionInfo {
  /// Resource id for Azure SQL database Managed instance
  final pulumi.Input<String> managedInstanceResourceId;
  /// Password credential.
  final pulumi.Input<String>? password;
  /// Type of connection info
  /// Expected value is 'MiSqlConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String>? userName;

  /// Creates a new [MiSqlConnectionInfo].
  /// [managedInstanceResourceId] Resource id for Azure SQL database Managed instance
  /// [password] Password credential.
  /// [type] Type of connection info
  /// [userName] User name
  MiSqlConnectionInfo({
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

  factory MiSqlConnectionInfo.fromMap(Map<String, dynamic> map) {
    return MiSqlConnectionInfo(
      managedInstanceResourceId: (map['managedInstanceResourceId'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

