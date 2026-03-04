import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Provides a Polar Db Account resource.
///
/// Database account information.
///
/// For information about Polar Db Account and how to use it, see [What is Account](https://next.api.alibabacloud.com/document/polardb/2017-08-01/CreateAccount).
///
/// &gt; **NOTE:** Available since v1.67.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.polardb.getNodeClasses({
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
///     zoneId: _default.then(_default => _default.classes?.[0]?.zoneId),
///     vswitchName: "terraform-example",
/// });
/// const defaultCluster = new alicloud.polardb.Cluster("default", {
///     dbType: "MySQL",
///     dbVersion: "8.0",
///     dbNodeClass: _default.then(_default => _default.classes?.[0]?.supportedEngines?.[0]?.availableResources?.[0]?.dbNodeClass),
///     payType: "PostPaid",
///     vswitchId: defaultSwitch.id,
///     description: "terraform-example",
/// });
/// const defaultAccount = new alicloud.polardb.Account("default", {
///     dbClusterId: defaultCluster.id,
///     accountName: "terraform_example",
///     accountPassword: "Example1234",
///     accountDescription: "terraform-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.polardb.get_node_classes(db_type="MySQL",
///     db_version="8.0",
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
/// default_cluster = alicloud.polardb.Cluster("default",
///     db_type="MySQL",
///     db_version="8.0",
///     db_node_class=default.classes[0].supported_engines[0].available_resources[0].db_node_class,
///     pay_type="PostPaid",
///     vswitch_id=default_switch.id,
///     description="terraform-example")
/// default_account = alicloud.polardb.Account("default",
///     db_cluster_id=default_cluster.id,
///     account_name="terraform_example",
///     account_password="Example1234",
///     account_description="terraform-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.PolarDB.GetNodeClasses.Invoke(new()
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
///         ZoneId = @default.Apply(@default => @default.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.ZoneId)),
///         VswitchName = "terraform-example",
///     });
///
///     var defaultCluster = new AliCloud.PolarDB.Cluster("default", new()
///     {
///         DbType = "MySQL",
///         DbVersion = "8.0",
///         DbNodeClass = @default.Apply(@default => @default.Apply(getNodeClassesResult => getNodeClassesResult.Classes[0]?.SupportedEngines[0]?.AvailableResources[0]?.DbNodeClass)),
///         PayType = "PostPaid",
///         VswitchId = defaultSwitch.Id,
///         Description = "terraform-example",
///     });
///
///     var defaultAccount = new AliCloud.PolarDB.Account("default", new()
///     {
///         DbClusterId = defaultCluster.Id,
///         AccountName = "terraform_example",
///         AccountPassword = "Example1234",
///         AccountDescription = "terraform-example",
///     });
///
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
/// 		_default, err := polardb.GetNodeClasses(ctx, &polardb.GetNodeClassesArgs{
/// 			DbType:    pulumi.StringRef("MySQL"),
/// 			DbVersion: pulumi.StringRef("8.0"),
/// 			PayType:   "PostPaid",
/// 			Category:  pulumi.StringRef("Normal"),
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
/// 		defaultCluster, err := polardb.NewCluster(ctx, "default", &polardb.ClusterArgs{
/// 			DbType:      pulumi.String("MySQL"),
/// 			DbVersion:   pulumi.String("8.0"),
/// 			DbNodeClass: pulumi.String(_default.Classes[0].SupportedEngines[0].AvailableResources[0].DbNodeClass),
/// 			PayType:     pulumi.String("PostPaid"),
/// 			VswitchId:   defaultSwitch.ID(),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = polardb.NewAccount(ctx, "default", &polardb.AccountArgs{
/// 			DbClusterId:        defaultCluster.ID(),
/// 			AccountName:        pulumi.String("terraform_example"),
/// 			AccountPassword:    pulumi.String("Example1234"),
/// 			AccountDescription: pulumi.String("terraform-example"),
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
///         final var default = PolardbFunctions.getNodeClasses(GetNodeClassesArgs.builder()
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
///             .zoneId(default_.classes()[0].zoneId())
///             .vswitchName("terraform-example")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .dbType("MySQL")
///             .dbVersion("8.0")
///             .dbNodeClass(default_.classes()[0].supportedEngines()[0].availableResources()[0].dbNodeClass())
///             .payType("PostPaid")
///             .vswitchId(defaultSwitch.id())
///             .description("terraform-example")
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .dbClusterId(defaultCluster.id())
///             .accountName("terraform_example")
///             .accountPassword("Example1234")
///             .accountDescription("terraform-example")
///             .build());
///
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
///       zoneId: ${default.classes[0].zoneId}
///       vswitchName: terraform-example
///   defaultCluster:
///     type: alicloud:polardb:Cluster
///     name: default
///     properties:
///       dbType: MySQL
///       dbVersion: '8.0'
///       dbNodeClass: ${default.classes[0].supportedEngines[0].availableResources[0].dbNodeClass}
///       payType: PostPaid
///       vswitchId: ${defaultSwitch.id}
///       description: terraform-example
///   defaultAccount:
///     type: alicloud:polardb:Account
///     name: default
///     properties:
///       dbClusterId: ${defaultCluster.id}
///       accountName: terraform_example
///       accountPassword: Example1234
///       accountDescription: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:polardb:getNodeClasses
///       arguments:
///         dbType: MySQL
///         dbVersion: '8.0'
///         payType: PostPaid
///         category: Normal
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Polar Db Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/account:Account example <db_cluster_id>:<account_name>
/// ```
class Account extends pulumi.CustomResource {
  /// The description of the database account.
  late final pulumi.Output<String?> accountDescription;

  /// The lock status of the account. Valid values:
  /// - `UnLock`: The account is not locked.
  /// - `Lock`: The account is locked.
  late final pulumi.Output<String> accountLockState;

  /// The account name. Must meet the following requirements:
  /// - Start with a lowercase letter and end with a letter or number.
  /// - Consists of lowercase letters, numbers, or underscores.
  /// - The length is 2 to 16 characters.
  /// - You cannot use some reserved usernames, such as root and admin.
  late final pulumi.Output<String> accountName;

  /// The account password. You have to specify one of `account_password` and `kms_encrypted_password` fields. Must  meet the following requirements:
  /// - Contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters.
  /// - Be 8 to 32 characters in length.
  /// - Special characters include !@#$%^&*()_+-=.
  late final pulumi.Output<String?> accountPassword;

  /// The time when the password for the database account expires.
  late final pulumi.Output<String> accountPasswordValidTime;

  /// The account type. Default value:`Normal`. Valid values: `Normal`, `Super`.
  late final pulumi.Output<String> accountType;

  /// The cluster ID.
  late final pulumi.Output<String> dbClusterId;

  /// An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;

  /// (Available since v1.265.0) The status of the database account.
  late final pulumi.Output<String> status;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_polardb_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:polardb/account:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountLockState = registerOutput<String>('accountLockState');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    accountPasswordValidTime = registerOutput<String>(
      'accountPasswordValidTime',
    );
    accountType = registerOutput<String>('accountType');
    dbClusterId = registerOutput<String>('dbClusterId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
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
         'alicloud:polardb/account:Account',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountLockState = registerOutput<String>('accountLockState');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    accountPasswordValidTime = registerOutput<String>(
      'accountPasswordValidTime',
    );
    accountType = registerOutput<String>('accountType');
    dbClusterId = registerOutput<String>('dbClusterId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    status = registerOutput<String>('status');
  }
}
