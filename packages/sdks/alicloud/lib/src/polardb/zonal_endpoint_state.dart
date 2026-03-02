// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZonalEndpoint resources.
class ZonalEndpointState {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Enable`.
  final pulumi.Input<String>? autoAddNewNodes;
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of cluster that can run database.
  final pulumi.Input<String>? dbClusterId;
  /// referenced from the db_cluster_nodes_ids attribute of alicloud_polardb_zonal_db_cluster..
  final pulumi.Input<Map<String, String>>? dbClusterNodesIds;
  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;
  /// The ID of the cluster endpoint.
  final pulumi.Input<String>? dbEndpointId;
  /// The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  final pulumi.Input<Map<String, String>>? endpointConfig;
  /// Type of the endpoint. Valid values are `Custom`, `Cluster`, `Primary`, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  final pulumi.Input<String>? endpointType;
  /// The network type of the endpoint address.
  final pulumi.Input<String>? netType;
  /// Node id list for endpoint configuration.
  final pulumi.Input<List<String>>? nodes;
  /// The list of backend nodes for the endpoint, with the attribute values derived from the map key of db_cluster_nodes_ids.
  final pulumi.Input<List<String>>? nodesKeys;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;
  /// Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  final pulumi.Input<String>? readWriteMode;
  /// The ID of ENS VPC where to use the DB.
  final pulumi.Input<String>? vpcId;
  /// The ID of ENS virtual switch where to use the DB.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ZonalEndpointState].
  /// [autoAddNewNodes] Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Enable`.
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbClusterNodesIds] referenced from the db_cluster_nodes_ids attribute of alicloud_polardb_zonal_db_cluster..
  /// [dbEndpointDescription] The name of the endpoint.
  /// [dbEndpointId] The ID of the cluster endpoint.
  /// [endpointConfig] The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  /// [endpointType] Type of the endpoint. Valid values are `Custom`, `Cluster`, `Primary`, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  /// [netType] The network type of the endpoint address.
  /// [nodes] Node id list for endpoint configuration.
  /// [nodesKeys] The list of backend nodes for the endpoint, with the attribute values derived from the map key of db_cluster_nodes_ids.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  /// [readWriteMode] Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  /// [vpcId] The ID of ENS VPC where to use the DB.
  /// [vswitchId] The ID of ENS virtual switch where to use the DB.
  ZonalEndpointState({
    this.autoAddNewNodes,
    this.connectionPrefix,
    this.dbClusterId,
    this.dbClusterNodesIds,
    this.dbEndpointDescription,
    this.dbEndpointId,
    this.endpointConfig,
    this.endpointType,
    this.netType,
    this.nodes,
    this.nodesKeys,
    this.port,
    this.readWriteMode,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAddNewNodes': ?autoAddNewNodes,
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': ?dbClusterId,
      'dbClusterNodesIds': ?dbClusterNodesIds,
      'dbEndpointDescription': ?dbEndpointDescription,
      'dbEndpointId': ?dbEndpointId,
      'endpointConfig': ?endpointConfig,
      'endpointType': ?endpointType,
      'netType': ?netType,
      'nodes': ?nodes,
      'nodesKeys': ?nodesKeys,
      'port': ?port,
      'readWriteMode': ?readWriteMode,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ZonalEndpointState.fromMap(Map<String, dynamic> map) {
    return ZonalEndpointState(
      autoAddNewNodes: map['autoAddNewNodes'] == null ? null : (map['autoAddNewNodes']! as String).input(),
      connectionPrefix: map['connectionPrefix'] == null ? null : (map['connectionPrefix']! as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId']! as String).input(),
      dbClusterNodesIds: map['dbClusterNodesIds'] == null ? null : ((map['dbClusterNodesIds']! as Map).cast<String, String>()).input(),
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : (map['dbEndpointDescription']! as String).input(),
      dbEndpointId: map['dbEndpointId'] == null ? null : (map['dbEndpointId']! as String).input(),
      endpointConfig: map['endpointConfig'] == null ? null : ((map['endpointConfig']! as Map).cast<String, String>()).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      netType: map['netType'] == null ? null : (map['netType']! as String).input(),
      nodes: map['nodes'] == null ? null : ((map['nodes']! as List).cast<String>()).input(),
      nodesKeys: map['nodesKeys'] == null ? null : ((map['nodesKeys']! as List).cast<String>()).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      readWriteMode: map['readWriteMode'] == null ? null : (map['readWriteMode']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

