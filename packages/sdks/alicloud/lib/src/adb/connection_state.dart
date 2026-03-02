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
    this.connectionPrefix,
    this.connectionString,
    this.dbClusterId,
    this.ipAddress,
    this.port,
  });

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
      connectionPrefix: map['connectionPrefix'] == null ? null : (map['connectionPrefix']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
    );
  }
}

