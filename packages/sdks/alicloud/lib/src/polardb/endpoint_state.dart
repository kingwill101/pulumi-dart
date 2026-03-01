// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  final pulumi.Input<String>? autoAddNewNodes;
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;
  /// (Available since v1.161.0) The ID of the cluster endpoint.
  final pulumi.Input<String>? dbEndpointId;
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
  /// Specifies SSL certificate download link.
  /// **NOTE:** For a PolarDB for MySQL cluster, this parameter is required, and only one connection string in each endpoint can enable the ssl, for other notes, see [Configure SSL encryption](https://www.alibabacloud.com/help/doc-detail/153182.htm).
  /// For a PolarDB for PostgreSQL cluster or a PolarDB-O cluster, this parameter is not required, by default, SSL encryption is enabled for all endpoints.
  final pulumi.Input<String>? sslCertificateUrl;
  /// (Available since v1.121.0) The SSL connection string.
  final pulumi.Input<String>? sslConnectionString;
  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  final pulumi.Input<String>? sslEnabled;
  /// (Available since v1.121.0) The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? sslExpireTime;

  /// Creates a new [EndpointState].
  /// [autoAddNewNodes] Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointDescription] The name of the endpoint.
  /// [dbEndpointId] (Available since v1.161.0) The ID of the cluster endpoint.
  /// [endpointConfig] The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  /// [endpointType] Type of the endpoint. Before v1.121.0, it only can be `Custom`. since v1.121.0, `Custom`, `Cluster`, `Primary` are valid, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  /// [netType] The network type of the endpoint address.
  /// [nodes] Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [readWriteMode] Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  /// [sslAutoRotate] Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// [sslCertificateUrl] Specifies SSL certificate download link.
  /// [sslConnectionString] (Available since v1.121.0) The SSL connection string.
  /// [sslEnabled] Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  /// [sslExpireTime] (Available since v1.121.0) The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  EndpointState({
    pulumi.Output<String>? autoAddNewNodes,
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? dbEndpointDescription,
    pulumi.Output<String>? dbEndpointId,
    pulumi.Output<Map<String, String>>? endpointConfig,
    pulumi.Output<String>? endpointType,
    pulumi.Output<String>? netType,
    pulumi.Output<List<String>>? nodes,
    pulumi.Output<String>? port,
    pulumi.Output<String>? readWriteMode,
    pulumi.Output<String>? sslAutoRotate,
    pulumi.Output<String>? sslCertificateUrl,
    pulumi.Output<String>? sslConnectionString,
    pulumi.Output<String>? sslEnabled,
    pulumi.Output<String>? sslExpireTime,
  }) :
      autoAddNewNodes = pulumi.Input.asOptionalInput<String>(autoAddNewNodes),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbEndpointDescription = pulumi.Input.asOptionalInput<String>(dbEndpointDescription),
      dbEndpointId = pulumi.Input.asOptionalInput<String>(dbEndpointId),
      endpointConfig = pulumi.Input.asOptionalInput<Map<String, String>>(endpointConfig),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      nodes = pulumi.Input.asOptionalInput<List<String>>(nodes),
      port = pulumi.Input.asOptionalInput<String>(port),
      readWriteMode = pulumi.Input.asOptionalInput<String>(readWriteMode),
      sslAutoRotate = pulumi.Input.asOptionalInput<String>(sslAutoRotate),
      sslCertificateUrl = pulumi.Input.asOptionalInput<String>(sslCertificateUrl),
      sslConnectionString = pulumi.Input.asOptionalInput<String>(sslConnectionString),
      sslEnabled = pulumi.Input.asOptionalInput<String>(sslEnabled),
      sslExpireTime = pulumi.Input.asOptionalInput<String>(sslExpireTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAddNewNodes': ?autoAddNewNodes,
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': ?dbClusterId,
      'dbEndpointDescription': ?dbEndpointDescription,
      'dbEndpointId': ?dbEndpointId,
      'endpointConfig': ?endpointConfig,
      'endpointType': ?endpointType,
      'netType': ?netType,
      'nodes': ?nodes,
      'port': ?port,
      'readWriteMode': ?readWriteMode,
      'sslAutoRotate': ?sslAutoRotate,
      'sslCertificateUrl': ?sslCertificateUrl,
      'sslConnectionString': ?sslConnectionString,
      'sslEnabled': ?sslEnabled,
      'sslExpireTime': ?sslExpireTime,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      autoAddNewNodes: map['autoAddNewNodes'] == null ? null : pulumi.Output.create<String>(map['autoAddNewNodes'] as String),
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : pulumi.Output.create<String>(map['dbEndpointDescription'] as String),
      dbEndpointId: map['dbEndpointId'] == null ? null : pulumi.Output.create<String>(map['dbEndpointId'] as String),
      endpointConfig: map['endpointConfig'] == null ? null : pulumi.Output.create<Map<String, String>>((map['endpointConfig'] as Map).cast<String, String>()),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<String>>((map['nodes'] as List).cast<String>()),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      readWriteMode: map['readWriteMode'] == null ? null : pulumi.Output.create<String>(map['readWriteMode'] as String),
      sslAutoRotate: map['sslAutoRotate'] == null ? null : pulumi.Output.create<String>(map['sslAutoRotate'] as String),
      sslCertificateUrl: map['sslCertificateUrl'] == null ? null : pulumi.Output.create<String>(map['sslCertificateUrl'] as String),
      sslConnectionString: map['sslConnectionString'] == null ? null : pulumi.Output.create<String>(map['sslConnectionString'] as String),
      sslEnabled: map['sslEnabled'] == null ? null : pulumi.Output.create<String>(map['sslEnabled'] as String),
      sslExpireTime: map['sslExpireTime'] == null ? null : pulumi.Output.create<String>(map['sslExpireTime'] as String),
    );
  }
}

