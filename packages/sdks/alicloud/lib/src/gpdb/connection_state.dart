// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + '-tf'.
  final pulumi.Input<String>? connectionPrefix;
  /// Connection instance string.
  final pulumi.Input<String>? connectionString;
  /// The Id of instance that can run database.
  final pulumi.Input<String>? instanceId;
  /// The ip address of connection string.
  final pulumi.Input<String>? ipAddress;
  /// Internet connection port. Valid value: [3200-3999]. Default to 3306.
  final pulumi.Input<String>? port;

  /// Creates a new [ConnectionState].
  /// [connectionPrefix] Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + '-tf'.
  /// [connectionString] Connection instance string.
  /// [instanceId] The Id of instance that can run database.
  /// [ipAddress] The ip address of connection string.
  /// [port] Internet connection port. Valid value: [3200-3999]. Default to 3306.
  ConnectionState({
    this.connectionPrefix,
    this.connectionString,
    this.instanceId,
    this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'connectionString': ?connectionString,
      'instanceId': ?instanceId,
      'ipAddress': ?ipAddress,
      'port': ?port,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      connectionPrefix: map['connectionPrefix'] == null ? null : (map['connectionPrefix'] as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

