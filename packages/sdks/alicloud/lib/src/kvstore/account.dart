import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a Tair (Redis OSS-Compatible) And Memcache (KVStore) Account resource.
///
///
///
/// For information about Tair (Redis OSS-Compatible) And Memcache (KVStore) Account and how to use it, see [What is Account](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createaccount-redis).
///
/// &gt; **NOTE:** Available since v1.66.0.
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
/// const _default = alicloud.kvstore.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultInstance = new alicloud.kvstore.Instance("default", {
///     dbInstanceName: name,
///     vswitchId: defaultSwitch.id,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     instanceClass: "redis.master.large.default",
///     instanceType: "Redis",
///     engineVersion: "5.0",
///     securityIps: ["10.23.12.24"],
///     config: {
///         appendonly: "yes",
///         "lazyfree-lazy-eviction": "yes",
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultAccount = new alicloud.kvstore.Account("default", {
///     accountName: "tfexamplename",
///     accountPassword: "YourPassword_123",
///     instanceId: defaultInstance.id,
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
/// default = alicloud.kvstore.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_instance = alicloud.kvstore.Instance("default",
///     db_instance_name=name,
///     vswitch_id=default_switch.id,
///     resource_group_id=default_get_resource_groups.ids[0],
///     zone_id=default.zones[0].id,
///     instance_class="redis.master.large.default",
///     instance_type="Redis",
///     engine_version="5.0",
///     security_ips=["10.23.12.24"],
///     config={
///         "appendonly": "yes",
///         "lazyfree-lazy-eviction": "yes",
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_account = alicloud.kvstore.Account("default",
///     account_name="tfexamplename",
///     account_password="YourPassword_123",
///     instance_id=default_instance.id)
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
///     var @default = AliCloud.KVStore.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultInstance = new AliCloud.KVStore.Instance("default", new()
///     {
///         DbInstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceClass = "redis.master.large.default",
///         InstanceType = "Redis",
///         EngineVersion = "5.0",
///         SecurityIps = new[]
///         {
///             "10.23.12.24",
///         },
///         Config =
///         {
///             { "appendonly", "yes" },
///             { "lazyfree-lazy-eviction", "yes" },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultAccount = new AliCloud.KVStore.Account("default", new()
///     {
///         AccountName = "tfexamplename",
///         AccountPassword = "YourPassword_123",
///         InstanceId = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := kvstore.GetZones(ctx, &kvstore.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
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
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := kvstore.NewInstance(ctx, "default", &kvstore.InstanceArgs{
/// 			DbInstanceName:  pulumi.String(name),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			ZoneId:          pulumi.String(_default.Zones[0].Id),
/// 			InstanceClass:   pulumi.String("redis.master.large.default"),
/// 			InstanceType:    pulumi.String("Redis"),
/// 			EngineVersion:   pulumi.String("5.0"),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("10.23.12.24"),
/// 			},
/// 			Config: pulumi.StringMap{
/// 				"appendonly":             pulumi.String("yes"),
/// 				"lazyfree-lazy-eviction": pulumi.String("yes"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kvstore.NewAccount(ctx, "default", &kvstore.AccountArgs{
/// 			AccountName:     pulumi.String("tfexamplename"),
/// 			AccountPassword: pulumi.String("YourPassword_123"),
/// 			InstanceId:      defaultInstance.ID(),
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.kvstore.Instance;
/// import com.pulumi.alicloud.kvstore.InstanceArgs;
/// import com.pulumi.alicloud.kvstore.Account;
/// import com.pulumi.alicloud.kvstore.AccountArgs;
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
///         final var default = KvstoreFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
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
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .instanceClass("redis.master.large.default")
///             .instanceType("Redis")
///             .engineVersion("5.0")
///             .securityIps("10.23.12.24")
///             .config(Map.ofEntries(
///                 Map.entry("appendonly", "yes"),
///                 Map.entry("lazyfree-lazy-eviction", "yes")
///             ))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .accountName("tfexamplename")
///             .accountPassword("YourPassword_123")
///             .instanceId(defaultInstance.id())
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
///       zoneId: ${default.zones[0].id}
///   defaultInstance:
///     type: alicloud:kvstore:Instance
///     name: default
///     properties:
///       dbInstanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       zoneId: ${default.zones[0].id}
///       instanceClass: redis.master.large.default
///       instanceType: Redis
///       engineVersion: '5.0'
///       securityIps:
///         - 10.23.12.24
///       config:
///         appendonly: yes
///         lazyfree-lazy-eviction: yes
///       tags:
///         Created: TF
///         For: example
///   defaultAccount:
///     type: alicloud:kvstore:Account
///     name: default
///     properties:
///       accountName: tfexamplename
///       accountPassword: YourPassword_123
///       instanceId: ${defaultInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:kvstore:getZones
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tair (Redis OSS-Compatible) And Memcache (KVStore) Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kvstore/account:Account example <instance_id>:<account_name>
/// ```
class Account extends pulumi.CustomResource {
  /// The name of the account. The name must meet the following requirements:
  /// * The name must start with a lowercase letter and can contain lowercase letters, digits, and underscores (_).
  /// * The name can be up to 100 characters in length.
  /// * The name cannot be one of the reserved words listed in the [Reserved words for Redis account names](https://www.alibabacloud.com/help/en/redis/user-guide/create-and-manage-database-accounts) section.
  late final pulumi.Output<String> accountName;
  /// The password of the account. The password must be 8 to 32 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `!@ # $ % ^ & * ( ) _ + - =`. You have to specify one of `account_password` and `kms_encrypted_password` fields.
  late final pulumi.Output<String?> accountPassword;
  /// The privilege of account access database. Default value: `RoleReadWrite`
  /// - `RoleReadOnly`: This value is only for Redis and Memcache
  /// - `RoleReadWrite`: This value is only for Redis and Memcache
  late final pulumi.Output<String> accountPrivilege;
  /// Privilege type of account.
  /// - Normal: Common privilege.
  /// Default to Normal.
  late final pulumi.Output<String> accountType;
  /// Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  late final pulumi.Output<String?> description;
  /// The Id of instance in which account belongs (The engine version of instance must be 4.0 or 4.0+).
  late final pulumi.Output<String> instanceId;
  /// An KMS encrypts password used to a Tair (Redis OSS-Compatible) And Memcache (KVStore) account. If the `account_password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a Tair (Redis OSS-Compatible) And Memcache (KVStore) account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The status of Tair (Redis OSS-Compatible) And Memcache (KVStore) Account.
  late final pulumi.Output<String> status;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_kvstore_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kvstore/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    accountPrivilege = registerOutput<String>('accountPrivilege');
    accountType = registerOutput<String>('accountType');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
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
          'alicloud:kvstore/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    accountPrivilege = registerOutput<String>('accountPrivilege');
    accountType = registerOutput<String>('accountType');
    description = registerOutput<String?>('description');
    instanceId = registerOutput<String>('instanceId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    status = registerOutput<String>('status');
  }
}
