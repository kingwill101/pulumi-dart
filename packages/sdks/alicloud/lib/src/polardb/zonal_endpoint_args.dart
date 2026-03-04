// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_zonal_endpoint_zonal_endpoint_args_doc}
/// The set of arguments for ZonalEndpoint.
/// {@endtemplate}
/// {@macro pulumi_polardb_zonal_endpoint_zonal_endpoint_args_doc}
class ZonalEndpointArgs {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Enable`.
  final pulumi.Input<String>? autoAddNewNodes;

  /// The Id of cluster that can run database.
  final pulumi.Input<String> dbClusterId;

  /// referenced from the db_cluster_nodes_ids attribute of alicloud_polardb_zonal_db_cluster..
  final pulumi.Input<Map<String, String>> dbClusterNodesIds;

  /// The name of the endpoint.
  final pulumi.Input<String>? dbEndpointDescription;

  /// The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  final pulumi.Input<Map<String, String>>? endpointConfig;

  /// Type of the endpoint. Valid values are `Custom`, `Cluster`, `Primary`, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  final pulumi.Input<String>? endpointType;

  /// The network type of the endpoint address.
  final pulumi.Input<String>? netType;

  /// The list of backend nodes for the endpoint, with the attribute values derived from the map key of db_cluster_nodes_ids.
  final pulumi.Input<List<String>>? nodesKeys;

  /// Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  final pulumi.Input<String>? readWriteMode;

  /// The ID of ENS VPC where to use the DB.
  final pulumi.Input<String>? vpcId;

  /// The ID of ENS virtual switch where to use the DB.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ZonalEndpointArgs].
  /// [autoAddNewNodes] Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Enable`.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbClusterNodesIds] referenced from the db_cluster_nodes_ids attribute of alicloud_polardb_zonal_db_cluster..
  /// [dbEndpointDescription] The name of the endpoint.
  /// [endpointConfig] The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  /// [endpointType] Type of the endpoint. Valid values are `Custom`, `Cluster`, `Primary`, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  /// [netType] The network type of the endpoint address.
  /// [nodesKeys] The list of backend nodes for the endpoint, with the attribute values derived from the map key of db_cluster_nodes_ids.
  /// [readWriteMode] Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  /// [vpcId] The ID of ENS VPC where to use the DB.
  /// [vswitchId] The ID of ENS virtual switch where to use the DB.
  ZonalEndpointArgs({
    this.autoAddNewNodes,
    required this.dbClusterId,
    required this.dbClusterNodesIds,
    this.dbEndpointDescription,
    this.endpointConfig,
    this.endpointType,
    this.netType,
    this.nodesKeys,
    this.readWriteMode,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAddNewNodes': ?autoAddNewNodes,
      'dbClusterId': dbClusterId,
      'dbClusterNodesIds': dbClusterNodesIds,
      'dbEndpointDescription': ?dbEndpointDescription,
      'endpointConfig': ?endpointConfig,
      'endpointType': ?endpointType,
      'netType': ?netType,
      'nodesKeys': ?nodesKeys,
      'readWriteMode': ?readWriteMode,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ZonalEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ZonalEndpointArgs(
      autoAddNewNodes: (() {
        final guardedValue = map['autoAddNewNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbClusterNodesIds: pulumi.Input.fromValue(
        (map['dbClusterNodesIds'] as Map).cast<String, String>(),
      ),
      dbEndpointDescription: (() {
        final guardedValue = map['dbEndpointDescription'];
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
      nodesKeys: (() {
        final guardedValue = map['nodesKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      readWriteMode: (() {
        final guardedValue = map['readWriteMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
