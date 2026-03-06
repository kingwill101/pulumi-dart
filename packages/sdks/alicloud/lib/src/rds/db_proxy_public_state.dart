// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DbProxyPublic resources.
class DbProxyPublicState {
  /// The prefix for the new database proxy connection address can be customized.
  final pulumi.Input<String>? connectionStringPrefix;
  /// Instance ID.
  final pulumi.Input<String>? dbInstanceId;
  /// The network type of the new database proxy connection address,This resource defaults to Public.
  final pulumi.Input<String>? dbProxyConnectionStringNetType;
  /// Database proxy connection address ID.
  final pulumi.Input<String>? dbProxyEndpointId;
  /// The port for the new database proxy connection address is 3306 by default for MySQL and 5432 by default for PostgreSQL, which can be customized.
  final pulumi.Input<String>? dbProxyNewConnectStringPort;

  /// Creates a new [DbProxyPublicState].
  /// [connectionStringPrefix] The prefix for the new database proxy connection address can be customized.
  /// [dbInstanceId] Instance ID.
  /// [dbProxyConnectionStringNetType] The network type of the new database proxy connection address,This resource defaults to Public.
  /// [dbProxyEndpointId] Database proxy connection address ID.
  /// [dbProxyNewConnectStringPort] The port for the new database proxy connection address is 3306 by default for MySQL and 5432 by default for PostgreSQL, which can be customized.
  const DbProxyPublicState({
    this.connectionStringPrefix,
    this.dbInstanceId,
    this.dbProxyConnectionStringNetType,
    this.dbProxyEndpointId,
    this.dbProxyNewConnectStringPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceId': ?dbInstanceId,
      'dbProxyConnectionStringNetType': ?dbProxyConnectionStringNetType,
      'dbProxyEndpointId': ?dbProxyEndpointId,
      'dbProxyNewConnectStringPort': ?dbProxyNewConnectStringPort,
    };
  }

  factory DbProxyPublicState.fromMap(Map<String, dynamic> map) {
    return DbProxyPublicState(
      connectionStringPrefix: (() { final guardedValue = map['connectionStringPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbProxyConnectionStringNetType: (() { final guardedValue = map['dbProxyConnectionStringNetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbProxyEndpointId: (() { final guardedValue = map['dbProxyEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbProxyNewConnectStringPort: (() { final guardedValue = map['dbProxyNewConnectStringPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

