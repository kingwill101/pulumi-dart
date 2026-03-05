import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a GPDB Account resource.
///
/// For information about GPDB Account and how to use it, see [What is Account](https://www.alibabacloud.com/help/doc-detail/86924.htm).
///
/// &gt; **NOTE:** Available since v1.142.0.
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
/// const _default = alicloud.gpdb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const defaultInstance = new alicloud.gpdb.Instance("default", {
///     dbInstanceCategory: "HighAvailability",
///     dbInstanceClass: "gpdb.group.segsdx1",
///     dbInstanceMode: "StorageElastic",
///     description: name,
///     engine: "gpdb",
///     engineVersion: "6.0",
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     instanceNetworkType: "VPC",
///     instanceSpec: "2C16G",
///     paymentType: "PayAsYouGo",
///     segStorageType: "cloud_essd",
///     segNodeNum: 4,
///     storageSize: 50,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     ipWhitelists: [{
///         securityIpList: "127.0.0.1",
///     }],
/// });
/// const defaultAccount = new alicloud.gpdb.Account("default", {
///     accountName: "tf_example",
///     dbInstanceId: defaultInstance.id,
///     accountPassword: "Example1234",
///     accountDescription: "tf_example",
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
/// default = alicloud.gpdb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// default_instance = alicloud.gpdb.Instance("default",
///     db_instance_category="HighAvailability",
///     db_instance_class="gpdb.group.segsdx1",
///     db_instance_mode="StorageElastic",
///     description=name,
///     engine="gpdb",
///     engine_version="6.0",
///     zone_id=default.ids[0],
///     instance_network_type="VPC",
///     instance_spec="2C16G",
///     payment_type="PayAsYouGo",
///     seg_storage_type="cloud_essd",
///     seg_node_num=4,
///     storage_size=50,
///     vpc_id=default_get_networks.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     ip_whitelists=[{
///         "security_ip_list": "127.0.0.1",
///     }])
/// default_account = alicloud.gpdb.Account("default",
///     account_name="tf_example",
///     db_instance_id=default_instance.id,
///     account_password="Example1234",
///     account_description="tf_example")
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
///     var @default = AliCloud.Gpdb.GetZones.Invoke();
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
///     var defaultInstance = new AliCloud.Gpdb.Instance("default", new()
///     {
///         DbInstanceCategory = "HighAvailability",
///         DbInstanceClass = "gpdb.group.segsdx1",
///         DbInstanceMode = "StorageElastic",
///         Description = name,
///         Engine = "gpdb",
///         EngineVersion = "6.0",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         InstanceNetworkType = "VPC",
///         InstanceSpec = "2C16G",
///         PaymentType = "PayAsYouGo",
///         SegStorageType = "cloud_essd",
///         SegNodeNum = 4,
///         StorageSize = 50,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         IpWhitelists = new[]
///         {
///             new AliCloud.Gpdb.Inputs.InstanceIpWhitelistArgs
///             {
///                 SecurityIpList = "127.0.0.1",
///             },
///         },
///     });
///
///     var defaultAccount = new AliCloud.Gpdb.Account("default", new()
///     {
///         AccountName = "tf_example",
///         DbInstanceId = defaultInstance.Id,
///         AccountPassword = "Example1234",
///         AccountDescription = "tf_example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
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
/// 		_default, err := gpdb.GetZones(ctx, &gpdb.GetZonesArgs{}, nil)
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
/// 		defaultInstance, err := gpdb.NewInstance(ctx, "default", &gpdb.InstanceArgs{
/// 			DbInstanceCategory:  pulumi.String("HighAvailability"),
/// 			DbInstanceClass:     pulumi.String("gpdb.group.segsdx1"),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Description:         pulumi.String(name),
/// 			Engine:              pulumi.String("gpdb"),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String(_default.Ids[0]),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			InstanceSpec:        pulumi.String("2C16G"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			SegNodeNum:          pulumi.Int(4),
/// 			StorageSize:         pulumi.Int(50),
/// 			VpcId:               pulumi.String(defaultGetNetworks.Ids[0]),
/// 			VswitchId:           pulumi.String(defaultGetSwitches.Ids[0]),
/// 			IpWhitelists: gpdb.InstanceIpWhitelistArray{
/// 				&gpdb.InstanceIpWhitelistArgs{
/// 					SecurityIpList: pulumi.String("127.0.0.1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewAccount(ctx, "default", &gpdb.AccountArgs{
/// 			AccountName:        pulumi.String("tf_example"),
/// 			DbInstanceId:       defaultInstance.ID(),
/// 			AccountPassword:    pulumi.String("Example1234"),
/// 			AccountDescription: pulumi.String("tf_example"),
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
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.inputs.InstanceIpWhitelistArgs;
/// import com.pulumi.alicloud.gpdb.Account;
/// import com.pulumi.alicloud.gpdb.AccountArgs;
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
///         final var default = GpdbFunctions.getZones(GetZonesArgs.builder()
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceCategory("HighAvailability")
///             .dbInstanceClass("gpdb.group.segsdx1")
///             .dbInstanceMode("StorageElastic")
///             .description(name)
///             .engine("gpdb")
///             .engineVersion("6.0")
///             .zoneId(default_.ids()[0])
///             .instanceNetworkType("VPC")
///             .instanceSpec("2C16G")
///             .paymentType("PayAsYouGo")
///             .segStorageType("cloud_essd")
///             .segNodeNum(4)
///             .storageSize(50)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .ipWhitelists(InstanceIpWhitelistArgs.builder()
///                 .securityIpList("127.0.0.1")
///                 .build())
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .accountName("tf_example")
///             .dbInstanceId(defaultInstance.id())
///             .accountPassword("Example1234")
///             .accountDescription("tf_example")
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
///   defaultInstance:
///     type: alicloud:gpdb:Instance
///     name: default
///     properties:
///       dbInstanceCategory: HighAvailability
///       dbInstanceClass: gpdb.group.segsdx1
///       dbInstanceMode: StorageElastic
///       description: ${name}
///       engine: gpdb
///       engineVersion: '6.0'
///       zoneId: ${default.ids[0]}
///       instanceNetworkType: VPC
///       instanceSpec: 2C16G
///       paymentType: PayAsYouGo
///       segStorageType: cloud_essd
///       segNodeNum: 4
///       storageSize: 50
///       vpcId: ${defaultGetNetworks.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       ipWhitelists:
///         - securityIpList: 127.0.0.1
///   defaultAccount:
///     type: alicloud:gpdb:Account
///     name: default
///     properties:
///       accountName: tf_example
///       dbInstanceId: ${defaultInstance.id}
///       accountPassword: Example1234
///       accountDescription: tf_example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:gpdb:getZones
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// GPDB Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/account:Account example <db_instance_id>:<account_name>
/// ```
class Account extends pulumi.CustomResource {
  /// The description of the account.
  late final pulumi.Output<String?> accountDescription;
  /// The account name.
  late final pulumi.Output<String> accountName;
  /// AccountPassword
  late final pulumi.Output<String> accountPassword;
  /// Account type. The value range is as follows:
  ///
  /// Normal: Normal account number.
  ///
  /// Super: a high-privilege account.
  late final pulumi.Output<String> accountType;
  /// Database name, with the following restrictions:
  /// - Can only contain letters, numbers and underscores.
  /// - Must start with a letter.
  /// - Length cannot exceed 63 characters.
  late final pulumi.Output<String?> databaseName;
  /// The Adb pg instance ID.
  late final pulumi.Output<String> dbInstanceId;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_gpdb_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountType = registerOutput<String>('accountType');
    databaseName = registerOutput<String?>('databaseName');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    status = registerOutput<String>('status');
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
          'alicloud:gpdb/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountType = registerOutput<String>('accountType');
    databaseName = registerOutput<String?>('databaseName');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    status = registerOutput<String>('status');
  }
}
