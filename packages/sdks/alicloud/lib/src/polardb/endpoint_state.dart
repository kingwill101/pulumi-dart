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

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      autoAddNewNodes: (() {
        final guardedValue = map['autoAddNewNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionPrefix: (() {
        final guardedValue = map['connectionPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: (() {
        final guardedValue = map['dbClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbEndpointDescription: (() {
        final guardedValue = map['dbEndpointDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbEndpointId: (() {
        final guardedValue = map['dbEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointConfig: (() {
        final guardedValue = map['endpointConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      endpointType: (() {
        final guardedValue = map['endpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netType: (() {
        final guardedValue = map['netType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodes: (() {
        final guardedValue = map['nodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readWriteMode: (() {
        final guardedValue = map['readWriteMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslAutoRotate: (() {
        final guardedValue = map['sslAutoRotate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCertificateUrl: (() {
        final guardedValue = map['sslCertificateUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslConnectionString: (() {
        final guardedValue = map['sslConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslEnabled: (() {
        final guardedValue = map['sslEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslExpireTime: (() {
        final guardedValue = map['sslExpireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
