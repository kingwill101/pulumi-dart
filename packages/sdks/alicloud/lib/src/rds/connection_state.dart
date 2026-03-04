// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The Tabular Data Stream (TDS) port of the instance for which Babelfish is enabled.
  ///
  /// &gt; **NOTE:** This parameter applies only to ApsaraDB RDS for PostgreSQL instances. For more information about Babelfish for ApsaraDB RDS for PostgreSQL, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  final pulumi.Input<String>? babelfishPort;

  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 40 characters. Default to &lt;instance_id&gt; + 'tf'.
  final pulumi.Input<String>? connectionPrefix;

  /// Connection instance string.
  final pulumi.Input<String>? connectionString;

  /// The Id of instance that can run database.
  final pulumi.Input<String>? instanceId;

  /// The ip address of connection string.
  final pulumi.Input<String>? ipAddress;

  /// Internet connection port. Valid value: [1000-5999]. Default to 3306.
  final pulumi.Input<String>? port;

  /// Creates a new [ConnectionState].
  /// [babelfishPort] The Tabular Data Stream (TDS) port of the instance for which Babelfish is enabled.
  /// [connectionPrefix] Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 40 characters. Default to &lt;instance_id&gt; + 'tf'.
  /// [connectionString] Connection instance string.
  /// [instanceId] The Id of instance that can run database.
  /// [ipAddress] The ip address of connection string.
  /// [port] Internet connection port. Valid value: [1000-5999]. Default to 3306.
  ConnectionState({
    this.babelfishPort,
    this.connectionPrefix,
    this.connectionString,
    this.instanceId,
    this.ipAddress,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'babelfishPort': ?babelfishPort,
      'connectionPrefix': ?connectionPrefix,
      'connectionString': ?connectionString,
      'instanceId': ?instanceId,
      'ipAddress': ?ipAddress,
      'port': ?port,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      babelfishPort: (() {
        final guardedValue = map['babelfishPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionPrefix: (() {
        final guardedValue = map['connectionPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
