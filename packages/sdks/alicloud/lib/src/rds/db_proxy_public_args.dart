// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_db_proxy_public_db_proxy_public_args_doc}
/// The set of arguments for DbProxyPublic.
/// {@endtemplate}
/// {@macro pulumi_rds_db_proxy_public_db_proxy_public_args_doc}
class DbProxyPublicArgs {
  /// The prefix for the new database proxy connection address can be customized.
  final pulumi.Input<String> connectionStringPrefix;

  /// Instance ID.
  final pulumi.Input<String> dbInstanceId;

  /// The network type of the new database proxy connection address,This resource defaults to Public.
  final pulumi.Input<String> dbProxyConnectionStringNetType;

  /// Database proxy connection address ID.
  final pulumi.Input<String> dbProxyEndpointId;

  /// The port for the new database proxy connection address is 3306 by default for MySQL and 5432 by default for PostgreSQL, which can be customized.
  final pulumi.Input<String>? dbProxyNewConnectStringPort;

  /// Creates a new [DbProxyPublicArgs].
  /// [connectionStringPrefix] The prefix for the new database proxy connection address can be customized.
  /// [dbInstanceId] Instance ID.
  /// [dbProxyConnectionStringNetType] The network type of the new database proxy connection address,This resource defaults to Public.
  /// [dbProxyEndpointId] Database proxy connection address ID.
  /// [dbProxyNewConnectStringPort] The port for the new database proxy connection address is 3306 by default for MySQL and 5432 by default for PostgreSQL, which can be customized.
  DbProxyPublicArgs({
    required this.connectionStringPrefix,
    required this.dbInstanceId,
    required this.dbProxyConnectionStringNetType,
    required this.dbProxyEndpointId,
    this.dbProxyNewConnectStringPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': connectionStringPrefix,
      'dbInstanceId': dbInstanceId,
      'dbProxyConnectionStringNetType': dbProxyConnectionStringNetType,
      'dbProxyEndpointId': dbProxyEndpointId,
      'dbProxyNewConnectStringPort': ?dbProxyNewConnectStringPort,
    };
  }

  factory DbProxyPublicArgs.fromMap(Map<String, dynamic> map) {
    return DbProxyPublicArgs(
      connectionStringPrefix: pulumi.Input.fromValue(
        map['connectionStringPrefix'] as String,
      ),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      dbProxyConnectionStringNetType: pulumi.Input.fromValue(
        map['dbProxyConnectionStringNetType'] as String,
      ),
      dbProxyEndpointId: pulumi.Input.fromValue(
        map['dbProxyEndpointId'] as String,
      ),
      dbProxyNewConnectStringPort: (() {
        final guardedValue = map['dbProxyNewConnectStringPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
