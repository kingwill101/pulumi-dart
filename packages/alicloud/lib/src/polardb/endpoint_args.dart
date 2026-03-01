// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_polardb_endpoint_endpoint_args_doc}
class EndpointArgs {
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
  /// Type of the endpoint. Before v1.121.0, it only can be `Custom`. since v1.121.0, `Custom`, `Cluster`, `Primary` are valid, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  final pulumi.Input<String>? endpointType;
  /// The network type of the endpoint address.
  final pulumi.Input<String>? netType;
  /// Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  final pulumi.Input<List<String>>? nodes;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;
  /// Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  final pulumi.Input<String>? readWriteMode;
  /// Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  final pulumi.Input<String>? sslAutoRotate;
  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  final pulumi.Input<String>? sslEnabled;

  /// Creates a new [EndpointArgs].
  /// [autoAddNewNodes] Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointDescription] The name of the endpoint.
  /// [endpointConfig] The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  /// [endpointType] Type of the endpoint. Before v1.121.0, it only can be `Custom`. since v1.121.0, `Custom`, `Cluster`, `Primary` are valid, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  /// [netType] The network type of the endpoint address.
  /// [nodes] Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [readWriteMode] Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  /// [sslAutoRotate] Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// [sslEnabled] Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  EndpointArgs({
    String? autoAddNewNodes,
    String? connectionPrefix,
    required String dbClusterId,
    String? dbEndpointDescription,
    Map<String, String>? endpointConfig,
    String? endpointType,
    String? netType,
    List<String>? nodes,
    String? port,
    String? readWriteMode,
    String? sslAutoRotate,
    String? sslEnabled,
  }) :
      autoAddNewNodes = pulumi.Input.asOptionalInput<String>(autoAddNewNodes),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      dbEndpointDescription = pulumi.Input.asOptionalInput<String>(dbEndpointDescription),
      endpointConfig = pulumi.Input.asOptionalInput<Map<String, String>>(endpointConfig),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
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
      'endpointType': ?endpointType,
      'netType': ?netType,
      'nodes': ?nodes,
      'port': ?port,
      'readWriteMode': ?readWriteMode,
      'sslAutoRotate': ?sslAutoRotate,
      'sslEnabled': ?sslEnabled,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      autoAddNewNodes: map['autoAddNewNodes'] == null ? null : map['autoAddNewNodes'] as String,
      connectionPrefix: map['connectionPrefix'] == null ? null : map['connectionPrefix'] as String,
      dbClusterId: map['dbClusterId'] as String,
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : map['dbEndpointDescription'] as String,
      endpointConfig: map['endpointConfig'] == null ? null : (map['endpointConfig'] as Map).cast<String, String>(),
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      netType: map['netType'] == null ? null : map['netType'] as String,
      nodes: map['nodes'] == null ? null : (map['nodes'] as List).cast<String>(),
      port: map['port'] == null ? null : map['port'] as String,
      readWriteMode: map['readWriteMode'] == null ? null : map['readWriteMode'] as String,
      sslAutoRotate: map['sslAutoRotate'] == null ? null : map['sslAutoRotate'] as String,
      sslEnabled: map['sslEnabled'] == null ? null : map['sslEnabled'] as String,
    );
  }
}

