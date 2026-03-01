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
    pulumi.Output<String>? autoAddNewNodes,
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<Map<String, String>>? dbClusterNodesIds,
    pulumi.Output<String>? dbEndpointDescription,
    pulumi.Output<String>? dbEndpointId,
    pulumi.Output<Map<String, String>>? endpointConfig,
    pulumi.Output<String>? endpointType,
    pulumi.Output<String>? netType,
    pulumi.Output<List<String>>? nodes,
    pulumi.Output<List<String>>? nodesKeys,
    pulumi.Output<String>? port,
    pulumi.Output<String>? readWriteMode,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      autoAddNewNodes = pulumi.Input.asOptionalInput<String>(autoAddNewNodes),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbClusterNodesIds = pulumi.Input.asOptionalInput<Map<String, String>>(dbClusterNodesIds),
      dbEndpointDescription = pulumi.Input.asOptionalInput<String>(dbEndpointDescription),
      dbEndpointId = pulumi.Input.asOptionalInput<String>(dbEndpointId),
      endpointConfig = pulumi.Input.asOptionalInput<Map<String, String>>(endpointConfig),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      nodes = pulumi.Input.asOptionalInput<List<String>>(nodes),
      nodesKeys = pulumi.Input.asOptionalInput<List<String>>(nodesKeys),
      port = pulumi.Input.asOptionalInput<String>(port),
      readWriteMode = pulumi.Input.asOptionalInput<String>(readWriteMode),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      autoAddNewNodes: map['autoAddNewNodes'] == null ? null : pulumi.Output.create<String>(map['autoAddNewNodes'] as String),
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbClusterNodesIds: map['dbClusterNodesIds'] == null ? null : pulumi.Output.create<Map<String, String>>((map['dbClusterNodesIds'] as Map).cast<String, String>()),
      dbEndpointDescription: map['dbEndpointDescription'] == null ? null : pulumi.Output.create<String>(map['dbEndpointDescription'] as String),
      dbEndpointId: map['dbEndpointId'] == null ? null : pulumi.Output.create<String>(map['dbEndpointId'] as String),
      endpointConfig: map['endpointConfig'] == null ? null : pulumi.Output.create<Map<String, String>>((map['endpointConfig'] as Map).cast<String, String>()),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<String>>((map['nodes'] as List).cast<String>()),
      nodesKeys: map['nodesKeys'] == null ? null : pulumi.Output.create<List<String>>((map['nodesKeys'] as List).cast<String>()),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      readWriteMode: map['readWriteMode'] == null ? null : pulumi.Output.create<String>(map['readWriteMode'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

