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
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? port,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      port = pulumi.Input.asOptionalInput<String>(port);

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
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

