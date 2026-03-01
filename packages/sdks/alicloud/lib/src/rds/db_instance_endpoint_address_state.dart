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
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? connectionStringPrefix,
    pulumi.Output<String>? dbInstanceEndpointId,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? ipType,
    pulumi.Output<String>? port,
  }) :
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      connectionStringPrefix = pulumi.Input.asOptionalInput<String>(connectionStringPrefix),
      dbInstanceEndpointId = pulumi.Input.asOptionalInput<String>(dbInstanceEndpointId),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipType = pulumi.Input.asOptionalInput<String>(ipType),
      port = pulumi.Input.asOptionalInput<String>(port);

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
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      dbInstanceEndpointId: map['dbInstanceEndpointId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceEndpointId'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipType: map['ipType'] == null ? null : pulumi.Output.create<String>(map['ipType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

