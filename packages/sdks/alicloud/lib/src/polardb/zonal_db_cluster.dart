import 'package:pulumi/pulumi.dart' as pulumi;
import 'zonal_db_cluster_args.dart';
import 'zonal_db_cluster_state.dart';

/// Provides an PolarDB zonal cluster resource. An PolarDB zonal cluster is an isolated database
/// environment in the cloud. An PolarDB zonal cluster can contain multiple user-created
/// databases.
///
/// &gt; **NOTE:** Available since v1.261.0.
///
/// ## Example Usage
///
/// Create a PolarDB MySQL zonal cluster
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
/// PolarDB zonal cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/zonalDbCluster:ZonalDbCluster example pc-abc12345678
/// ```
class ZonalDbCluster extends pulumi.CustomResource {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// PolarDB zonal cluster latest version.
  late final pulumi.Output<String> clusterLatestVersion;
  /// current DB Cluster revision Version.
  late final pulumi.Output<String> clusterVersion;
  /// PolarDB zonal cluster creation time.
  late final pulumi.Output<String> createTime;
  /// The edition of the PolarDB service. Valid values are `SENormal`.
  late final pulumi.Output<String> creationCategory;
  /// Cache of the relationship between node key and node ID for PolarDB zonal Cluster
  late final pulumi.Output<Map<String, String>> dbClusterNodesAttributes;
  /// Map of node needs to be created after DB cluster was launched.
  late final pulumi.Output<Map<String, String>> dbClusterNodesConfigs;
  /// Cache of node ID for PolarDB zonal Cluster
  late final pulumi.Output<Map<String, String>> dbClusterNodesIds;
  /// Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  late final pulumi.Output<String?> dbMinorVersion;
  /// The db_node_class of cluster node.Only effective when the cluster is created for the first time. After the cluster is started, the cluster specification is maintained through the node class.
  late final pulumi.Output<String> dbNodeClass;
  /// Database type. Value options: MySQL, Oracle, PostgreSQL.
  late final pulumi.Output<String?> dbType;
  /// Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  late final pulumi.Output<String?> dbVersion;
  /// The description of cluster.
  late final pulumi.Output<String> description;
  /// The Zone to launch the DB cluster.
  late final pulumi.Output<String> ensRegionId;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  late final pulumi.Output<String?> payType;
  /// PolarDB zonal cluster region
  late final pulumi.Output<String> regionId;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  late final pulumi.Output<String?> renewalStatus;
  /// The billing method of the storage. Valid values `Prepaid`.
  late final pulumi.Output<String> storagePayType;
  /// Storage space charged by space (monthly package). Unit: GB.
  /// &gt; **NOTE:**  Valid values for PolarDB for MySQL Standard Edition: 20 to 32000. It is valid when pay_type are `PrePaid` ,`PostPaid`.
  late final pulumi.Output<int?> storageSpace;
  /// The storage type of the cluster. Valid values are `ESSDPL1`, `ESSDPL0`.
  late final pulumi.Output<String?> storageType;
  /// The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersionZonal](https://www.alibabacloud.com/help/en/polardb/api-polardb-2017-08-01-describedbclusterversionzonal) interface.
  late final pulumi.Output<String?> targetMinorVersion;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to `PostPaid`. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
  late final pulumi.Output<int?> usedTime;
  /// The id of the ENS VPC.
  late final pulumi.Output<String> vpcId;
  /// The ENS virtual switch ID to launch DB instances in one VPC.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [ZonalDbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZonalDbCluster]. {@macro pulumi_polardb_zonal_db_cluster_zonal_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZonalDbCluster(
    String name, {
    ZonalDbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/zonalDbCluster:ZonalDbCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    clusterLatestVersion = registerOutput<String>('clusterLatestVersion');
    clusterVersion = registerOutput<String>('clusterVersion');
    createTime = registerOutput<String>('createTime');
    creationCategory = registerOutput<String>('creationCategory');
    dbClusterNodesAttributes = registerOutput<Map<String, String>>('dbClusterNodesAttributes');
    dbClusterNodesConfigs = registerOutput<Map<String, String>>('dbClusterNodesConfigs');
    dbClusterNodesIds = registerOutput<Map<String, String>>('dbClusterNodesIds');
    dbMinorVersion = registerOutput<String?>('dbMinorVersion');
    dbNodeClass = registerOutput<String>('dbNodeClass');
    dbType = registerOutput<String?>('dbType');
    dbVersion = registerOutput<String?>('dbVersion');
    description = registerOutput<String>('description');
    ensRegionId = registerOutput<String>('ensRegionId');
    payType = registerOutput<String?>('payType');
    regionId = registerOutput<String>('regionId');
    renewalStatus = registerOutput<String?>('renewalStatus');
    storagePayType = registerOutput<String>('storagePayType');
    storageSpace = registerOutput<int?>('storageSpace');
    storageType = registerOutput<String?>('storageType');
    targetMinorVersion = registerOutput<String?>('targetMinorVersion');
    usedTime = registerOutput<int?>('usedTime');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [ZonalDbCluster] resource's state with the given [name] and [id].
  static ZonalDbCluster get(
    String name,
    pulumi.Input<String> id, {
    ZonalDbClusterState? state,
  }) {
    return ZonalDbCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZonalDbCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/zonalDbCluster:ZonalDbCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    clusterLatestVersion = registerOutput<String>('clusterLatestVersion');
    clusterVersion = registerOutput<String>('clusterVersion');
    createTime = registerOutput<String>('createTime');
    creationCategory = registerOutput<String>('creationCategory');
    dbClusterNodesAttributes = registerOutput<Map<String, String>>('dbClusterNodesAttributes');
    dbClusterNodesConfigs = registerOutput<Map<String, String>>('dbClusterNodesConfigs');
    dbClusterNodesIds = registerOutput<Map<String, String>>('dbClusterNodesIds');
    dbMinorVersion = registerOutput<String?>('dbMinorVersion');
    dbNodeClass = registerOutput<String>('dbNodeClass');
    dbType = registerOutput<String?>('dbType');
    dbVersion = registerOutput<String?>('dbVersion');
    description = registerOutput<String>('description');
    ensRegionId = registerOutput<String>('ensRegionId');
    payType = registerOutput<String?>('payType');
    regionId = registerOutput<String>('regionId');
    renewalStatus = registerOutput<String?>('renewalStatus');
    storagePayType = registerOutput<String>('storagePayType');
    storageSpace = registerOutput<int?>('storageSpace');
    storageType = registerOutput<String?>('storageType');
    targetMinorVersion = registerOutput<String?>('targetMinorVersion');
    usedTime = registerOutput<int?>('usedTime');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
