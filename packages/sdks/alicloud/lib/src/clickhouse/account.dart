import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a Click House Account resource.
///
/// For information about Click House Account and how to use it, see [What is Account](https://www.alibabacloud.com/help/zh/clickhouse/latest/api-clickhouse-2019-11-11-createaccount).
///
/// &gt; **NOTE:** Available since v1.134.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
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
///     zoneId: _default.then(_default => _default.regions?.[0]?.zoneIds?.[1]?.zoneId),
/// });
/// const defaultDbCluster = new alicloud.clickhouse.DbCluster("default", {
///     dbClusterVersion: "22.8.5.29",
///     category: "Basic",
///     dbClusterClass: "S8",
///     dbClusterNetworkType: "vpc",
///     dbNodeGroupCount: 1,
///     paymentType: "PayAsYouGo",
///     dbNodeStorage: "500",
///     storageType: "cloud_essd",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultAccount = new alicloud.clickhouse.Account("default", {
///     dbClusterId: defaultDbCluster.id,
///     accountDescription: "tf-example-description",
///     accountName: "examplename",
///     accountPassword: "Example1234",
///     type: type,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
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
///     zone_id=default.regions[0].zone_ids[1].zone_id)
/// default_db_cluster = alicloud.clickhouse.DbCluster("default",
///     db_cluster_version="22.8.5.29",
///     category="Basic",
///     db_cluster_class="S8",
///     db_cluster_network_type="vpc",
///     db_node_group_count=1,
///     payment_type="PayAsYouGo",
///     db_node_storage="500",
///     storage_type="cloud_essd",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id)
/// default_account = alicloud.clickhouse.Account("default",
///     db_cluster_id=default_db_cluster.id,
///     account_description="tf-example-description",
///     account_name="examplename",
///     account_password="Example1234",
///     type=type)
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
///     var name = config.Get("name") ?? "tf-example";
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
///         ZoneId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.ZoneIds[1]?.ZoneId)),
///     });
///
///     var defaultDbCluster = new AliCloud.ClickHouse.DbCluster("default", new()
///     {
///         DbClusterVersion = "22.8.5.29",
///         Category = "Basic",
///         DbClusterClass = "S8",
///         DbClusterNetworkType = "vpc",
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
///         AccountDescription = "tf-example-description",
///         AccountName = "examplename",
///         AccountPassword = "Example1234",
///         Type = type,
///     });
///
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
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
/// 			ZoneId:      pulumi.String(_default.Regions[0].ZoneIds[1].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbCluster, err := clickhouse.NewDbCluster(ctx, "default", &clickhouse.DbClusterArgs{
/// 			DbClusterVersion:     pulumi.String("22.8.5.29"),
/// 			Category:             pulumi.String("Basic"),
/// 			DbClusterClass:       pulumi.String("S8"),
/// 			DbClusterNetworkType: pulumi.String("vpc"),
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
/// 		_, err = clickhouse.NewAccount(ctx, "default", &clickhouse.AccountArgs{
/// 			DbClusterId:        defaultDbCluster.ID(),
/// 			AccountDescription: pulumi.String("tf-example-description"),
/// 			AccountName:        pulumi.String("examplename"),
/// 			AccountPassword:    pulumi.String("Example1234"),
/// 			Type:               pulumi.String(_type),
/// 		})
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.clickhouse.DbCluster;
/// import com.pulumi.alicloud.clickhouse.DbClusterArgs;
/// import com.pulumi.alicloud.clickhouse.Account;
/// import com.pulumi.alicloud.clickhouse.AccountArgs;
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
///         final var name = config.get("name").orElse("tf-example");
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
///             .zoneId(default_.regions()[0].zoneIds()[1].zoneId())
///             .build());
///
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbClusterVersion("22.8.5.29")
///             .category("Basic")
///             .dbClusterClass("S8")
///             .dbClusterNetworkType("vpc")
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
///             .accountDescription("tf-example-description")
///             .accountName("examplename")
///             .accountPassword("Example1234")
///             .type(type)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
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
///       zoneId: ${default.regions[0].zoneIds[1].zoneId}
///   defaultDbCluster:
///     type: alicloud:clickhouse:DbCluster
///     name: default
///     properties:
///       dbClusterVersion: 22.8.5.29
///       category: Basic
///       dbClusterClass: S8
///       dbClusterNetworkType: vpc
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
///       accountDescription: tf-example-description
///       accountName: examplename
///       accountPassword: Example1234
///       type: ${type}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:clickhouse:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouse/account:Account example <db_cluster_id>:<account_name>
/// ```
class Account extends pulumi.CustomResource {
  /// In Chinese, English letter. May contain Chinese and English characters, lowercase letters, numbers, and underscores (_), the dash (-). Cannot start with http:// and https:// at the beginning. Length is from 2 to 256 characters.
  late final pulumi.Output<String?> accountDescription;
  /// Account name: lowercase letters, numbers, underscores, lowercase letter; length no more than 16 characters.
  late final pulumi.Output<String> accountName;
  /// The account password: uppercase letters, lowercase letters, lowercase letters, numbers, and special characters (special character! #$%^& author (s):_+-=) in a length of 8-32 bit.
  late final pulumi.Output<String> accountPassword;
  /// The list of databases to which you want to grant permissions. Separate databases with commas (,).
  late final pulumi.Output<String> allowDatabases;
  /// The list of dictionaries to which you want to grant permissions. Separate dictionaries with commas (,).
  late final pulumi.Output<String> allowDictionaries;
  /// The db cluster id.
  late final pulumi.Output<String> dbClusterId;
  /// Specifies whether to grant DDL permissions to the database account. Valid values: `true` and `false`.
  late final pulumi.Output<bool> ddlAuthority;
  /// Specifies whether to grant DML permissions to the database account. Valid values: `all` and `readOnly,modify`.
  late final pulumi.Output<String> dmlAuthority;
  /// The status of the resource. Valid Status: `Creating`,`Available`,`Deleting`.
  late final pulumi.Output<String> status;
  /// The list of all databases. Separate databases with commas (,). Field 'total_databases' has been deprecated from provider version 1.223.1.
  late final pulumi.Output<String> totalDatabases;
  /// The list of all dictionaries. Separate dictionaries with commas (,). Field 'total_dictionaries' has been deprecated from provider version 1.223.1.
  late final pulumi.Output<String> totalDictionaries;
  /// The type of the database account. Valid values: `Normal` or `Super`.
  late final pulumi.Output<String?> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_clickhouse_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:clickhouse/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    allowDatabases = registerOutput<String>('allowDatabases');
    allowDictionaries = registerOutput<String>('allowDictionaries');
    dbClusterId = registerOutput<String>('dbClusterId');
    ddlAuthority = registerOutput<bool>('ddlAuthority');
    dmlAuthority = registerOutput<String>('dmlAuthority');
    status = registerOutput<String>('status');
    totalDatabases = registerOutput<String>('totalDatabases');
    totalDictionaries = registerOutput<String>('totalDictionaries');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:clickhouse/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    allowDatabases = registerOutput<String>('allowDatabases');
    allowDictionaries = registerOutput<String>('allowDictionaries');
    dbClusterId = registerOutput<String>('dbClusterId');
    ddlAuthority = registerOutput<bool>('ddlAuthority');
    dmlAuthority = registerOutput<String>('dmlAuthority');
    status = registerOutput<String>('status');
    totalDatabases = registerOutput<String>('totalDatabases');
    totalDictionaries = registerOutput<String>('totalDictionaries');
    type = registerOutput<String?>('type');
  }
}
