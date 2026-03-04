import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_backup_policies_args.dart';
import 'get_backup_policies_result.dart';
import 'get_db_clusters_args.dart';
import 'get_db_clusters_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';

/// This data source provides the Click House Accounts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "oneaccountname";
/// const pwd = config.get("pwd") || "Tf-onepwd";
/// const type = config.get("type") || "Normal";
/// const _default = alicloud.clickhouse.getRegions({
///     current: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.regions?.[0]?.zoneIds?.[0]?.zoneId),
/// });
/// const defaultDbCluster = new alicloud.clickhouse.DbCluster("default", {
///     dbClusterVersion: "22.8.5.29",
///     category: "Basic",
///     dbClusterClass: "S8",
///     dbClusterNetworkType: "vpc",
///     dbClusterDescription: name,
///     dbNodeGroupCount: 1,
///     paymentType: "PayAsYouGo",
///     dbNodeStorage: "500",
///     storageType: "cloud_essd",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultAccount = new alicloud.clickhouse.Account("default", {
///     dbClusterId: defaultDbCluster.id,
///     accountDescription: "your_description",
///     accountName: name,
///     accountPassword: pwd,
///     type: type,
/// });
/// const defaultGetAccounts = alicloud.clickhouse.getAccountsOutput({
///     ids: [defaultAccount.id],
///     dbClusterId: defaultDbCluster.id,
/// });
/// export const accountId = defaultGetAccounts.apply(defaultGetAccounts => defaultGetAccounts.ids?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "oneaccountname"
/// pwd = config.get("pwd")
/// if pwd is None:
///     pwd = "Tf-onepwd"
/// type = config.get("type")
/// if type is None:
///     type = "Normal"
/// default = alicloud.clickhouse.get_regions(current=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.regions[0].zone_ids[0].zone_id)
/// default_db_cluster = alicloud.clickhouse.DbCluster("default",
///     db_cluster_version="22.8.5.29",
///     category="Basic",
///     db_cluster_class="S8",
///     db_cluster_network_type="vpc",
///     db_cluster_description=name,
///     db_node_group_count=1,
///     payment_type="PayAsYouGo",
///     db_node_storage="500",
///     storage_type="cloud_essd",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id)
/// default_account = alicloud.clickhouse.Account("default",
///     db_cluster_id=default_db_cluster.id,
///     account_description="your_description",
///     account_name=name,
///     account_password=pwd,
///     type=type)
/// default_get_accounts = alicloud.clickhouse.get_accounts_output(ids=[default_account.id],
///     db_cluster_id=default_db_cluster.id)
/// pulumi.export("accountId", default_get_accounts.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "oneaccountname";
///     var pwd = config.Get("pwd") ?? "Tf-onepwd";
///     var type = config.Get("type") ?? "Normal";
///     var @default = AliCloud.ClickHouse.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.ZoneIds[0]?.ZoneId)),
///     });
///
///     var defaultDbCluster = new AliCloud.ClickHouse.DbCluster("default", new()
///     {
///         DbClusterVersion = "22.8.5.29",
///         Category = "Basic",
///         DbClusterClass = "S8",
///         DbClusterNetworkType = "vpc",
///         DbClusterDescription = name,
///         DbNodeGroupCount = 1,
///         PaymentType = "PayAsYouGo",
///         DbNodeStorage = "500",
///         StorageType = "cloud_essd",
///         VswitchId = defaultSwitch.Id,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultAccount = new AliCloud.ClickHouse.Account("default", new()
///     {
///         DbClusterId = defaultDbCluster.Id,
///         AccountDescription = "your_description",
///         AccountName = name,
///         AccountPassword = pwd,
///         Type = type,
///     });
///
///     var defaultGetAccounts = AliCloud.ClickHouse.GetAccounts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAccount.Id,
///         },
///         DbClusterId = defaultDbCluster.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["accountId"] = defaultGetAccounts.Apply(getAccountsResult => getAccountsResult.Ids[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouse"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "oneaccountname"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		pwd := "Tf-onepwd"
/// 		if param := cfg.Get("pwd"); param != "" {
/// 			pwd = param
/// 		}
/// 		_type := "Normal"
/// 		if param := cfg.Get("type"); param != "" {
/// 			_type = param
/// 		}
/// 		_default, err := clickhouse.GetRegions(ctx, &clickhouse.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Regions[0].ZoneIds[0].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbCluster, err := clickhouse.NewDbCluster(ctx, "default", &clickhouse.DbClusterArgs{
/// 			DbClusterVersion:     pulumi.String("22.8.5.29"),
/// 			Category:             pulumi.String("Basic"),
/// 			DbClusterClass:       pulumi.String("S8"),
/// 			DbClusterNetworkType: pulumi.String("vpc"),
/// 			DbClusterDescription: pulumi.String(name),
/// 			DbNodeGroupCount:     pulumi.Int(1),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			DbNodeStorage:        pulumi.String("500"),
/// 			StorageType:          pulumi.String("cloud_essd"),
/// 			VswitchId:            defaultSwitch.ID(),
/// 			VpcId:                defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccount, err := clickhouse.NewAccount(ctx, "default", &clickhouse.AccountArgs{
/// 			DbClusterId:        defaultDbCluster.ID(),
/// 			AccountDescription: pulumi.String("your_description"),
/// 			AccountName:        pulumi.String(name),
/// 			AccountPassword:    pulumi.String(pwd),
/// 			Type:               pulumi.String(_type),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetAccounts := clickhouse.GetAccountsOutput(ctx, clickhouse.GetAccountsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultAccount.ID(),
/// 			},
/// 			DbClusterId: defaultDbCluster.ID(),
/// 		}, nil)
/// 		ctx.Export("accountId", defaultGetAccounts.ApplyT(func(defaultGetAccounts clickhouse.GetAccountsResult) (*string, error) {
/// 			return &defaultGetAccounts.Ids[0], nil
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
/// import com.pulumi.alicloud.clickhouse.ClickhouseFunctions;
/// import com.pulumi.alicloud.clickhouse.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.clickhouse.DbCluster;
/// import com.pulumi.alicloud.clickhouse.DbClusterArgs;
/// import com.pulumi.alicloud.clickhouse.Account;
/// import com.pulumi.alicloud.clickhouse.AccountArgs;
/// import com.pulumi.alicloud.clickhouse.inputs.GetAccountsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("oneaccountname");
///         final var pwd = config.get("pwd").orElse("Tf-onepwd");
///         final var type = config.get("type").orElse("Normal");
///         final var default = ClickhouseFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.regions()[0].zoneIds()[0].zoneId())
///             .build());
///
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbClusterVersion("22.8.5.29")
///             .category("Basic")
///             .dbClusterClass("S8")
///             .dbClusterNetworkType("vpc")
///             .dbClusterDescription(name)
///             .dbNodeGroupCount(1)
///             .paymentType("PayAsYouGo")
///             .dbNodeStorage("500")
///             .storageType("cloud_essd")
///             .vswitchId(defaultSwitch.id())
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .dbClusterId(defaultDbCluster.id())
///             .accountDescription("your_description")
///             .accountName(name)
///             .accountPassword(pwd)
///             .type(type)
///             .build());
///
///         final var defaultGetAccounts = ClickhouseFunctions.getAccounts(GetAccountsArgs.builder()
///             .ids(defaultAccount.id())
///             .dbClusterId(defaultDbCluster.id())
///             .build());
///
///         ctx.export("accountId", defaultGetAccounts.applyValue(_defaultGetAccounts -> _defaultGetAccounts.ids()[0]));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: oneaccountname
///   pwd:
///     type: string
///     default: Tf-onepwd
///   type:
///     type: string
///     default: Normal
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.regions[0].zoneIds[0].zoneId}
///   defaultDbCluster:
///     type: alicloud:clickhouse:DbCluster
///     name: default
///     properties:
///       dbClusterVersion: 22.8.5.29
///       category: Basic
///       dbClusterClass: S8
///       dbClusterNetworkType: vpc
///       dbClusterDescription: ${name}
///       dbNodeGroupCount: '1'
///       paymentType: PayAsYouGo
///       dbNodeStorage: '500'
///       storageType: cloud_essd
///       vswitchId: ${defaultSwitch.id}
///       vpcId: ${defaultNetwork.id}
///   defaultAccount:
///     type: alicloud:clickhouse:Account
///     name: default
///     properties:
///       dbClusterId: ${defaultDbCluster.id}
///       accountDescription: your_description
///       accountName: ${name}
///       accountPassword: ${pwd}
///       type: ${type}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:clickhouse:getRegions
///       arguments:
///         current: true
///   defaultGetAccounts:
///     fn::invoke:
///       function: alicloud:clickhouse:getAccounts
///       arguments:
///         ids:
///           - ${defaultAccount.id}
///         dbClusterId: ${defaultDbCluster.id}
/// outputs:
///   accountId: ${defaultGetAccounts.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clickhouse_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:clickhouse/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// This data source provides the Click House Backup Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.147.0+.
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
/// const example = alicloud.clickhouse.getBackupPolicies({
///     dbClusterId: "example_value",
/// });
/// export const clickHouseBackupPolicyId1 = example.then(example => example.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.clickhouse.get_backup_policies(db_cluster_id="example_value")
/// pulumi.export("clickHouseBackupPolicyId1", example.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ClickHouse.GetBackupPolicies.Invoke(new()
///     {
///         DbClusterId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["clickHouseBackupPolicyId1"] = example.Apply(getBackupPoliciesResult => getBackupPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := clickhouse.GetBackupPolicies(ctx, &clickhouse.GetBackupPoliciesArgs{
/// 			DbClusterId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("clickHouseBackupPolicyId1", example.Policies[0].Id)
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
/// import com.pulumi.alicloud.clickhouse.ClickhouseFunctions;
/// import com.pulumi.alicloud.clickhouse.inputs.GetBackupPoliciesArgs;
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
///         final var example = ClickhouseFunctions.getBackupPolicies(GetBackupPoliciesArgs.builder()
///             .dbClusterId("example_value")
///             .build());
///
///         ctx.export("clickHouseBackupPolicyId1", example.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:clickhouse:getBackupPolicies
///       arguments:
///         dbClusterId: example_value
/// outputs:
///   clickHouseBackupPolicyId1: ${example.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clickhouse_get_backup_policies_get_backup_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPoliciesResult> getBackupPolicies(
  GetBackupPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:clickhouse/getBackupPolicies:getBackupPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPoliciesResult.fromMap(result);
}

/// This data source provides the Click House DBCluster of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.134.0+.
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
/// const defaultDbCluster = new alicloud.clickhouse.DbCluster("default", {
///     dbClusterVersion: "20.3.10.75",
///     category: "Basic",
///     dbClusterClass: "S8",
///     dbClusterNetworkType: "vpc",
///     dbNodeGroupCount: 1,
///     paymentType: "PayAsYouGo",
///     dbNodeStorage: "500",
///     storageType: "cloud_essd",
///     vswitchId: "your_vswitch_id",
/// });
/// const _default = alicloud.clickhouse.getDbClustersOutput({
///     ids: [defaultDbCluster.id],
/// });
/// export const dbCluster = _default.apply(_default => _default.ids?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_db_cluster = alicloud.clickhouse.DbCluster("default",
///     db_cluster_version="20.3.10.75",
///     category="Basic",
///     db_cluster_class="S8",
///     db_cluster_network_type="vpc",
///     db_node_group_count=1,
///     payment_type="PayAsYouGo",
///     db_node_storage="500",
///     storage_type="cloud_essd",
///     vswitch_id="your_vswitch_id")
/// default = alicloud.clickhouse.get_db_clusters_output(ids=[default_db_cluster.id])
/// pulumi.export("dbCluster", default.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultDbCluster = new AliCloud.ClickHouse.DbCluster("default", new()
///     {
///         DbClusterVersion = "20.3.10.75",
///         Category = "Basic",
///         DbClusterClass = "S8",
///         DbClusterNetworkType = "vpc",
///         DbNodeGroupCount = 1,
///         PaymentType = "PayAsYouGo",
///         DbNodeStorage = "500",
///         StorageType = "cloud_essd",
///         VswitchId = "your_vswitch_id",
///     });
///
///     var @default = AliCloud.ClickHouse.GetDbClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDbCluster.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dbCluster"] = @default.Apply(@default => @default.Apply(getDbClustersResult => getDbClustersResult.Ids[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultDbCluster, err := clickhouse.NewDbCluster(ctx, "default", &clickhouse.DbClusterArgs{
/// DbClusterVersion: pulumi.String("20.3.10.75"),
/// Category: pulumi.String("Basic"),
/// DbClusterClass: pulumi.String("S8"),
/// DbClusterNetworkType: pulumi.String("vpc"),
/// DbNodeGroupCount: pulumi.Int(1),
/// PaymentType: pulumi.String("PayAsYouGo"),
/// DbNodeStorage: pulumi.String("500"),
/// StorageType: pulumi.String("cloud_essd"),
/// VswitchId: pulumi.String("your_vswitch_id"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := clickhouse.GetDbClustersOutput(ctx, clickhouse.GetDbClustersOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultDbCluster.ID(),
/// },
/// }, nil);
/// ctx.Export("dbCluster", _default.ApplyT(func(_default clickhouse.GetDbClustersResult) (*string, error) {
/// return &default.Ids[0], nil
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
/// import com.pulumi.alicloud.clickhouse.DbCluster;
/// import com.pulumi.alicloud.clickhouse.DbClusterArgs;
/// import com.pulumi.alicloud.clickhouse.ClickhouseFunctions;
/// import com.pulumi.alicloud.clickhouse.inputs.GetDbClustersArgs;
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
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbClusterVersion("20.3.10.75")
///             .category("Basic")
///             .dbClusterClass("S8")
///             .dbClusterNetworkType("vpc")
///             .dbNodeGroupCount(1)
///             .paymentType("PayAsYouGo")
///             .dbNodeStorage("500")
///             .storageType("cloud_essd")
///             .vswitchId("your_vswitch_id")
///             .build());
///
///         final var default = ClickhouseFunctions.getDbClusters(GetDbClustersArgs.builder()
///             .ids(defaultDbCluster.id())
///             .build());
///
///         ctx.export("dbCluster", default_.applyValue(_default_ -> _default_.ids()[0]));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultDbCluster:
///     type: alicloud:clickhouse:DbCluster
///     name: default
///     properties:
///       dbClusterVersion: 20.3.10.75
///       category: Basic
///       dbClusterClass: S8
///       dbClusterNetworkType: vpc
///       dbNodeGroupCount: '1'
///       paymentType: PayAsYouGo
///       dbNodeStorage: '500'
///       storageType: cloud_essd
///       vswitchId: your_vswitch_id
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:clickhouse:getDbClusters
///       arguments:
///         ids:
///           - ${defaultDbCluster.id}
/// outputs:
///   dbCluster: ${default.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clickhouse_get_db_clusters_get_db_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbClustersResult> getDbClusters(
  GetDbClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:clickhouse/getDbClusters:getDbClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbClustersResult.fromMap(result);
}

/// This data source provides the Click House Regions of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.138.0+.
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
/// const default1 = alicloud.clickhouse.getRegions({
///     current: true,
/// });
/// const default2 = alicloud.clickhouse.getRegions({
///     regionId: "cn-hangzhou",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default1 = alicloud.clickhouse.get_regions(current=True)
/// default2 = alicloud.clickhouse.get_regions(region_id="cn-hangzhou")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var default1 = AliCloud.ClickHouse.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var default2 = AliCloud.ClickHouse.GetRegions.Invoke(new()
///     {
///         RegionId = "cn-hangzhou",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clickhouse.GetRegions(ctx, &clickhouse.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouse.GetRegions(ctx, &clickhouse.GetRegionsArgs{
/// 			RegionId: pulumi.StringRef("cn-hangzhou"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.clickhouse.ClickhouseFunctions;
/// import com.pulumi.alicloud.clickhouse.inputs.GetRegionsArgs;
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
///         final var default1 = ClickhouseFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var default2 = ClickhouseFunctions.getRegions(GetRegionsArgs.builder()
///             .regionId("cn-hangzhou")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default1:
///     fn::invoke:
///       function: alicloud:clickhouse:getRegions
///       arguments:
///         current: true
///   default2:
///     fn::invoke:
///       function: alicloud:clickhouse:getRegions
///       arguments:
///         regionId: cn-hangzhou
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_clickhouse_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:clickhouse/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}
