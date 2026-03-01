import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';

/// Provides an RDS account resource and used to manage databases.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.120.0`. Please use new resource alicloud_rds_account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const creation = config.get("creation") || "Rds";
/// const name = config.get("name") || "dbaccountmysql";
/// const _default = alicloud.getZones({
///     availableResourceCreation: creation,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const instance = new alicloud.rds.Instance("instance", {
///     engine: "MySQL",
///     engineVersion: "5.6",
///     instanceType: "rds.mysql.s1.small",
///     instanceStorage: 10,
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
/// });
/// const account = new alicloud.rds.Account("account", {
///     instanceId: instance.id,
///     name: "tftestnormal",
///     password: "Test12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// creation = config.get("creation")
/// if creation is None:
///     creation = "Rds"
/// name = config.get("name")
/// if name is None:
///     name = "dbaccountmysql"
/// default = alicloud.get_zones(available_resource_creation=creation)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// instance = alicloud.rds.Instance("instance",
///     engine="MySQL",
///     engine_version="5.6",
///     instance_type="rds.mysql.s1.small",
///     instance_storage=10,
///     vswitch_id=default_switch.id,
///     instance_name=name)
/// account = alicloud.rds.Account("account",
///     instance_id=instance.id,
///     name="tftestnormal",
///     password="Test12345")
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
///     var creation = config.Get("creation") ?? "Rds";
///     var name = config.Get("name") ?? "dbaccountmysql";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = creation,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var instance = new AliCloud.Rds.Instance("instance", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         InstanceType = "rds.mysql.s1.small",
///         InstanceStorage = 10,
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///     });
///
///     var account = new AliCloud.Rds.Account("account", new()
///     {
///         InstanceId = instance.Id,
///         Name = "tftestnormal",
///         Password = "Test12345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		creation := "Rds"
/// 		if param := cfg.Get("creation"); param != "" {
/// 			creation = param
/// 		}
/// 		name := "dbaccountmysql"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef(creation),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := rds.NewInstance(ctx, "instance", &rds.InstanceArgs{
/// 			Engine:          pulumi.String("MySQL"),
/// 			EngineVersion:   pulumi.String("5.6"),
/// 			InstanceType:    pulumi.String("rds.mysql.s1.small"),
/// 			InstanceStorage: pulumi.Int(10),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			InstanceName:    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewAccount(ctx, "account", &rds.AccountArgs{
/// 			InstanceId: instance.ID(),
/// 			Name:       pulumi.String("tftestnormal"),
/// 			Password:   pulumi.String("Test12345"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.Account;
/// import com.pulumi.alicloud.rds.AccountArgs;
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
///         final var creation = config.get("creation").orElse("Rds");
///         final var name = config.get("name").orElse("dbaccountmysql");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation(creation)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .instanceType("rds.mysql.s1.small")
///             .instanceStorage(10)
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .build());
///
///         var account = new Account("account", AccountArgs.builder()
///             .instanceId(instance.id())
///             .name("tftestnormal")
///             .password("Test12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   creation:
///     type: string
///     default: Rds
///   name:
///     type: string
///     default: dbaccountmysql
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   instance:
///     type: alicloud:rds:Instance
///     properties:
///       engine: MySQL
///       engineVersion: '5.6'
///       instanceType: rds.mysql.s1.small
///       instanceStorage: '10'
///       vswitchId: ${defaultSwitch.id}
///       instanceName: ${name}
///   account:
///     type: alicloud:rds:Account
///     properties:
///       instanceId: ${instance.id}
///       name: tftestnormal
///       password: Test12345
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: ${creation}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/account:Account example "rm-12345:tf_account"
/// ```
class Account extends pulumi.CustomResource {
  late final pulumi.Output<String> accountDescription;
  late final pulumi.Output<String> accountName;
  late final pulumi.Output<String> accountPassword;
  late final pulumi.Output<String> accountType;
  late final pulumi.Output<bool?> checkPolicy;
  late final pulumi.Output<String> dbInstanceId;
  /// Database description. It cannot begin with https://. It must start with a Chinese character or English letter. It can include Chinese and English characters, underlines (_), hyphens (-), and numbers. The length may be 2-256 characters.
  late final pulumi.Output<String> description;
  /// The Id of instance in which account belongs.
  late final pulumi.Output<String> instanceId;
  /// An KMS encrypts password used to a db account. If the `password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// Operation account requiring a uniqueness check. It may consist of lower case letters, numbers, and underlines, and must start with a letter and have no more than 16 characters.
  late final pulumi.Output<String> name;
  /// Operation password. It may consist of letters, digits, or underlines, with a length of 6 to 32 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  late final pulumi.Output<String> password;
  late final pulumi.Output<bool?> resetPermissionFlag;
  late final pulumi.Output<String> status;
  /// Privilege type of account. The SQLServer engine does not support create high privilege accounts.
  /// - Normal: Common privilege.
  /// - Super: High privilege.
  ///
  /// Default to Normal.
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_rds_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountDescription = registerOutput<String>('accountDescription');
    this.accountName = registerOutput<String>('accountName');
    this.accountPassword = registerOutput<String>('accountPassword');
    this.accountType = registerOutput<String>('accountType');
    this.checkPolicy = registerOutput<bool?>('checkPolicy');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.description = registerOutput<String>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    this.kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.resetPermissionFlag = registerOutput<bool?>('resetPermissionFlag');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
