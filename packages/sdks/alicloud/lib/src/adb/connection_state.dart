// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `&lt;db_cluster_id&gt; + tf`.
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
  /// [connectionPrefix] Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `&lt;db_cluster_id&gt; + tf`.
  /// [connectionString] Connection cluster string.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [ipAddress] The ip address of connection string.
  /// [port] Connection cluster port.
  const ConnectionState({
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
      connectionPrefix: (() { final guardedValue = map['connectionPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

