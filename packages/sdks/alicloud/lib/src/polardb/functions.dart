import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_databases_args.dart';
import 'get_databases_result.dart';
import 'get_endpoints_args.dart';
import 'get_endpoints_result.dart';
import 'get_global_database_networks_args.dart';
import 'get_global_database_networks_result.dart';
import 'get_node_classes_args.dart';
import 'get_node_classes_result.dart';
import 'get_parameter_groups_args.dart';
import 'get_parameter_groups_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// The `alicloud.polardb.getAccounts` data source provides a collection of PolarDB cluster database account available in Alibaba Cloud account.
/// Filters support regular expression for the account name, searches by clusterId.
///
/// &gt; **NOTE:** Available since v1.70.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// export = async () => {
///     const _this = await alicloud.polardb.getNodeClasses({
///         dbType: "MySQL",
///         dbVersion: "8.0",
///         payType: "PostPaid",
///         category: "Normal",
///     });
///     const defaultNetwork = new alicloud.vpc.Network("default", {
///         vpcName: "terraform-example",
///         cidrBlock: "172.16.0.0/16",
///     });
///     const defaultSwitch = new alicloud.vpc.Switch("default", {
///         vpcId: defaultNetwork.id,
///         cidrBlock: "172.16.0.0/24",
///         zoneId: _this.classes?.[0]?.zoneId,
///         vswitchName: "terraform-example",
///     });
///     const cluster = new alicloud.polardb.Cluster("cluster", {
///         dbType: "MySQL",
///         dbVersion: "8.0",
///         payType: "PostPaid",
///         dbNodeCount: 2,
///         dbNodeClass: _this.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass,
///         vswitchId: defaultSwitch.id,
///     });
///     const polardbClustersDs = alicloud.polardb.getClustersOutput({
///         descriptionRegex: cluster.description,
///         status: "Running",
///     });
///     const account = new alicloud.polardb.Account("account", {
///         dbClusterId: polardbClustersDs.apply(polardbClustersDs => polardbClustersDs.clusters?.[0]?.id),
///         accountName: "tfnormal_01",
///         accountPassword: "Test12345",
///         accountDescription: "tf_account_description",
///         accountType: "Normal",
///     });
///     const _default = pulumi.all([polardbClustersDs, account.accountName]).apply(([polardbClustersDs, accountName]) => alicloud.polardb.getAccountsOutput({
///         dbClusterId: polardbClustersDs.clusters?.[0]?.id,
///         nameRegex: accountName,
///     }));
///     return {
///         account: _default.apply(_default => _default.accounts?.[0]?.accountName),
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     category="Normal")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=this.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// cluster = alicloud.polardb.Cluster("cluster",
///     db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     db_node_count=2,
///     db_node_class=this.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     vswitch_id=default_switch.id)
/// polardb_clusters_ds = alicloud.polardb.get_clusters_output(description_regex=cluster.description,
///     status="Running")
/// account = alicloud.polardb.Account("account",
///     db_cluster_id=polardb_clusters_ds.clusters[0].id,
///     account_name="tfnormal_01",
///     account_password="Test12345",
///     account_description="tf_account_description",
///     account_type="Normal")
/// default = pulumi.Output.all(
///     polardb_clusters_ds=polardb_clusters_ds,
///     account_name=account.account_name
/// ).apply(lambda resolved_outputs: alicloud.polardb.get_accounts_output(db_cluster_id=polardb_clusters_ds.clusters[0].id,
///     name_regex=resolved_outputs['account_name']))
///
/// pulumi.export("account", default.accounts[0].account_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         Category = "Normal",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var cluster = new AliCloud.PolarDB.Cluster("cluster", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         DbNodeCount = 2,
///         DbNodeClass = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var polardbClustersDs = AliCloud.PolarDB.GetClusters.Invoke(new()
///     {
///         DescriptionRegex = cluster.Description,
///         Status = "Running",
///     });
///
///     var account = new AliCloud.PolarDB.Account("account", new()
///     {
///         DbClusterId = polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         AccountName = "tfnormal_01",
///         AccountPassword = "Test12345",
///         AccountDescription = "tf_account_description",
///         AccountType = "Normal",
///     });
///
///     var @default = AliCloud.PolarDB.GetAccounts.Invoke(new()
///     {
///         DbClusterId = polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         NameRegex = account.AccountName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["account"] = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.AccountName)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// this, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// DbType: pulumi.StringRef("MySQL"),
/// DbVersion: pulumi.StringRef("8.0"),
/// PayType: "PostPaid",
/// Category: pulumi.StringRef("Normal"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String("terraform-example"),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/24"),
/// ZoneId: pulumi.String(this.Classes[0].ZoneId),
/// VswitchName: pulumi.String("terraform-example"),
/// })
/// if err != nil {
/// return err
/// }
/// cluster, err := polardb.NewCluster(ctx, "cluster", &polardb.ClusterArgs{
/// DbType: pulumi.String("MySQL"),
/// DbVersion: pulumi.String("8.0"),
/// PayType: pulumi.String("PostPaid"),
/// DbNodeCount: pulumi.Int(2),
/// DbNodeClass: pulumi.String(this.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// VswitchId: defaultSwitch.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// polardbClustersDs := polardb.GetClustersOutput(ctx, polardb.GetClustersOutputArgs{
/// DescriptionRegex: cluster.Description,
/// Status: pulumi.String("Running"),
/// }, nil);
/// account, err := polardb.NewAccount(ctx, "account", &polardb.AccountArgs{
/// DbClusterId: pulumi.String(polardbClustersDs.ApplyT(func(polardbClustersDs polardb.GetClustersResult) (*string, error) {
/// return &polardbClustersDs.Clusters[0].Id, nil
/// }).(pulumi.StringPtrOutput)),
/// AccountName: pulumi.String("tfnormal_01"),
/// AccountPassword: pulumi.String("Test12345"),
/// AccountDescription: pulumi.String("tf_account_description"),
/// AccountType: pulumi.String("Normal"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := pulumi.All(polardbClustersDs,account.AccountName).ApplyT(func(_args []interface{}) (polardb.GetAccountsResult, error) {
/// polardbClustersDs := _args[0].(polardb.GetClustersResult)
/// accountName := _args[1].(string)
/// return polardb.GetAccountsResult(interface{}(polardb.GetAccounts(ctx, &polardb.GetAccountsArgs{
/// DbClusterId: polardbClustersDs.Clusters[0].Id,
/// NameRegex: pulumi.StringRef(pulumi.StringRef(accountName)),
/// }, nil))), nil
/// }).(polardb.GetAccountsResultOutput)
/// ctx.Export("account", _default.ApplyT(func(_default polardb.GetAccountsResult) (*string, error) {
/// return &default.Accounts[0].AccountName, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetClustersArgs;
/// import com.pulumi.alicloud.polardb.Account;
/// import com.pulumi.alicloud.polardb.AccountArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetAccountsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var this = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .category("Normal")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(this_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .dbNodeCount(2)
///             .dbNodeClass(this_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var polardbClustersDs = PolardbFunctions.getClusters(GetClustersArgs.builder()
///             .descriptionRegex(cluster.description())
///             .status("Running")
///             .build());
///
///         var account = new Account("account", AccountArgs.builder()
///             .dbClusterId(polardbClustersDs.applyValue(_polardbClustersDs -> _polardbClustersDs.clusters()[0].id()))
///             .accountName("tfnormal_01")
///             .accountPassword("Test12345")
///             .accountDescription("tf_account_description")
///             .accountType("Normal")
///             .build());
///
///         final var default = Output.tuple(polardbClustersDs, account.accountName()).applyValue(values -> {
///             var polardbClustersDs = values.t1;
///             var accountName = values.t2;
///             return PolardbFunctions.getAccounts(GetAccountsArgs.builder()
///                 .dbClusterId(polardbClustersDs.clusters()[0].id())
///                 .nameRegex(accountName)
///                 .build());
///         });
///
///         ctx.export("account", default_.applyValue(_default_ -> _default_.accounts()[0].accountName()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${this.classes[0].zoneId}
///       vswitchName: terraform-example
///   cluster:
///     type: alicloud:polardb:Cluster
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       payType: PostPaid
///       dbNodeCount: '2'
///       dbNodeClass: ${this.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       vswitchId: ${defaultSwitch.id}
///   account:
///     type: alicloud:polardb:Account
///     properties:
///       dbClusterId: ${polardbClustersDs.clusters[0].id}
///       accountName: tfnormal_01
///       accountPassword: Test12345
///       accountDescription: tf_account_description
///       accountType: Normal
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
///   polardbClustersDs:
///     fn::invoke:
///       function: alicloud:polardb:getClusters
///       arguments:
///         descriptionRegex: ${cluster.description}
///         status: Running
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getAccounts
///       arguments:
///         dbClusterId: ${polardbClustersDs.clusters[0].id}
///         nameRegex: ${account.accountName}
/// outputs:
///   account: ${default.accounts[0].accountName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// The `alicloud.polardb.getClusters` data source provides a collection of PolarDB clusters available in Alibaba Cloud account.
/// Filters support regular expression for the cluster description, searches by tags, and other filters which are listed below.
///
/// &gt; **NOTE:** Available since v1.66.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.polardb.getNodeClasses({
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     category: "Normal",
/// });
/// const _default = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: _default.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _this.then(_this => _this.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const cluster = new alicloud.polardb.Cluster("cluster", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     dbNodeCount: 2,
///     dbNodeClass: _this.then(_this => _this.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass),
///     vswitchId: defaultSwitch.id,
/// });
/// const polardbClustersDs = alicloud.polardb.getClustersOutput({
///     descriptionRegex: cluster.id,
///     status: "Running",
/// });
/// export const firstPolardbClusterId = polardbClustersDs.apply(polardbClustersDs => polardbClustersDs.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     category="Normal")
/// default = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=this.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// cluster = alicloud.polardb.Cluster("cluster",
///     db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     db_node_count=2,
///     db_node_class=this.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     vswitch_id=default_switch.id)
/// polardb_clusters_ds = alicloud.polardb.get_clusters_output(description_regex=cluster.id,
///     status="Running")
/// pulumi.export("firstPolardbClusterId", polardb_clusters_ds.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         Category = "Normal",
///     });
///
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = @default.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var cluster = new AliCloud.PolarDB.Cluster("cluster", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         DbNodeCount = 2,
///         DbNodeClass = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var polardbClustersDs = AliCloud.PolarDB.GetClusters.Invoke(new()
///     {
///         DescriptionRegex = cluster.Id,
///         Status = "Running",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPolardbClusterId"] = polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			DbType:    pulumi.StringRef("MySQL"),
/// 			DbVersion: pulumi.StringRef("8.0"),
/// 			PayType:   "PostPaid",
/// 			Category:  pulumi.StringRef("Normal"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       _default.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(this.Classes[0].ZoneId),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := polardb.NewCluster(ctx, "cluster", &polardb.ClusterArgs{
/// 			DbType:      pulumi.String("MySQL"),
/// 			DbVersion:   pulumi.String("8.0"),
/// 			PayType:     pulumi.String("PostPaid"),
/// 			DbNodeCount: pulumi.Int(2),
/// 			DbNodeClass: pulumi.String(this.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// 			VswitchId:   defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		polardbClustersDs := polardb.GetClustersOutput(ctx, polardb.GetClustersOutputArgs{
/// 			DescriptionRegex: cluster.ID(),
/// 			Status:           pulumi.String("Running"),
/// 		}, nil)
/// 		ctx.Export("firstPolardbClusterId", polardbClustersDs.ApplyT(func(polardbClustersDs polardb.GetClustersResult) (*string, error) {
/// 			return &polardbClustersDs.Clusters[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetClustersArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var this = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .category("Normal")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(default_.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(this_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .dbNodeCount(2)
///             .dbNodeClass(this_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var polardbClustersDs = PolardbFunctions.getClusters(GetClustersArgs.builder()
///             .descriptionRegex(cluster.id())
///             .status("Running")
///             .build());
///
///         ctx.export("firstPolardbClusterId", polardbClustersDs.applyValue(_polardbClustersDs -> _polardbClustersDs.clusters()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${default.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${this.classes[0].zoneId}
///       vswitchName: terraform-example
///   cluster:
///     type: alicloud:polardb:Cluster
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       payType: PostPaid
///       dbNodeCount: '2'
///       dbNodeClass: ${this.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       vswitchId: ${defaultSwitch.id}
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
///   polardbClustersDs:
///     fn::invoke:
///       function: alicloud:polardb:getClusters
///       arguments:
///         descriptionRegex: ${cluster.id}
///         status: Running
/// outputs:
///   firstPolardbClusterId: ${polardbClustersDs.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// The `alicloud.polardb.getDatabases` data source provides a collection of PolarDB cluster database available in Alibaba Cloud account.
/// Filters support regular expression for the database name, searches by clusterId.
///
/// &gt; **NOTE:** Available since v1.70.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.polardb.getNodeClasses({
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     category: "Normal",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _this.then(_this => _this.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const cluster = new alicloud.polardb.Cluster("cluster", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     dbNodeCount: 2,
///     dbNodeClass: _this.then(_this => _this.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass),
///     vswitchId: defaultSwitch.id,
/// });
/// const polardbClustersDs = alicloud.polardb.getClustersOutput({
///     descriptionRegex: cluster.description,
///     status: "Running",
/// });
/// const defaultDatabase = new alicloud.polardb.Database("default", {
///     dbClusterId: polardbClustersDs.apply(polardbClustersDs => polardbClustersDs.clusters?.[0]?.id),
///     dbName: polardbClustersDs.apply(polardbClustersDs => `tfaccountpri_${polardbClustersDs.clusters?.[0]?.id}`),
///     dbDescription: "from terraform",
/// });
/// const _default = pulumi.all([polardbClustersDs, defaultDatabase.dbName]).apply(([polardbClustersDs, dbName]) => alicloud.polardb.getDatabasesOutput({
///     dbClusterId: polardbClustersDs.clusters?.[0]?.id,
///     nameRegex: dbName,
/// }));
/// export const database = _default.apply(_default => _default.databases?.[0]?.dbName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     category="Normal")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=this.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// cluster = alicloud.polardb.Cluster("cluster",
///     db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     db_node_count=2,
///     db_node_class=this.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     vswitch_id=default_switch.id)
/// polardb_clusters_ds = alicloud.polardb.get_clusters_output(description_regex=cluster.description,
///     status="Running")
/// default_database = alicloud.polardb.Database("default",
///     db_cluster_id=polardb_clusters_ds.clusters[0].id,
///     db_name=polardb_clusters_ds.apply(lambda polardb_clusters_ds: f"tfaccountpri_{polardb_clusters_ds.clusters[0].id}"),
///     db_description="from terraform")
/// default = pulumi.Output.all(
///     polardb_clusters_ds=polardb_clusters_ds,
///     db_name=default_database.db_name
/// ).apply(lambda resolved_outputs: alicloud.polardb.get_databases_output(db_cluster_id=polardb_clusters_ds.clusters[0].id,
///     name_regex=resolved_outputs['db_name']))
///
/// pulumi.export("database", default.databases[0].db_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         Category = "Normal",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var cluster = new AliCloud.PolarDB.Cluster("cluster", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         DbNodeCount = 2,
///         DbNodeClass = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var polardbClustersDs = AliCloud.PolarDB.GetClusters.Invoke(new()
///     {
///         DescriptionRegex = cluster.Description,
///         Status = "Running",
///     });
///
///     var defaultDatabase = new AliCloud.PolarDB.Database("default", new()
///     {
///         DbClusterId = polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         DbName = $"tfaccountpri_{polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id)}",
///         DbDescription = "from terraform",
///     });
///
///     var @default = AliCloud.PolarDB.GetDatabases.Invoke(new()
///     {
///         DbClusterId = polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         NameRegex = defaultDatabase.DbName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["database"] = @default.Apply(@default => @default.Apply(getDatabasesResult => getDatabasesResult.Databases[0]?.DbName)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// this, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// DbType: pulumi.StringRef("MySQL"),
/// DbVersion: pulumi.StringRef("8.0"),
/// PayType: "PostPaid",
/// Category: pulumi.StringRef("Normal"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String("terraform-example"),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/24"),
/// ZoneId: pulumi.String(this.Classes[0].ZoneId),
/// VswitchName: pulumi.String("terraform-example"),
/// })
/// if err != nil {
/// return err
/// }
/// cluster, err := polardb.NewCluster(ctx, "cluster", &polardb.ClusterArgs{
/// DbType: pulumi.String("MySQL"),
/// DbVersion: pulumi.String("8.0"),
/// PayType: pulumi.String("PostPaid"),
/// DbNodeCount: pulumi.Int(2),
/// DbNodeClass: pulumi.String(this.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// VswitchId: defaultSwitch.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// polardbClustersDs := polardb.GetClustersOutput(ctx, polardb.GetClustersOutputArgs{
/// DescriptionRegex: cluster.Description,
/// Status: pulumi.String("Running"),
/// }, nil);
/// defaultDatabase, err := polardb.NewDatabase(ctx, "default", &polardb.DatabaseArgs{
/// DbClusterId: pulumi.String(polardbClustersDs.ApplyT(func(polardbClustersDs polardb.GetClustersResult) (*string, error) {
/// return &polardbClustersDs.Clusters[0].Id, nil
/// }).(pulumi.StringPtrOutput)),
/// DbName: polardbClustersDs.ApplyT(func(polardbClustersDs polardb.GetClustersResult) (string, error) {
/// return fmt.Sprintf("tfaccountpri_%v", polardbClustersDs.Clusters[0].Id), nil
/// }).(pulumi.StringOutput),
/// DbDescription: pulumi.String("from terraform"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := pulumi.All(polardbClustersDs,defaultDatabase.DbName).ApplyT(func(_args []interface{}) (polardb.GetDatabasesResult, error) {
/// polardbClustersDs := _args[0].(polardb.GetClustersResult)
/// dbName := _args[1].(string)
/// return polardb.GetDatabasesResult(interface{}(polardb.GetDatabases(ctx, &polardb.GetDatabasesArgs{
/// DbClusterId: polardbClustersDs.Clusters[0].Id,
/// NameRegex: pulumi.StringRef(pulumi.StringRef(dbName)),
/// }, nil))), nil
/// }).(polardb.GetDatabasesResultOutput)
/// ctx.Export("database", _default.ApplyT(func(_default polardb.GetDatabasesResult) (*string, error) {
/// return &default.Databases[0].DbName, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetClustersArgs;
/// import com.pulumi.alicloud.polardb.Database;
/// import com.pulumi.alicloud.polardb.DatabaseArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetDatabasesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var this = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .category("Normal")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(this_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .dbNodeCount(2)
///             .dbNodeClass(this_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var polardbClustersDs = PolardbFunctions.getClusters(GetClustersArgs.builder()
///             .descriptionRegex(cluster.description())
///             .status("Running")
///             .build());
///
///         var defaultDatabase = new Database("defaultDatabase", DatabaseArgs.builder()
///             .dbClusterId(polardbClustersDs.applyValue(_polardbClustersDs -> _polardbClustersDs.clusters()[0].id()))
///             .dbName(polardbClustersDs.applyValue(_polardbClustersDs -> String.format("tfaccountpri_%s", _polardbClustersDs.clusters()[0].id())))
///             .dbDescription("from terraform")
///             .build());
///
///         final var default = Output.tuple(polardbClustersDs, defaultDatabase.dbName()).applyValue(values -> {
///             var polardbClustersDs = values.t1;
///             var dbName = values.t2;
///             return PolardbFunctions.getDatabases(GetDatabasesArgs.builder()
///                 .dbClusterId(polardbClustersDs.clusters()[0].id())
///                 .nameRegex(dbName)
///                 .build());
///         });
///
///         ctx.export("database", default_.applyValue(_default_ -> _default_.databases()[0].dbName()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${this.classes[0].zoneId}
///       vswitchName: terraform-example
///   cluster:
///     type: alicloud:polardb:Cluster
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       payType: PostPaid
///       dbNodeCount: '2'
///       dbNodeClass: ${this.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       vswitchId: ${defaultSwitch.id}
///   defaultDatabase:
///     type: alicloud:polardb:Database
///     name: default
///     properties:
///       dbClusterId: ${polardbClustersDs.clusters[0].id}
///       dbName: tfaccountpri_${polardbClustersDs.clusters[0].id}
///       dbDescription: from terraform
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
///   polardbClustersDs:
///     fn::invoke:
///       function: alicloud:polardb:getClusters
///       arguments:
///         descriptionRegex: ${cluster.description}
///         status: Running
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getDatabases
///       arguments:
///         dbClusterId: ${polardbClustersDs.clusters[0].id}
///         nameRegex: ${defaultDatabase.dbName}
/// outputs:
///   database: ${default.databases[0].dbName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_databases_get_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasesResult> getDatabases(
  GetDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getDatabases:getDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasesResult.fromMap(result);
}

/// The `alicloud.polardb.getEndpoints` data source provides a collection of PolarDB endpoints available in Alibaba Cloud account.
/// Filters support regular expression for the cluster name, searches by clusterId, and other filters which are listed below.
///
/// &gt; **NOTE:** Available since v1.68.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.polardb.getNodeClasses({
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     category: "Normal",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _this.then(_this => _this.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const cluster = new alicloud.polardb.Cluster("cluster", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     dbNodeCount: 2,
///     dbNodeClass: _this.then(_this => _this.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass),
///     vswitchId: defaultSwitch.id,
/// });
/// const polardbClustersDs = alicloud.polardb.getClustersOutput({
///     descriptionRegex: cluster.description,
///     status: "Running",
/// });
/// const _default = polardbClustersDs.apply(polardbClustersDs => alicloud.polardb.getEndpointsOutput({
///     dbClusterId: polardbClustersDs.clusters?.[0]?.id,
/// }));
/// export const endpoint = _default.apply(_default => _default.endpoints?.[0]?.dbEndpointId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     category="Normal")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=this.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// cluster = alicloud.polardb.Cluster("cluster",
///     db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     db_node_count=2,
///     db_node_class=this.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     vswitch_id=default_switch.id)
/// polardb_clusters_ds = alicloud.polardb.get_clusters_output(description_regex=cluster.description,
///     status="Running")
/// default = polardb_clusters_ds.apply(lambda polardb_clusters_ds: alicloud.polardb.get_endpoints_output(db_cluster_id=polardb_clusters_ds.clusters[0].id))
/// pulumi.export("endpoint", default.endpoints[0].db_endpoint_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         Category = "Normal",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var cluster = new AliCloud.PolarDB.Cluster("cluster", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         DbNodeCount = 2,
///         DbNodeClass = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var polardbClustersDs = AliCloud.PolarDB.GetClusters.Invoke(new()
///     {
///         DescriptionRegex = cluster.Description,
///         Status = "Running",
///     });
///
///     var @default = AliCloud.PolarDB.GetEndpoints.Invoke(new()
///     {
///         DbClusterId = polardbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["endpoint"] = @default.Apply(@default => @default.Apply(getEndpointsResult => getEndpointsResult.Endpoints[0]?.DbEndpointId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// this, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// DbType: pulumi.StringRef("MySQL"),
/// DbVersion: pulumi.StringRef("8.0"),
/// PayType: "PostPaid",
/// Category: pulumi.StringRef("Normal"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String("terraform-example"),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/24"),
/// ZoneId: pulumi.String(this.Classes[0].ZoneId),
/// VswitchName: pulumi.String("terraform-example"),
/// })
/// if err != nil {
/// return err
/// }
/// cluster, err := polardb.NewCluster(ctx, "cluster", &polardb.ClusterArgs{
/// DbType: pulumi.String("MySQL"),
/// DbVersion: pulumi.String("8.0"),
/// PayType: pulumi.String("PostPaid"),
/// DbNodeCount: pulumi.Int(2),
/// DbNodeClass: pulumi.String(this.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// VswitchId: defaultSwitch.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// polardbClustersDs := polardb.GetClustersOutput(ctx, polardb.GetClustersOutputArgs{
/// DescriptionRegex: cluster.Description,
/// Status: pulumi.String("Running"),
/// }, nil);
/// _default := polardbClustersDs.ApplyT(func(polardbClustersDs polardb.GetClustersResult) (polardb.GetEndpointsResult, error) {
/// return polardb.GetEndpointsResult(interface{}(polardb.GetEndpoints(ctx, &polardb.GetEndpointsArgs{
/// DbClusterId: polardbClustersDs.Clusters[0].Id,
/// }, nil))), nil
/// }).(polardb.GetEndpointsResultOutput)
/// ctx.Export("endpoint", _default.ApplyT(func(_default polardb.GetEndpointsResult) (*string, error) {
/// return &default.Endpoints[0].DbEndpointId, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetClustersArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetEndpointsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var this = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .category("Normal")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(this_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .dbNodeCount(2)
///             .dbNodeClass(this_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var polardbClustersDs = PolardbFunctions.getClusters(GetClustersArgs.builder()
///             .descriptionRegex(cluster.description())
///             .status("Running")
///             .build());
///
///         final var default = polardbClustersDs.applyValue(_polardbClustersDs -> PolardbFunctions.getEndpoints(GetEndpointsArgs.builder()
///             .dbClusterId(_polardbClustersDs.clusters()[0].id())
///             .build()));
///
///         ctx.export("endpoint", default_.applyValue(_default_ -> _default_.endpoints()[0].dbEndpointId()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${this.classes[0].zoneId}
///       vswitchName: terraform-example
///   cluster:
///     type: alicloud:polardb:Cluster
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       payType: PostPaid
///       dbNodeCount: '2'
///       dbNodeClass: ${this.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       vswitchId: ${defaultSwitch.id}
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
///   polardbClustersDs:
///     fn::invoke:
///       function: alicloud:polardb:getClusters
///       arguments:
///         descriptionRegex: ${cluster.description}
///         status: Running
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getEndpoints
///       arguments:
///         dbClusterId: ${polardbClustersDs.clusters[0].id}
/// outputs:
///   endpoint: ${default.endpoints[0].dbEndpointId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_endpoints_get_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointsResult> getEndpoints(
  GetEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getEndpoints:getEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointsResult.fromMap(result);
}

/// This data source provides the PolarDB Global Database Networks of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.181.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.polardb.getNodeClasses({
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     category: "Normal",
/// });
/// const _default = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: _default.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _this.then(_this => _this.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const cluster = new alicloud.polardb.Cluster("cluster", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     payType: "PostPaid",
///     dbNodeCount: 2,
///     dbNodeClass: _this.then(_this => _this.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass),
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultGlobalDatabaseNetwork = new alicloud.polardb.GlobalDatabaseNetwork("default", {
///     dbClusterId: cluster.id,
///     description: cluster.id,
/// });
/// const ids = alicloud.polardb.getGlobalDatabaseNetworksOutput({
///     ids: [defaultGlobalDatabaseNetwork.id],
/// });
/// export const polardbGlobalDatabaseNetworkId1 = ids.apply(ids => ids.networks?.[0]?.id);
/// const description = alicloud.polardb.getGlobalDatabaseNetworksOutput({
///     description: defaultGlobalDatabaseNetwork.description,
/// });
/// export const polardbGlobalDatabaseNetworkId2 = description.apply(description => description.networks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     category="Normal")
/// default = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=this.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// cluster = alicloud.polardb.Cluster("cluster",
///     db_type="MySQL",
///     db_version="8.0",
///     pay_type="PostPaid",
///     db_node_count=2,
///     db_node_class=this.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     vswitch_id=default_switch.id)
/// default_global_database_network = alicloud.polardb.GlobalDatabaseNetwork("default",
///     db_cluster_id=cluster.id,
///     description=cluster.id)
/// ids = alicloud.polardb.get_global_database_networks_output(ids=[default_global_database_network.id])
/// pulumi.export("polardbGlobalDatabaseNetworkId1", ids.networks[0].id)
/// description = alicloud.polardb.get_global_database_networks_output(description=default_global_database_network.description)
/// pulumi.export("polardbGlobalDatabaseNetworkId2", description.networks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         Category = "Normal",
///     });
///
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = @default.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var cluster = new AliCloud.PolarDB.Cluster("cluster", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         PayType = "PostPaid",
///         DbNodeCount = 2,
///         DbNodeClass = @this.Apply(@this => @this.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultGlobalDatabaseNetwork = new AliCloud.PolarDB.GlobalDatabaseNetwork("default", new()
///     {
///         DbClusterId = cluster.Id,
///         Description = cluster.Id,
///     });
///
///     var ids = AliCloud.PolarDB.GetGlobalDatabaseNetworks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultGlobalDatabaseNetwork.Id,
///         },
///     });
///
///     var description = AliCloud.PolarDB.GetGlobalDatabaseNetworks.Invoke(new()
///     {
///         Description = defaultGlobalDatabaseNetwork.Description,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["polardbGlobalDatabaseNetworkId1"] = ids.Apply(getGlobalDatabaseNetworksResult => getGlobalDatabaseNetworksResult.Networks[0]?.Id),
///         ["polardbGlobalDatabaseNetworkId2"] = description.Apply(getGlobalDatabaseNetworksResult => getGlobalDatabaseNetworksResult.Networks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			DbType:    pulumi.StringRef("MySQL"),
/// 			DbVersion: pulumi.StringRef("8.0"),
/// 			PayType:   "PostPaid",
/// 			Category:  pulumi.StringRef("Normal"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       _default.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(this.Classes[0].ZoneId),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := polardb.NewCluster(ctx, "cluster", &polardb.ClusterArgs{
/// 			DbType:      pulumi.String("MySQL"),
/// 			DbVersion:   pulumi.String("8.0"),
/// 			PayType:     pulumi.String("PostPaid"),
/// 			DbNodeCount: pulumi.Int(2),
/// 			DbNodeClass: pulumi.String(this.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// 			VswitchId:   defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGlobalDatabaseNetwork, err := polardb.NewGlobalDatabaseNetwork(ctx, "default", &polardb.GlobalDatabaseNetworkArgs{
/// 			DbClusterId: cluster.ID(),
/// 			Description: cluster.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := polardb.GetGlobalDatabaseNetworksOutput(ctx, polardb.GetGlobalDatabaseNetworksOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultGlobalDatabaseNetwork.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("polardbGlobalDatabaseNetworkId1", ids.ApplyT(func(ids polardb.GetGlobalDatabaseNetworksResult) (*string, error) {
/// 			return &ids.Networks[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		description := polardb.GetGlobalDatabaseNetworksOutput(ctx, polardb.GetGlobalDatabaseNetworksOutputArgs{
/// 			Description: defaultGlobalDatabaseNetwork.Description,
/// 		}, nil)
/// 		ctx.Export("polardbGlobalDatabaseNetworkId2", description.ApplyT(func(description polardb.GetGlobalDatabaseNetworksResult) (*string, error) {
/// 			return &description.Networks[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.GlobalDatabaseNetwork;
/// import com.pulumi.alicloud.polardb.GlobalDatabaseNetworkArgs;
/// import com.pulumi.alicloud.polardb.inputs.GetGlobalDatabaseNetworksArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var this = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .category("Normal")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(default_.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(this_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .payType("PostPaid")
///             .dbNodeCount(2)
///             .dbNodeClass(this_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultGlobalDatabaseNetwork = new GlobalDatabaseNetwork("defaultGlobalDatabaseNetwork", GlobalDatabaseNetworkArgs.builder()
///             .dbClusterId(cluster.id())
///             .description(cluster.id())
///             .build());
///
///         final var ids = PolardbFunctions.getGlobalDatabaseNetworks(GetGlobalDatabaseNetworksArgs.builder()
///             .ids(defaultGlobalDatabaseNetwork.id())
///             .build());
///
///         ctx.export("polardbGlobalDatabaseNetworkId1", ids.applyValue(_ids -> _ids.networks()[0].id()));
///         final var description = PolardbFunctions.getGlobalDatabaseNetworks(GetGlobalDatabaseNetworksArgs.builder()
///             .description(defaultGlobalDatabaseNetwork.description())
///             .build());
///
///         ctx.export("polardbGlobalDatabaseNetworkId2", description.applyValue(_description -> _description.networks()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${default.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${this.classes[0].zoneId}
///       vswitchName: terraform-example
///   cluster:
///     type: alicloud:polardb:Cluster
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       payType: PostPaid
///       dbNodeCount: '2'
///       dbNodeClass: ${this.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       vswitchId: ${defaultSwitch.id}
///   defaultGlobalDatabaseNetwork:
///     type: alicloud:polardb:GlobalDatabaseNetwork
///     name: default
///     properties:
///       dbClusterId: ${cluster.id}
///       description: ${cluster.id}
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
///   ids:
///     fn::invoke:
///       function: alicloud:polardb:getGlobalDatabaseNetworks
///       arguments:
///         ids:
///           - ${defaultGlobalDatabaseNetwork.id}
///   description:
///     fn::invoke:
///       function: alicloud:polardb:getGlobalDatabaseNetworks
///       arguments:
///         description: ${defaultGlobalDatabaseNetwork.description}
/// outputs:
///   polardbGlobalDatabaseNetworkId1: ${ids.networks[0].id}
///   polardbGlobalDatabaseNetworkId2: ${description.networks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_global_database_networks_get_global_database_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalDatabaseNetworksResult> getGlobalDatabaseNetworks(
  GetGlobalDatabaseNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getGlobalDatabaseNetworks:getGlobalDatabaseNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalDatabaseNetworksResult.fromMap(result);
}

/// This data source provides the PolarDB node classes resource available info of Alibaba Cloud.
///
/// &gt; **NOTE:** Available since v1.81.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.polardb.getNodeClasses({
///     payType: "PostPaid",
///     dbType: "MySQL",
///     dbVersion: "5.6",
/// });
/// export const polardbNodeClasses = resources.then(resources => resources.classes);
/// export const polardbAvailableZoneId = resources.then(resources => resources.classes?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.polardb.get_node_classes(pay_type="PostPaid",
///     db_type="MySQL",
///     db_version="5.6")
/// pulumi.export("polardbNodeClasses", resources.classes)
/// pulumi.export("polardbAvailableZoneId", resources.classes[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         PayType = "PostPaid",
///         DbType = "MySQL",
///         DbVersion = "5.6",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["polardbNodeClasses"] = resources.Apply(getNodeClassesResult => getNodeClassesResult.Classes),
///         ["polardbAvailableZoneId"] = resources.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			PayType:   "PostPaid",
/// 			DbType:    pulumi.StringRef("MySQL"),
/// 			DbVersion: pulumi.StringRef("5.6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("polardbNodeClasses", resources.Classes)
/// 		ctx.Export("polardbAvailableZoneId", resources.Classes[0].ZoneId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var resources = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .payType("PostPaid")
///             .dbType("MySQL")
///             .dbVersion("5.6")
///             .build());
///
///         ctx.export("polardbNodeClasses", resources.classes());
///         ctx.export("polardbAvailableZoneId", resources.classes()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         payType: PostPaid
///         dbType: MySQL
///         dbVersion: '5.6'
/// outputs:
///   polardbNodeClasses: ${resources.classes}
///   polardbAvailableZoneId: ${resources.classes[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_node_classes_get_node_classes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeClassesResult> getNodeClasses(
  GetNodeClassesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getNodeClasses:getNodeClasses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeClassesResult.fromMap(result);
}

/// This data source provides the PolarDB Parameter Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.183.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.polardb.getParameterGroups({
///     dbType: "MySQL",
///     dbVersion: "8.0",
/// });
/// const ids = _default.then(_default => alicloud.polardb.getParameterGroups({
///     ids: [_default.groups?.[0]?.id],
/// }));
/// export const polardbParameterGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = _default.then(_default => alicloud.polardb.getParameterGroups({
///     nameRegex: _default.groups?.[0]?.parameterGroupName,
/// }));
/// export const polardbParameterGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.polardb.get_parameter_groups(db_type="MySQL",
///     db_version="8.0")
/// ids = alicloud.polardb.get_parameter_groups(ids=[default.groups[0].id])
/// pulumi.export("polardbParameterGroupId1", ids.groups[0].id)
/// name_regex = alicloud.polardb.get_parameter_groups(name_regex=default.groups[0].parameter_group_name)
/// pulumi.export("polardbParameterGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.PolarDB.GetParameterGroups.Invoke(new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///     });
///
///     var ids = AliCloud.PolarDB.GetParameterGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Apply(getParameterGroupsResult => getParameterGroupsResult.Groups[0]?.Id),
///         },
///     });
///
///     var nameRegex = AliCloud.PolarDB.GetParameterGroups.Invoke(new()
///     {
///         NameRegex = @default.Apply(getParameterGroupsResult => getParameterGroupsResult.Groups[0]?.ParameterGroupName),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["polardbParameterGroupId1"] = ids.Apply(getParameterGroupsResult => getParameterGroupsResult.Groups[0]?.Id),
///         ["polardbParameterGroupId2"] = nameRegex.Apply(getParameterGroupsResult => getParameterGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := polardb.GetParameterGroups(ctx, &polardb.GetParameterGroupsArgs{
/// DbType: pulumi.StringRef("MySQL"),
/// DbVersion: pulumi.StringRef("8.0"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ids, err := polardb.GetParameterGroups(ctx, &polardb.GetParameterGroupsArgs{
/// Ids: interface{}{
/// _default.Groups[0].Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("polardbParameterGroupId1", ids.Groups[0].Id)
/// nameRegex, err := polardb.GetParameterGroups(ctx, &polardb.GetParameterGroupsArgs{
/// NameRegex: pulumi.StringRef(_default.Groups[0].ParameterGroupName),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("polardbParameterGroupId2", nameRegex.Groups[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetParameterGroupsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = PolardbFunctions.getParameterGroups(GetParameterGroupsArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .build());
///
///         final var ids = PolardbFunctions.getParameterGroups(GetParameterGroupsArgs.builder()
///             .ids(default_.groups()[0].id())
///             .build());
///
///         ctx.export("polardbParameterGroupId1", ids.groups()[0].id());
///         final var nameRegex = PolardbFunctions.getParameterGroups(GetParameterGroupsArgs.builder()
///             .nameRegex(default_.groups()[0].parameterGroupName())
///             .build());
///
///         ctx.export("polardbParameterGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getParameterGroups
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///   ids:
///     fn::invoke:
///       function: alicloud:polardb:getParameterGroups
///       arguments:
///         ids:
///           - ${default.groups[0].id}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:polardb:getParameterGroups
///       arguments:
///         nameRegex: ${default.groups[0].parameterGroupName}
/// outputs:
///   polardbParameterGroupId1: ${ids.groups[0].id}
///   polardbParameterGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_parameter_groups_get_parameter_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterGroupsResult> getParameterGroups(
  GetParameterGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getParameterGroups:getParameterGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterGroupsResult.fromMap(result);
}

/// This data source provides availability zones for PolarDB that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available in v1.74.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.polardb.getZones({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.polardb.get_zones()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var zonesIds = AliCloud.PolarDB.GetZones.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_, err := polardb.GetZones(ctx, &polardb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetZonesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // Declare the data source
///         final var zonesIds = PolardbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:polardb:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_polardb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:polardb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
