// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_rds_connection_connection_args_doc}
class ConnectionArgs {
  /// The Tabular Data Stream (TDS) port of the instance for which Babelfish is enabled.
  ///
  /// > **NOTE:** This parameter applies only to ApsaraDB RDS for PostgreSQL instances. For more information about Babelfish for ApsaraDB RDS for PostgreSQL, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  final pulumi.Input<String>? babelfishPort;
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 40 characters. Default to <instance_id> + 'tf'.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of instance that can run database.
  final pulumi.Input<String> instanceId;
  /// Internet connection port. Valid value: [1000-5999]. Default to 3306.
  final pulumi.Input<String>? port;

  /// Creates a new [ConnectionArgs].
  /// [babelfishPort] The Tabular Data Stream (TDS) port of the instance for which Babelfish is enabled.
  /// [connectionPrefix] Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 40 characters. Default to <instance_id> + 'tf'.
  /// [instanceId] The Id of instance that can run database.
  /// [port] Internet connection port. Valid value: [1000-5999]. Default to 3306.
  ConnectionArgs({
    pulumi.Output<String>? babelfishPort,
    pulumi.Output<String>? connectionPrefix,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? port,
  }) :
      babelfishPort = pulumi.Input.asOptionalInput<String>(babelfishPort),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      port = pulumi.Input.asOptionalInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'babelfishPort': ?babelfishPort,
      'connectionPrefix': ?connectionPrefix,
      'instanceId': instanceId,
      'port': ?port,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      babelfishPort: map['babelfishPort'] == null ? null : pulumi.Output.create<String>(map['babelfishPort'] as String),
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

