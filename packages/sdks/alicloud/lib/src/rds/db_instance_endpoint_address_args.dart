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
    required this.connectionStringPrefix,
    required this.dbInstanceEndpointId,
    required this.dbInstanceId,
    required this.port,
  });

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
      connectionStringPrefix: (map['connectionStringPrefix'] as String).input(),
      dbInstanceEndpointId: (map['dbInstanceEndpointId'] as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      port: (map['port'] as String).input(),
    );
  }
}

