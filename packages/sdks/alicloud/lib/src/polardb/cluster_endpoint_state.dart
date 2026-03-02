// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterEndpoint resources.
class ClusterEndpointState {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  final pulumi.Input<String>? autoAddNewNodes;
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;
  /// The ID of the cluster endpoint.
  final pulumi.Input<String>? dbEndpointId;
  /// The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  final pulumi.Input<Map<String, String>>? endpointConfig;
  /// Type of endpoint.
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
  /// **NOTE:** For a PolarDB for MySQL cluster, this parameter is required, and only one connection string in each endpoint can enable the ssl, for other notes, see [Configure SSL encryption](https://www.alibabacloud.com/help/doc-detail/153182.htm).
  /// For a PolarDB for PostgreSQL cluster or a PolarDB-O cluster, this parameter is not required, by default, SSL encryption is enabled for all endpoints.
  final pulumi.Input<String>? sslAutoRotate;
  /// The specifies SSL certificate download link.
  final pulumi.Input<String>? sslCertificateUrl;
  /// The SSL connection string.
  final pulumi.Input<String>? sslConnectionString;
  /// Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  final pulumi.Input<String>? sslEnabled;
  /// The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? sslExpireTime;

  /// Creates a new [ClusterEndpointState].
  /// [autoAddNewNodes] Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Disable`.
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointDescription] The name of the endpoint.
  /// [dbEndpointId] The ID of the cluster endpoint.
  /// [endpointConfig] The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  /// [endpointType] Type of endpoint.
  /// [netType] The network type of the endpoint address.
  /// [nodes] Node id list for endpoint configuration. At least 2 nodes if specified, or if the cluster has more than 3 nodes, read-only endpoint is allowed to mount only one node. Default is all nodes.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [readWriteMode] Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  /// [sslAutoRotate] Specifies whether automatic rotation of SSL certificates is enabled. Valid values: `Enable`,`Disable`.
  /// [sslCertificateUrl] The specifies SSL certificate download link.
  /// [sslConnectionString] The SSL connection string.
  /// [sslEnabled] Specifies how to modify the SSL encryption status. Valid values: `Disable`, `Enable`, `Update`.
  /// [sslExpireTime] The time when the SSL certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  ClusterEndpointState({
    this.autoAddNewNodes,
    this.connectionPrefix,
    this.dbClusterId,
    this.dbEndpointDescription,
    this.dbEndpointId,
    this.endpointConfig,
    this.endpointType,
    this.netType,
    this.nodes,
    this.port,
    this.readWriteMode,
    this.sslAutoRotate,
    this.sslCertificateUrl,
    this.sslConnectionString,
    this.sslEnabled,
    this.sslExpireTime,
  });

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

  factory ClusterEndpointState.fromMap(Map<String, dynamic> map) {
    return ClusterEndpointState(
      autoAddNewNodes: map['autoAddNewNodes'] == null ? null : (map['autoAddNewNodes']! as String).input(),
      connectionPrefix: map['connectionPrefix'] == null ? null : (map['connectionPrefix']! as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId']! as String).input(),
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : (map['dbEndpointDescription']! as String).input(),
      dbEndpointId: map['dbEndpointId'] == null ? null : (map['dbEndpointId']! as String).input(),
      endpointConfig: map['endpointConfig'] == null ? null : ((map['endpointConfig']! as Map).cast<String, String>()).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      netType: map['netType'] == null ? null : (map['netType']! as String).input(),
      nodes: map['nodes'] == null ? null : ((map['nodes']! as List).cast<String>()).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      readWriteMode: map['readWriteMode'] == null ? null : (map['readWriteMode']! as String).input(),
      sslAutoRotate: map['sslAutoRotate'] == null ? null : (map['sslAutoRotate']! as String).input(),
      sslCertificateUrl: map['sslCertificateUrl'] == null ? null : (map['sslCertificateUrl']! as String).input(),
      sslConnectionString: map['sslConnectionString'] == null ? null : (map['sslConnectionString']! as String).input(),
      sslEnabled: map['sslEnabled'] == null ? null : (map['sslEnabled']! as String).input(),
      sslExpireTime: map['sslExpireTime'] == null ? null : (map['sslExpireTime']! as String).input(),
    );
  }
}

