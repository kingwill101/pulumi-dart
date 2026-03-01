// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointAddress resources.
class EndpointAddressState {
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// Connection cluster or endpoint string.
  final pulumi.Input<String>? connectionString;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// The Id of endpoint that can run database.
  final pulumi.Input<String>? dbEndpointId;
  /// The ip address of connection string.
  final pulumi.Input<String>? ipAddress;
  /// Internet connection net type. Valid value: `Public`. Default to `Public`. Currently supported only `Public`.
  final pulumi.Input<String>? netType;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;

  /// Creates a new [EndpointAddressState].
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [connectionString] Connection cluster or endpoint string.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointId] The Id of endpoint that can run database.
  /// [ipAddress] The ip address of connection string.
  /// [netType] Internet connection net type. Valid value: `Public`. Default to `Public`. Currently supported only `Public`.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  EndpointAddressState({
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? dbEndpointId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? netType,
    pulumi.Output<String>? port,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbEndpointId = pulumi.Input.asOptionalInput<String>(dbEndpointId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      port = pulumi.Input.asOptionalInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'connectionString': ?connectionString,
      'dbClusterId': ?dbClusterId,
      'dbEndpointId': ?dbEndpointId,
      'ipAddress': ?ipAddress,
      'netType': ?netType,
      'port': ?port,
    };
  }

  factory EndpointAddressState.fromMap(Map<String, dynamic> map) {
    return EndpointAddressState(
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbEndpointId: map['dbEndpointId'] == null ? null : pulumi.Output.create<String>(map['dbEndpointId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

