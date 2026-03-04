import 'package:pulumi/pulumi.dart' as pulumi;
import 'zonal_endpoint_args.dart';
import 'zonal_endpoint_state.dart';

/// Provides a PolarDB Zonal endpoint resource to manage custom endpoint of PolarDB cluster.
///
/// &gt; **NOTE:** Available since v1.262.0.
/// &gt; **NOTE:** The primary endpoint and the default cluster endpoint can not be created or deleted manually.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// // The advanced configuration for all nodes in the cluster except for the RW node, including db_node_class, hot_replica_mode, and imci_switch properties.
/// const dbClusterNodesConfigs = config.getObject<Record<string, {dbNodeClass?: string, dbNodeRole?: string, hotReplicaMode?: string, imciSwitch?: string}>>("dbClusterNodesConfigs") || {
///     db_node_1: {
///         dbNodeClass: "polar.mysql.x4.medium.c",
///         dbNodeRole: "Writer",
///         hotReplicaMode: null,
///         imciSwitch: null,
///     },
///     db_node_2: {
///         dbNodeClass: "polar.mysql.x4.medium.c",
///         dbNodeRole: "Reader",
///         hotReplicaMode: null,
///         imciSwitch: null,
///     },
/// };
/// const _default = new alicloud.ens.Network("default", {
///     networkName: "terraform-example",
///     description: "LoadBalancerNetworkDescription_test",
///     cidrBlock: "192.168.2.0/24",
///     ensRegionId: "tr-Istanbul-1",
/// });
/// const defaultVswitch = new alicloud.ens.Vswitch("default", {
///     description: "LoadBalancerVSwitchDescription_test",
///     cidrBlock: "192.168.2.0/24",
///     vswitchName: "terraform-example",
///     ensRegionId: "tr-Istanbul-1",
///     networkId: _default.id,
/// });
/// const defaultZonalDbCluster = new alicloud.polardb.ZonalDbCluster("default", {
///     dbNodeClass: "polar.mysql.x4.medium.c",
///     description: "terraform-example",
///     ensRegionId: "tr-Istanbul-1",
///     vpcId: _default.id,
///     vswitchId: defaultVswitch.id,
///     dbClusterNodesConfigs: Object.entries(dbClusterNodesConfigs).reduce((__obj, [node, config]) => ({ ...__obj, [node]: JSON.stringify(Object.entries(config).filter(([k, v]) => v != null).reduce((__obj, [k, v]) => ({ ...__obj, [k]: v }))) })),
/// });
/// const defaultZonalEndpoint = new alicloud.polardb.ZonalEndpoint("default", {
///     dbClusterId: defaultZonalDbCluster.id,
///     dbClusterNodesIds: defaultZonalDbCluster.dbClusterNodesIds,
///     endpointConfig: {},
///     nodesKeys: [
///         "db_node_1",
///         "db_node_2",
///     ],
///     readWriteMode: "ReadWrite",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// # The advanced configuration for all nodes in the cluster except for the RW node, including db_node_class, hot_replica_mode, and imci_switch properties.
/// db_cluster_nodes_configs = config.get_object("dbClusterNodesConfigs")
/// if db_cluster_nodes_configs is None:
///     db_cluster_nodes_configs = {
///         "db_node_1": {
///             "dbNodeClass": "polar.mysql.x4.medium.c",
///             "dbNodeRole": "Writer",
///             "hotReplicaMode": None,
///             "imciSwitch": None,
///         },
///         "db_node_2": {
///             "dbNodeClass": "polar.mysql.x4.medium.c",
///             "dbNodeRole": "Reader",
///             "hotReplicaMode": None,
///             "imciSwitch": None,
///         },
///     }
/// default = alicloud.ens.Network("default",
///     network_name="terraform-example",
///     description="LoadBalancerNetworkDescription_test",
///     cidr_block="192.168.2.0/24",
///     ens_region_id="tr-Istanbul-1")
/// default_vswitch = alicloud.ens.Vswitch("default",
///     description="LoadBalancerVSwitchDescription_test",
///     cidr_block="192.168.2.0/24",
///     vswitch_name="terraform-example",
///     ens_region_id="tr-Istanbul-1",
///     network_id=default.id)
/// default_zonal_db_cluster = alicloud.polardb.ZonalDbCluster("default",
///     db_node_class="polar.mysql.x4.medium.c",
///     description="terraform-example",
///     ens_region_id="tr-Istanbul-1",
///     vpc_id=default.id,
///     vswitch_id=default_vswitch.id,
///     db_cluster_nodes_configs={node: json.dumps({k: v for k, v in config if v != None}) for node, config in db_cluster_nodes_configs})
/// default_zonal_endpoint = alicloud.polardb.ZonalEndpoint("default",
///     db_cluster_id=default_zonal_db_cluster.id,
///     db_cluster_nodes_ids=default_zonal_db_cluster.db_cluster_nodes_ids,
///     endpoint_config={},
///     nodes_keys=[
///         "db_node_1",
///         "db_node_2",
///     ],
///     read_write_mode="ReadWrite")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     // The advanced configuration for all nodes in the cluster except for the RW node, including db_node_class, hot_replica_mode, and imci_switch properties.
///     var dbClusterNodesConfigs = config.GetObject<Dictionary<string, DbClusterNodesConfigs>>("dbClusterNodesConfigs") ??
///     {
///         { "db_node_1",
///         {
///             { "dbNodeClass", "polar.mysql.x4.medium.c" },
///             { "dbNodeRole", "Writer" },
///             { "hotReplicaMode", null },
///             { "imciSwitch", null },
///         } },
///         { "db_node_2",
///         {
///             { "dbNodeClass", "polar.mysql.x4.medium.c" },
///             { "dbNodeRole", "Reader" },
///             { "hotReplicaMode", null },
///             { "imciSwitch", null },
///         } },
///     };
///     var @default = new AliCloud.Ens.Network("default", new()
///     {
///         NetworkName = "terraform-example",
///         Description = "LoadBalancerNetworkDescription_test",
///         CidrBlock = "192.168.2.0/24",
///         EnsRegionId = "tr-Istanbul-1",
///     });
///
///     var defaultVswitch = new AliCloud.Ens.Vswitch("default", new()
///     {
///         Description = "LoadBalancerVSwitchDescription_test",
///         CidrBlock = "192.168.2.0/24",
///         VswitchName = "terraform-example",
///         EnsRegionId = "tr-Istanbul-1",
///         NetworkId = @default.Id,
///     });
///
///     var defaultZonalDbCluster = new AliCloud.PolarDB.ZonalDbCluster("default", new()
///     {
///         DbNodeClass = "polar.mysql.x4.medium.c",
///         Description = "terraform-example",
///         EnsRegionId = "tr-Istanbul-1",
///         VpcId = @default.Id,
///         VswitchId = defaultVswitch.Id,
///         DbClusterNodesConfigs = dbClusterNodesConfigs.Select(pair => new { pair.Key, pair.Value }).ToDictionary(item => {
///             var node = item.Key;
///             return node;
///         }, item => {
///             var config = item.Value;
///             return JsonSerializer.Serialize(.ToDictionary(item => {
///                 var k = item.Key;
///                 return k;
///             }, item => {
///                 var v = item.Value;
///                 return v;
///             }));
///         }),
///     });
///
///     var defaultZonalEndpoint = new AliCloud.PolarDB.ZonalEndpoint("default", new()
///     {
///         DbClusterId = defaultZonalDbCluster.Id,
///         DbClusterNodesIds = defaultZonalDbCluster.DbClusterNodesIds,
///         EndpointConfig = null,
///         NodesKeys = new[]
///         {
///             "db_node_1",
///             "db_node_2",
///         },
///         ReadWriteMode = "ReadWrite",
///     });
///
/// });
///
/// public class DbClusterNodesConfigs
/// {
///     public string dbNodeClass { get; set; }
///     public string dbNodeRole { get; set; }
///     public string hotReplicaMode { get; set; }
///     public string imciSwitch { get; set; }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PolarDB Zonal endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/zonalEndpoint:ZonalEndpoint example pc-abc123456:pe-abc123456
/// ```
class ZonalEndpoint extends pulumi.CustomResource {
  /// Whether the new node automatically joins the default cluster address. Valid values are `Enable`, `Disable`. When creating a new custom endpoint, default to `Enable`.
  late final pulumi.Output<String> autoAddNewNodes;

  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  late final pulumi.Output<String> connectionPrefix;

  /// The Id of cluster that can run database.
  late final pulumi.Output<String> dbClusterId;

  /// referenced from the db_cluster_nodes_ids attribute of alicloud_polardb_zonal_db_cluster..
  late final pulumi.Output<Map<String, String>> dbClusterNodesIds;

  /// The name of the endpoint.
  late final pulumi.Output<String?> dbEndpointDescription;

  /// The ID of the cluster endpoint.
  late final pulumi.Output<String> dbEndpointId;

  /// The advanced settings of the endpoint of Apsara PolarDB clusters are in JSON format. Including the settings of consistency level, transaction splitting, connection pool, and offload reads from primary node. For more details, see the [description of EndpointConfig in the Request parameters table for details](https://www.alibabacloud.com/help/doc-detail/116593.htm).
  late final pulumi.Output<Map<String, String>?> endpointConfig;

  /// Type of the endpoint. Valid values are `Custom`, `Cluster`, `Primary`, default to `Custom`. However when creating a new endpoint, it also only can be `Custom`.
  late final pulumi.Output<String> endpointType;

  /// The network type of the endpoint address.
  late final pulumi.Output<String> netType;

  /// Node id list for endpoint configuration.
  late final pulumi.Output<List<String>> nodes;

  /// The list of backend nodes for the endpoint, with the attribute values derived from the map key of db_cluster_nodes_ids.
  late final pulumi.Output<List<String>?> nodesKeys;

  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  late final pulumi.Output<String> port;

  /// Read or write mode. Valid values are `ReadWrite`, `ReadOnly`. When creating a new custom endpoint, default to `ReadOnly`.
  late final pulumi.Output<String?> readWriteMode;

  /// The ID of ENS VPC where to use the DB.
  late final pulumi.Output<String> vpcId;

  /// The ID of ENS virtual switch where to use the DB.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [ZonalEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZonalEndpoint]. {@macro pulumi_polardb_zonal_endpoint_zonal_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZonalEndpoint(
    String name, {
    ZonalEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/zonalEndpoint:ZonalEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoAddNewNodes = registerOutput<String>('autoAddNewNodes');
    connectionPrefix = registerOutput<String>('connectionPrefix');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbClusterNodesIds = registerOutput<Map<String, String>>(
      'dbClusterNodesIds',
    );
    dbEndpointDescription = registerOutput<String?>('dbEndpointDescription');
    dbEndpointId = registerOutput<String>('dbEndpointId');
    endpointConfig = registerOutput<Map<String, String>?>('endpointConfig');
    endpointType = registerOutput<String>('endpointType');
    netType = registerOutput<String>('netType');
    nodes = registerOutput<List<String>>('nodes');
    nodesKeys = registerOutput<List<String>?>('nodesKeys');
    port = registerOutput<String>('port');
    readWriteMode = registerOutput<String?>('readWriteMode');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [ZonalEndpoint] resource's state with the given [name] and [id].
  static ZonalEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ZonalEndpointState? state,
  }) {
    return ZonalEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZonalEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/zonalEndpoint:ZonalEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoAddNewNodes = registerOutput<String>('autoAddNewNodes');
    connectionPrefix = registerOutput<String>('connectionPrefix');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbClusterNodesIds = registerOutput<Map<String, String>>(
      'dbClusterNodesIds',
    );
    dbEndpointDescription = registerOutput<String?>('dbEndpointDescription');
    dbEndpointId = registerOutput<String>('dbEndpointId');
    endpointConfig = registerOutput<Map<String, String>?>('endpointConfig');
    endpointType = registerOutput<String>('endpointType');
    netType = registerOutput<String>('netType');
    nodes = registerOutput<List<String>>('nodes');
    nodesKeys = registerOutput<List<String>?>('nodesKeys');
    port = registerOutput<String>('port');
    readWriteMode = registerOutput<String?>('readWriteMode');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
