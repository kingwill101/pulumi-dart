import 'package:pulumi/pulumi.dart' as pulumi;
import 'zonal_account_args.dart';
import 'zonal_account_state.dart';

/// Provides a PolarDB Zonal account resource and used to manage databases.
///
/// > **NOTE:** Available since v1.262.0.
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
/// const defaultZonalAccount = new alicloud.polardb.ZonalAccount("default", {
///     dbClusterId: defaultZonalDbCluster.id,
///     accountName: "terraform_example",
///     accountPassword: "Example1234",
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
/// default_zonal_account = alicloud.polardb.ZonalAccount("default",
///     db_cluster_id=default_zonal_db_cluster.id,
///     account_name="terraform_example",
///     account_password="Example1234")
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
///     var defaultZonalAccount = new AliCloud.PolarDB.ZonalAccount("default", new()
///     {
///         DbClusterId = defaultZonalDbCluster.Id,
///         AccountName = "terraform_example",
///         AccountPassword = "Example1234",
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
/// PolarDB Zonal account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/zonalAccount:ZonalAccount example "pc-12345:tf_account"
/// ```
class ZonalAccount extends pulumi.CustomResource {
  /// Account description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  late final pulumi.Output<String?> accountDescription;
  /// Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  late final pulumi.Output<String> accountName;
  /// Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters.
  late final pulumi.Output<String> accountPassword;
  /// Account type, Valid values are `Normal`, `Super`, Default to `Normal`.
  late final pulumi.Output<String> accountType;
  /// The Id of cluster in which account belongs.
  late final pulumi.Output<String> dbClusterId;

  /// Creates a new [ZonalAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZonalAccount]. {@macro pulumi_polardb_zonal_account_zonal_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZonalAccount(
    String name, {
    ZonalAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/zonalAccount:ZonalAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountDescription = registerOutput<String?>('accountDescription');
    this.accountName = registerOutput<String>('accountName');
    this.accountPassword = registerOutput<String>('accountPassword');
    this.accountType = registerOutput<String>('accountType');
    this.dbClusterId = registerOutput<String>('dbClusterId');
  }

  /// Gets an existing [ZonalAccount] resource's state with the given [name] and [id].
  static ZonalAccount get(
    String name,
    pulumi.Input<String> id, {
    ZonalAccountState? state,
  }) {
    return ZonalAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZonalAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/zonalAccount:ZonalAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountDescription = registerOutput<String?>('accountDescription');
    this.accountName = registerOutput<String>('accountName');
    this.accountPassword = registerOutput<String>('accountPassword');
    this.accountType = registerOutput<String>('accountType');
    this.dbClusterId = registerOutput<String>('dbClusterId');
  }
}
