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
    this.connectionPrefix,
    this.connectionString,
    this.dbClusterId,
    this.dbEndpointId,
    this.ipAddress,
    this.netType,
    this.port,
  });

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
      connectionPrefix: map['connectionPrefix'] == null ? null : (map['connectionPrefix']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId']! as String).input(),
      dbEndpointId: map['dbEndpointId'] == null ? null : (map['dbEndpointId']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      netType: map['netType'] == null ? null : (map['netType']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
    );
  }
}

