// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DbInstanceEndpointAddress resources.
class DbInstanceEndpointAddressState {
  /// The endpoint of the instance.
  final pulumi.Input<String>? connectionString;
  /// The prefix of the public endpoint.
  final pulumi.Input<String>? connectionStringPrefix;
  /// The Endpoint ID of the instance.
  final pulumi.Input<String>? dbInstanceEndpointId;
  /// The ID of the instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The IP address of the endpoint.
  final pulumi.Input<String>? ipAddress;
  /// The type of the IP address.
  final pulumi.Input<String>? ipType;
  /// The port number of the public endpoint.
  final pulumi.Input<String>? port;

  /// Creates a new [DbInstanceEndpointAddressState].
  /// [connectionString] The endpoint of the instance.
  /// [connectionStringPrefix] The prefix of the public endpoint.
  /// [dbInstanceEndpointId] The Endpoint ID of the instance.
  /// [dbInstanceId] The ID of the instance.
  /// [ipAddress] The IP address of the endpoint.
  /// [ipType] The type of the IP address.
  /// [port] The port number of the public endpoint.
  DbInstanceEndpointAddressState({
    this.connectionString,
    this.connectionStringPrefix,
    this.dbInstanceEndpointId,
    this.dbInstanceId,
    this.ipAddress,
    this.ipType,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceEndpointId': ?dbInstanceEndpointId,
      'dbInstanceId': ?dbInstanceId,
      'ipAddress': ?ipAddress,
      'ipType': ?ipType,
      'port': ?port,
    };
  }

  factory DbInstanceEndpointAddressState.fromMap(Map<String, dynamic> map) {
    return DbInstanceEndpointAddressState(
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : (map['connectionStringPrefix']! as String).input(),
      dbInstanceEndpointId: map['dbInstanceEndpointId'] == null ? null : (map['dbInstanceEndpointId']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipType: map['ipType'] == null ? null : (map['ipType']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
    );
  }
}

