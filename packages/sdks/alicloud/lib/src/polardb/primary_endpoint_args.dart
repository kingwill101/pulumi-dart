// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_primary_endpoint_primary_endpoint_args_doc}
/// The set of arguments for PrimaryEndpoint.
/// {@endtemplate}
/// {@macro pulumi_polardb_primary_endpoint_primary_endpoint_args_doc}
class PrimaryEndpointArgs {
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;

  /// The Id of cluster that can run database.
  final pulumi.Input<String> dbClusterId;

  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;

  /// The network type of the endpoint address.
  final pulumi.Input<String>? netType;

  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;

  /// Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// **NOTE:** For a PolarDB for MySQL cluster, this parameter is required, and only one connection string in each endpoint can enable the ssl, for other notes, see [Configure SSL encryption](https://www.alibabacloud.com/help/doc-detail/153182.htm).
  /// For a PolarDB for PostgreSQL cluster or a PolarDB-O cluster, this parameter is not required, by default, SSL encryption is enabled for all endpoints.
  final pulumi.Input<String>? sslAutoRotate;

  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  final pulumi.Input<String>? sslEnabled;

  /// Creates a new [PrimaryEndpointArgs].
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointDescription] The name of the endpoint.
  /// [netType] The network type of the endpoint address.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [sslAutoRotate] Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// [sslEnabled] Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  PrimaryEndpointArgs({
    this.connectionPrefix,
    required this.dbClusterId,
    this.dbEndpointDescription,
    this.netType,
    this.port,
    this.sslAutoRotate,
    this.sslEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': dbClusterId,
      'dbEndpointDescription': ?dbEndpointDescription,
      'netType': ?netType,
      'port': ?port,
      'sslAutoRotate': ?sslAutoRotate,
      'sslEnabled': ?sslEnabled,
    };
  }

  factory PrimaryEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PrimaryEndpointArgs(
      connectionPrefix: (() {
        final guardedValue = map['connectionPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbEndpointDescription: (() {
        final guardedValue = map['dbEndpointDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netType: (() {
        final guardedValue = map['netType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslAutoRotate: (() {
        final guardedValue = map['sslAutoRotate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslEnabled: (() {
        final guardedValue = map['sslEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
