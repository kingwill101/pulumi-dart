// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `<db_cluster_id> + tf`.
  final pulumi.Input<String>? connectionPrefix;
  /// Connection cluster string.
  final pulumi.Input<String>? connectionString;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// The ip address of connection string.
  final pulumi.Input<String>? ipAddress;
  /// Connection cluster port.
  final pulumi.Input<String>? port;

  /// Creates a new [ConnectionState].
  /// [connectionPrefix] Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `<db_cluster_id> + tf`.
  /// [connectionString] Connection cluster string.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [ipAddress] The ip address of connection string.
  /// [port] Connection cluster port.
  ConnectionState({
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? port,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      port = pulumi.Input.asOptionalInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'connectionString': ?connectionString,
      'dbClusterId': ?dbClusterId,
      'ipAddress': ?ipAddress,
      'port': ?port,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

