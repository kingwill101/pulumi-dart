// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_db_instance_endpoint_address_db_instance_endpoint_address_args_doc}
/// The set of arguments for DbInstanceEndpointAddress.
/// {@endtemplate}
/// {@macro pulumi_rds_db_instance_endpoint_address_db_instance_endpoint_address_args_doc}
class DbInstanceEndpointAddressArgs {
  /// The prefix of the public endpoint.
  final pulumi.Input<String> connectionStringPrefix;
  /// The Endpoint ID of the instance.
  final pulumi.Input<String> dbInstanceEndpointId;
  /// The ID of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// The port number of the public endpoint.
  final pulumi.Input<String> port;

  /// Creates a new [DbInstanceEndpointAddressArgs].
  /// [connectionStringPrefix] The prefix of the public endpoint.
  /// [dbInstanceEndpointId] The Endpoint ID of the instance.
  /// [dbInstanceId] The ID of the instance.
  /// [port] The port number of the public endpoint.
  DbInstanceEndpointAddressArgs({
    required pulumi.Output<String> connectionStringPrefix,
    required pulumi.Output<String> dbInstanceEndpointId,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> port,
  }) :
      connectionStringPrefix = pulumi.Input.asInput<String>(connectionStringPrefix),
      dbInstanceEndpointId = pulumi.Input.asInput<String>(dbInstanceEndpointId),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      port = pulumi.Input.asInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': connectionStringPrefix,
      'dbInstanceEndpointId': dbInstanceEndpointId,
      'dbInstanceId': dbInstanceId,
      'port': port,
    };
  }

  factory DbInstanceEndpointAddressArgs.fromMap(Map<String, dynamic> map) {
    return DbInstanceEndpointAddressArgs(
      connectionStringPrefix: pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      dbInstanceEndpointId: pulumi.Output.create<String>(map['dbInstanceEndpointId'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      port: pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

