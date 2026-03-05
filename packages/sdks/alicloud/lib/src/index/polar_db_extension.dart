import 'package:pulumi/pulumi.dart' as pulumi;
import 'polar_db_extension_args.dart';
import 'polar_db_extension_state.dart';

/// Provides a Polar Db Extension resource.
///
///
///
/// For information about Polar Db Extension and how to use it, see [What is Extension](https://next.api.alibabacloud.com/document/polardb/2017-08-01/CreateExtensions).
///
/// &gt; **NOTE:** Available since v1.264.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.polardb.getNodeClasses({
///     dbType: "PostgreSQL",
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
///     zoneId: _default.then(_default => _default.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const dbcluster = new alicloud.polardb.Cluster("dbcluster", {
///     defaultTimeZone: "SYSTEM",
///     creationCategory: "Normal",
///     zoneId: _default.then(_default => _default.classes?.[0]?.zoneId),
///     creationOption: "Normal",
///     dbVersion: "14",
///     payType: "PostPaid",
///     dbType: "PostgreSQL",
///     dbNodeClass: "polar.pg.x4.medium.c",
///     vswitchId: defaultSwitch.id,
/// });
/// const account = new alicloud.polardb.Account("account", {
///     accountType: "Normal",
///     accountName: "nzh",
///     accountPassword: "Ali123456",
///     dbClusterId: dbcluster.id,
/// });
/// const database = new alicloud.polardb.Database("database", {
///     characterSetName: "UTF8",
///     dbDescription: name,
///     dbClusterId: dbcluster.id,
///     dbName: "nzh",
///     accountName: account.dbClusterId,
/// });
/// const defaultPolarDbExtension = new alicloud.PolarDbExtension("default", {
///     extensionName: "postgres_fdw",
///     dbClusterId: dbcluster.id,
///     accountName: account.accountName,
///     dbName: database.dbName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.polardb.get_node_classes(db_type="PostgreSQL",
///     pay_type="PostPaid",
///     category="Normal")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.classes[0].zone_id,
///     vswitch_name="terraform-example")
/// dbcluster = alicloud.polardb.Cluster("dbcluster",
///     default_time_zone="SYSTEM",
///     creation_category="Normal",
///     zone_id=default.classes[0].zone_id,
///     creation_option="Normal",
///     db_version="14",
///     pay_type="PostPaid",
///     db_type="PostgreSQL",
///     db_node_class="polar.pg.x4.medium.c",
///     vswitch_id=default_switch.id)
/// account = alicloud.polardb.Account("account",
///     account_type="Normal",
///     account_name="nzh",
///     account_password="Ali123456",
///     db_cluster_id=dbcluster.id)
/// database = alicloud.polardb.Database("database",
///     character_set_name="UTF8",
///     db_description=name,
///     db_cluster_id=dbcluster.id,
///     db_name="nzh",
///     account_name=account.db_cluster_id)
/// default_polar_db_extension = alicloud.PolarDbExtension("default",
///     extension_name="postgres_fdw",
///     db_cluster_id=dbcluster.id,
///     account_name=account.account_name,
///     db_name=database.db_name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
///     {
///         DbType = "PostgreSQL",
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
///         ZoneId = @default.Apply(@default => @default.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var dbcluster = new AliCloud.PolarDB.Cluster("dbcluster", new()
///     {
///         DefaultTimeZone = "SYSTEM",
///         CreationCategory = "Normal",
///         ZoneId = @default.Apply(@default => @default.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         CreationOption = "Normal",
///         DbVersion = "14",
///         PayType = "PostPaid",
///         DbType = "PostgreSQL",
///         DbNodeClass = "polar.pg.x4.medium.c",
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var account = new AliCloud.PolarDB.Account("account", new()
///     {
///         AccountType = "Normal",
///         AccountName = "nzh",
///         AccountPassword = "Ali123456",
///         DbClusterId = dbcluster.Id,
///     });
///
///     var database = new AliCloud.PolarDB.Database("database", new()
///     {
///         CharacterSetName = "UTF8",
///         DbDescription = name,
///         DbClusterId = dbcluster.Id,
///         DbName = "nzh",
///         AccountName = account.DbClusterId,
///     });
///
///     var defaultPolarDbExtension = new AliCloud.PolarDbExtension("default", new()
///     {
///         ExtensionName = "postgres_fdw",
///         DbClusterId = dbcluster.Id,
///         AccountName = account.AccountName,
///         DbName = database.DbName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/polardb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			DbType:   pulumi.StringRef("PostgreSQL"),
/// 			PayType:  "PostPaid",
/// 			Category: pulumi.StringRef("Normal"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Classes[0].ZoneId),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dbcluster, err := polardb.NewCluster(ctx, "dbcluster", &polardb.ClusterArgs{
/// 			DefaultTimeZone:  pulumi.String("SYSTEM"),
/// 			CreationCategory: pulumi.String("Normal"),
/// 			ZoneId:           pulumi.String(_default.Classes[0].ZoneId),
/// 			CreationOption:   pulumi.String("Normal"),
/// 			DbVersion:        pulumi.String("14"),
/// 			PayType:          pulumi.String("PostPaid"),
/// 			DbType:           pulumi.String("PostgreSQL"),
/// 			DbNodeClass:      pulumi.String("polar.pg.x4.medium.c"),
/// 			VswitchId:        defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		account, err := polardb.NewAccount(ctx, "account", &polardb.AccountArgs{
/// 			AccountType:     pulumi.String("Normal"),
/// 			AccountName:     pulumi.String("nzh"),
/// 			AccountPassword: pulumi.String("Ali123456"),
/// 			DbClusterId:     dbcluster.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		database, err := polardb.NewDatabase(ctx, "database", &polardb.DatabaseArgs{
/// 			CharacterSetName: pulumi.String("UTF8"),
/// 			DbDescription:    pulumi.String(name),
/// 			DbClusterId:      dbcluster.ID(),
/// 			DbName:           pulumi.String("nzh"),
/// 			AccountName:      account.DbClusterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alicloud.NewPolarDbExtension(ctx, "default", &alicloud.PolarDbExtensionArgs{
/// 			ExtensionName: pulumi.String("postgres_fdw"),
/// 			DbClusterId:   dbcluster.ID(),
/// 			AccountName:   account.AccountName,
/// 			DbName:        database.DbName,
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
/// import com.pulumi.alicloud.polardb.PolardbFunctions;
/// import com.pulumi.alicloud.polardb.inputs.GetNodeClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.polardb.Cluster;
/// import com.pulumi.alicloud.polardb.ClusterArgs;
/// import com.pulumi.alicloud.polardb.Account;
/// import com.pulumi.alicloud.polardb.AccountArgs;
/// import com.pulumi.alicloud.polardb.Database;
/// import com.pulumi.alicloud.polardb.DatabaseArgs;
/// import com.pulumi.alicloud.PolarDbExtension;
/// import com.pulumi.alicloud.PolarDbExtensionArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
///             .dbType("PostgreSQL")
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
///             .zoneId(default_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var dbcluster = new Cluster("dbcluster", ClusterArgs.builder()
///             .defaultTimeZone("SYSTEM")
///             .creationCategory("Normal")
///             .zoneId(default_.classes()[0].zoneId())
///             .creationOption("Normal")
///             .dbVersion("14")
///             .payType("PostPaid")
///             .dbType("PostgreSQL")
///             .dbNodeClass("polar.pg.x4.medium.c")
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var account = new Account("account", AccountArgs.builder()
///             .accountType("Normal")
///             .accountName("nzh")
///             .accountPassword("Ali123456")
///             .dbClusterId(dbcluster.id())
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .characterSetName("UTF8")
///             .dbDescription(name)
///             .dbClusterId(dbcluster.id())
///             .dbName("nzh")
///             .accountName(account.dbClusterId())
///             .build());
///
///         var defaultPolarDbExtension = new PolarDbExtension("defaultPolarDbExtension", PolarDbExtensionArgs.builder()
///             .extensionName("postgres_fdw")
///             .dbClusterId(dbcluster.id())
///             .accountName(account.accountName())
///             .dbName(database.dbName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
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
///       zoneId: ${default.classes[0].zoneId}
///       vswitchName: terraform-example
///   dbcluster:
///     type: alicloud:polardb:Cluster
///     properties:
///       defaultTimeZone: SYSTEM
///       creationCategory: Normal
///       zoneId: ${default.classes[0].zoneId}
///       creationOption: Normal
///       dbVersion: '14'
///       payType: PostPaid
///       dbType: PostgreSQL
///       dbNodeClass: polar.pg.x4.medium.c
///       vswitchId: ${defaultSwitch.id}
///   account:
///     type: alicloud:polardb:Account
///     properties:
///       accountType: Normal
///       accountName: nzh
///       accountPassword: Ali123456
///       dbClusterId: ${dbcluster.id}
///   database:
///     type: alicloud:polardb:Database
///     properties:
///       characterSetName: UTF8
///       dbDescription: ${name}
///       dbClusterId: ${dbcluster.id}
///       dbName: nzh
///       accountName: ${account.dbClusterId}
///   defaultPolarDbExtension:
///     type: alicloud:PolarDbExtension
///     name: default
///     properties:
///       extensionName: postgres_fdw
///       dbClusterId: ${dbcluster.id}
///       accountName: ${account.accountName}
///       dbName: ${database.dbName}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: PostgreSQL
///         payType: PostPaid
///         category: Normal
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Polar Db Extension can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:index/polarDbExtension:PolarDbExtension example <db_cluster_id>:<account_name>:<db_name>:<extension_name>
/// ```
class PolarDbExtension extends pulumi.CustomResource {
  /// The database account name of the associated PolarDB cluster. Only support `Super` account.
  late final pulumi.Output<String> accountName;
  /// The ID of the cluster.
  late final pulumi.Output<String> dbClusterId;
  /// PolarDB cluster database name.
  late final pulumi.Output<String> dbName;
  /// Default version.
  late final pulumi.Output<String> defaultVersion;
  /// Information about the installed plug-ins under the specified database.
  late final pulumi.Output<String> extensionName;
  /// Installed version, only supports upgrading to the default version.
  late final pulumi.Output<String> installedVersion;

  /// Creates a new [PolarDbExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolarDbExtension]. {@macro pulumi_index_polar_db_extension_polar_db_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolarDbExtension(
    String name, {
    PolarDbExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/polarDbExtension:PolarDbExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbName = registerOutput<String>('dbName');
    defaultVersion = registerOutput<String>('defaultVersion');
    extensionName = registerOutput<String>('extensionName');
    installedVersion = registerOutput<String>('installedVersion');
  }

  /// Gets an existing [PolarDbExtension] resource's state with the given [name] and [id].
  static PolarDbExtension get(
    String name,
    pulumi.Input<String> id, {
    PolarDbExtensionState? state,
  }) {
    return PolarDbExtension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolarDbExtension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/polarDbExtension:PolarDbExtension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    dbClusterId = registerOutput<String>('dbClusterId');
    dbName = registerOutput<String>('dbName');
    defaultVersion = registerOutput<String>('defaultVersion');
    extensionName = registerOutput<String>('extensionName');
    installedVersion = registerOutput<String>('installedVersion');
  }
}
