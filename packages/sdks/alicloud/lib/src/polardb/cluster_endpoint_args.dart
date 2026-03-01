// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_cluster_endpoint_cluster_endpoint_args_doc}
/// The set of arguments for ClusterEndpoint.
/// {@endtemplate}
/// {@macro pulumi_polardb_cluster_endpoint_cluster_endpoint_args_doc}
class ClusterEndpointArgs {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  final pulumi.Input<String>? autoAddNewNodes;
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of cluster that can run database.
  final pulumi.Input<String> dbClusterId;
  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;
  /// The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  final pulumi.Input<Map<String, String>>? endpointConfig;
  /// The network type of the endpoint address.
  final pulumi.Input<String>? netType;
  /// Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  final pulumi.Input<List<String>>? nodes;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;
  /// Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  final pulumi.Input<String>? readWriteMode;
  /// Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// **NOTE:** For a PolarDB for MySQL cluster, this parameter is required, and only one connection string in each endpoint can enable the ssl, for other notes, see [Configure SSL encryption](https://www.alibabacloud.com/help/doc-detail/153182.htm).
  /// For a PolarDB for PostgreSQL cluster or a PolarDB-O cluster, this parameter is not required, by default, SSL encryption is enabled for all endpoints.
  final pulumi.Input<String>? sslAutoRotate;
  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  final pulumi.Input<String>? sslEnabled;

  /// Creates a new [ClusterEndpointArgs].
  /// [autoAddNewNodes] Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointDescription] The name of the endpoint.
  /// [endpointConfig] The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  /// [netType] The network type of the endpoint address.
  /// [nodes] Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [readWriteMode] Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  /// [sslAutoRotate] Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// [sslEnabled] Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  ClusterEndpointArgs({
    pulumi.Output<String>? autoAddNewNodes,
    pulumi.Output<String>? connectionPrefix,
    required pulumi.Output<String> dbClusterId,
    pulumi.Output<String>? dbEndpointDescription,
    pulumi.Output<Map<String, String>>? endpointConfig,
    pulumi.Output<String>? netType,
    pulumi.Output<List<String>>? nodes,
    pulumi.Output<String>? port,
    pulumi.Output<String>? readWriteMode,
    pulumi.Output<String>? sslAutoRotate,
    pulumi.Output<String>? sslEnabled,
  }) :
      autoAddNewNodes = pulumi.Input.asOptionalInput<String>(autoAddNewNodes),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      dbEndpointDescription = pulumi.Input.asOptionalInput<String>(dbEndpointDescription),
      endpointConfig = pulumi.Input.asOptionalInput<Map<String, String>>(endpointConfig),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      nodes = pulumi.Input.asOptionalInput<List<String>>(nodes),
      port = pulumi.Input.asOptionalInput<String>(port),
      readWriteMode = pulumi.Input.asOptionalInput<String>(readWriteMode),
      sslAutoRotate = pulumi.Input.asOptionalInput<String>(sslAutoRotate),
      sslEnabled = pulumi.Input.asOptionalInput<String>(sslEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAddNewNodes': ?autoAddNewNodes,
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': dbClusterId,
      'dbEndpointDescription': ?dbEndpointDescription,
      'endpointConfig': ?endpointConfig,
      'netType': ?netType,
      'nodes': ?nodes,
      'port': ?port,
      'readWriteMode': ?readWriteMode,
      'sslAutoRotate': ?sslAutoRotate,
      'sslEnabled': ?sslEnabled,
    };
  }

  factory ClusterEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointArgs(
      autoAddNewNodes: map['autoAddNewNodes'] == null ? null : pulumi.Output.create<String>(map['autoAddNewNodes'] as String),
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : pulumi.Output.create<String>(map['dbEndpointDescription'] as String),
      endpointConfig: map['endpointConfig'] == null ? null : pulumi.Output.create<Map<String, String>>((map['endpointConfig'] as Map).cast<String, String>()),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<String>>((map['nodes'] as List).cast<String>()),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      readWriteMode: map['readWriteMode'] == null ? null : pulumi.Output.create<String>(map['readWriteMode'] as String),
      sslAutoRotate: map['sslAutoRotate'] == null ? null : pulumi.Output.create<String>(map['sslAutoRotate'] as String),
      sslEnabled: map['sslEnabled'] == null ? null : pulumi.Output.create<String>(map['sslEnabled'] as String),
    );
  }
}

