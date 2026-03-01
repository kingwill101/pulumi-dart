import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';

/// Provides a [ADB](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/latest/api-doc-adb-2019-03-15-api-doc-createaccount) account resource and used to manage databases.
///
/// > **NOTE:** Available since v1.71.0.
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
/// const creation = config.get("creation") || "ADB";
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.adb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const vswitchId = defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]);
/// const cluster = new alicloud.adb.DBCluster("cluster", {
///     dbClusterCategory: "MixedStorage",
///     mode: "flexible",
///     computeResource: "8Core32GB",
///     vswitchId: vswitchId,
///     description: name,
/// });
/// const defaultAccount = new alicloud.adb.Account("default", {
///     dbClusterId: cluster.id,
///     accountName: name,
///     accountPassword: "tf_example123",
///     accountDescription: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// creation = config.get("creation")
/// if creation is None:
///     creation = "ADB"
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.adb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// vswitch_id = default_get_switches.ids[0]
/// cluster = alicloud.adb.DBCluster("cluster",
///     db_cluster_category="MixedStorage",
///     mode="flexible",
///     compute_resource="8Core32GB",
///     vswitch_id=vswitch_id,
///     description=name)
/// default_account = alicloud.adb.Account("default",
///     db_cluster_id=cluster.id,
///     account_name=name,
///     account_password="tf_example123",
///     account_description=name)
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
///     var creation = config.Get("creation") ?? "ADB";
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.Adb.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var vswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]);
///
///     var cluster = new AliCloud.Adb.DBCluster("cluster", new()
///     {
///         DbClusterCategory = "MixedStorage",
///         Mode = "flexible",
///         ComputeResource = "8Core32GB",
///         VswitchId = vswitchId,
///         Description = name,
///     });
///
///     var defaultAccount = new AliCloud.Adb.Account("default", new()
///     {
///         DbClusterId = cluster.Id,
///         AccountName = name,
///         AccountPassword = "tf_example123",
///         AccountDescription = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		creation := "ADB"
/// 		if param := cfg.Get("creation"); param != "" {
/// 			creation = param
/// 		}
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := adb.GetZones(ctx, &adb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitchId := defaultGetSwitches.Ids[0]
/// 		cluster, err := adb.NewDBCluster(ctx, "cluster", &adb.DBClusterArgs{
/// 			DbClusterCategory: pulumi.String("MixedStorage"),
/// 			Mode:              pulumi.String("flexible"),
/// 			ComputeResource:   pulumi.String("8Core32GB"),
/// 			VswitchId:         pulumi.String(vswitchId),
/// 			Description:       pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = adb.NewAccount(ctx, "default", &adb.AccountArgs{
/// 			DbClusterId:        cluster.ID(),
/// 			AccountName:        pulumi.String(name),
/// 			AccountPassword:    pulumi.String("tf_example123"),
/// 			AccountDescription: pulumi.String(name),
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.adb.DBCluster;
/// import com.pulumi.alicloud.adb.DBClusterArgs;
/// import com.pulumi.alicloud.adb.Account;
/// import com.pulumi.alicloud.adb.AccountArgs;
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
///         final var creation = config.get("creation").orElse("ADB");
///         final var name = config.get("name").orElse("tfexample");
///         final var default = AdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         final var vswitchId = defaultGetSwitches.ids()[0];
///
///         var cluster = new DBCluster("cluster", DBClusterArgs.builder()
///             .dbClusterCategory("MixedStorage")
///             .mode("flexible")
///             .computeResource("8Core32GB")
///             .vswitchId(vswitchId)
///             .description(name)
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .dbClusterId(cluster.id())
///             .accountName(name)
///             .accountPassword("tf_example123")
///             .accountDescription(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   creation:
///     type: string
///     default: ADB
///   name:
///     type: string
///     default: tfexample
/// resources:
///   cluster:
///     type: alicloud:adb:DBCluster
///     properties:
///       dbClusterCategory: MixedStorage
///       mode: flexible
///       computeResource: 8Core32GB
///       vswitchId: ${vswitchId}
///       description: ${name}
///   defaultAccount:
///     type: alicloud:adb:Account
///     name: default
///     properties:
///       dbClusterId: ${cluster.id}
///       accountName: ${name}
///       accountPassword: tf_example123
///       accountDescription: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:adb:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[0]}
///   vswitchId: ${defaultGetSwitches.ids[0]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ADB account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/account:Account example am-12345:tf_account
/// ```
class Account extends pulumi.CustomResource {
  /// Account description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  late final pulumi.Output<String?> accountDescription;
  /// Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  late final pulumi.Output<String> accountName;
  /// Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  late final pulumi.Output<String?> accountPassword;
  /// The Id of cluster in which account belongs.
  late final pulumi.Output<String> dbClusterId;
  /// An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_adb_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountDescription = registerOutput<String?>('accountDescription');
    this.accountName = registerOutput<String>('accountName');
    this.accountPassword = registerOutput<String?>('accountPassword');
    this.dbClusterId = registerOutput<String>('dbClusterId');
    this.kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    this.kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
  }
}
