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
    required pulumi.Output<String> connectionStringPrefix,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> dbProxyConnectionStringNetType,
    required pulumi.Output<String> dbProxyEndpointId,
    pulumi.Output<String>? dbProxyNewConnectStringPort,
  }) :
      connectionStringPrefix = pulumi.Input.asInput<String>(connectionStringPrefix),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      dbProxyConnectionStringNetType = pulumi.Input.asInput<String>(dbProxyConnectionStringNetType),
      dbProxyEndpointId = pulumi.Input.asInput<String>(dbProxyEndpointId),
      dbProxyNewConnectStringPort = pulumi.Input.asOptionalInput<String>(dbProxyNewConnectStringPort);

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
      connectionStringPrefix: pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      dbProxyConnectionStringNetType: pulumi.Output.create<String>(map['dbProxyConnectionStringNetType'] as String),
      dbProxyEndpointId: pulumi.Output.create<String>(map['dbProxyEndpointId'] as String),
      dbProxyNewConnectStringPort: map['dbProxyNewConnectStringPort'] == null ? null : pulumi.Output.create<String>(map['dbProxyNewConnectStringPort'] as String),
    );
  }
}

