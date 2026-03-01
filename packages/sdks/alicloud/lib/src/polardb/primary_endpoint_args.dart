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
    pulumi.Output<String>? connectionPrefix,
    required pulumi.Output<String> dbClusterId,
    pulumi.Output<String>? dbEndpointDescription,
    pulumi.Output<String>? netType,
    pulumi.Output<String>? port,
    pulumi.Output<String>? sslAutoRotate,
    pulumi.Output<String>? sslEnabled,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      dbEndpointDescription = pulumi.Input.asOptionalInput<String>(dbEndpointDescription),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      port = pulumi.Input.asOptionalInput<String>(port),
      sslAutoRotate = pulumi.Input.asOptionalInput<String>(sslAutoRotate),
      sslEnabled = pulumi.Input.asOptionalInput<String>(sslEnabled);

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
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : pulumi.Output.create<String>(map['dbEndpointDescription'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      sslAutoRotate: map['sslAutoRotate'] == null ? null : pulumi.Output.create<String>(map['sslAutoRotate'] as String),
      sslEnabled: map['sslEnabled'] == null ? null : pulumi.Output.create<String>(map['sslEnabled'] as String),
    );
  }
}

