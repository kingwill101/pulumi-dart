import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_account_args.dart';
import 'rds_account_state.dart';

/// Provides a RDS Account resource.
///
///
///
/// For information about RDS Account and how to use it, see [What is Account](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-createaccount).
///
/// &gt; **NOTE:** Available since v1.120.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "HighAvailability",
///     dbInstanceStorageType: "local_ssd",
/// });
/// const defaultGetInstanceClasses = _default.then(_default => alicloud.rds.getInstanceClasses({
///     zoneId: _default.zones?.[0]?.id,
///     engine: "MySQL",
///     engineVersion: "8.0",
///     category: "HighAvailability",
///     dbInstanceStorageType: "local_ssd",
///     instanceChargeType: "PostPaid",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     vswitchName: name,
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceType: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
///     instanceChargeType: "Postpaid",
///     monitoringPeriod: 60,
///     dbInstanceStorageType: "local_ssd",
///     dbIsIgnoreCase: false,
/// });
/// const defaultRdsAccount = new alicloud.rds.RdsAccount("default", {
///     dbInstanceId: defaultInstance.id,
///     accountName: name,
///     accountPassword: "Example1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="HighAvailability",
///     db_instance_storage_type="local_ssd")
/// default_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=default.zones[0].id,
///     engine="MySQL",
///     engine_version="8.0",
///     category="HighAvailability",
///     db_instance_storage_type="local_ssd",
///     instance_charge_type="PostPaid")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.ids[0],
///     vswitch_name=name)
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="8.0",
///     instance_type=default_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=default_get_instance_classes.instance_classes[0].storage_range.min,
///     vswitch_id=default_switch.id,
///     instance_name=name,
///     instance_charge_type="Postpaid",
///     monitoring_period=60,
///     db_instance_storage_type="local_ssd",
///     db_is_ignore_case=False)
/// default_rds_account = alicloud.rds.RdsAccount("default",
///     db_instance_id=default_instance.id,
///     account_name=name,
///     account_password="Example1234")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "HighAvailability",
///         DbInstanceStorageType = "local_ssd",
///     });
///
///     var defaultGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         Category = "HighAvailability",
///         DbInstanceStorageType = "local_ssd",
///         InstanceChargeType = "PostPaid",
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         VswitchName = name,
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceType = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///         InstanceChargeType = "Postpaid",
///         MonitoringPeriod = 60,
///         DbInstanceStorageType = "local_ssd",
///         DbIsIgnoreCase = false,
///     });
///
///     var defaultRdsAccount = new AliCloud.Rds.RdsAccount("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         AccountName = name,
///         AccountPassword = "Example1234",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 			DbInstanceStorageType: pulumi.StringRef("local_ssd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(_default.Zones[0].Id),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 			DbInstanceStorageType: pulumi.StringRef("local_ssd"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
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
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("8.0"),
/// 			InstanceType:          pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:       pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			VswitchId:             defaultSwitch.ID(),
/// 			InstanceName:          pulumi.String(name),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			MonitoringPeriod:      pulumi.Int(60),
/// 			DbInstanceStorageType: pulumi.String("local_ssd"),
/// 			DbIsIgnoreCase:        pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewRdsAccount(ctx, "default", &rds.RdsAccountArgs{
/// 			DbInstanceId:    defaultInstance.ID(),
/// 			AccountName:     pulumi.String(name),
/// 			AccountPassword: pulumi.String("Example1234"),
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.RdsAccount;
/// import com.pulumi.alicloud.rds.RdsAccountArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("HighAvailability")
///             .dbInstanceStorageType("local_ssd")
///             .build());
///
///         final var defaultGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .category("HighAvailability")
///             .dbInstanceStorageType("local_ssd")
///             .instanceChargeType("PostPaid")
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
///             .zoneId(default_.ids()[0])
///             .vswitchName(name)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceType(defaultGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(defaultGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .instanceChargeType("Postpaid")
///             .monitoringPeriod(60)
///             .dbInstanceStorageType("local_ssd")
///             .dbIsIgnoreCase(false)
///             .build());
///
///         var defaultRdsAccount = new RdsAccount("defaultRdsAccount", RdsAccountArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .accountName(name)
///             .accountPassword("Example1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
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
///       zoneId: ${default.ids[0]}
///       vswitchName: ${name}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '8.0'
///       instanceType: ${defaultGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${defaultGetInstanceClasses.instanceClasses[0].storageRange.min}
///       vswitchId: ${defaultSwitch.id}
///       instanceName: ${name}
///       instanceChargeType: Postpaid
///       monitoringPeriod: 60
///       dbInstanceStorageType: local_ssd
///       dbIsIgnoreCase: false
///   defaultRdsAccount:
///     type: alicloud:rds:RdsAccount
///     name: default
///     properties:
///       dbInstanceId: ${defaultInstance.id}
///       accountName: ${name}
///       accountPassword: Example1234
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: HighAvailability
///         dbInstanceStorageType: local_ssd
///   defaultGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${default.zones[0].id}
///         engine: MySQL
///         engineVersion: '8.0'
///         category: HighAvailability
///         dbInstanceStorageType: local_ssd
///         instanceChargeType: PostPaid
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsAccount:RdsAccount example <db_instance_id>:<account_name>
/// ```
class RdsAccount extends pulumi.CustomResource {
  /// The description of the account. The value must be 2 to 256 characters in length. The value can contain letters, digits, underscores (_), and hyphens (-), and must start with a letter.
  ///
  /// &gt; **NOTE:** The name cannot start with http:// or https://.
  late final pulumi.Output<String> accountDescription;
  /// The name of the database account.
  /// * The name must be unique.
  /// * The name can contain lowercase letters, digits, and underscores (_). For MySQL databases, the name can contain uppercase letters.
  /// * The name must start with a letter and end with a letter or digit.
  /// * For MySQL databases, the name of the privileged account cannot be the same as that of the standard account. For example, if the name of the privileged account is Test1, the name of the standard account cannot be test1.
  /// * The length of the value must meet the following requirements:
  /// * If the instance runs MySQL 5.7 or MySQL 8.0, the value must be 2 to 32 characters in length.
  /// * If the instance runs MySQL 5.6, the value must be 2 to 16 characters in length.
  /// * If the instance runs SQL Server, the value must be 2 to 64 characters in length.
  /// * If the instance runs PostgreSQL with cloud disks, the value must be 2 to 63 characters in length.
  /// * If the instance runs PostgreSQL with local disks, the value must be 2 to 16 characters in length.
  /// * If the instance runs MariaDB, the value must be 2 to 16 characters in length.
  /// * For more information about invalid characters, See [Forbidden keywords](https://help.aliyun.com/zh/rds/developer-reference/forbidden-keywords?spm=api-workbench.API%20Document.0.0.529e2defHKoZ3o).
  late final pulumi.Output<String> accountName;
  /// The password of the account.
  /// * The value must be 8 to 32 characters in length.
  /// * The password must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters.
  /// * Special characters include ! @ # $ % ^ & * ( ) _ + - =
  late final pulumi.Output<String> accountPassword;
  /// The account type. Valid values:
  /// * Normal: standard account (default).
  /// * Super: privileged account.
  /// * Sysadmin: system admin account. The account type is available only for ApsaraDB RDS for SQL Server instances.
  ///
  /// &gt; **NOTE:** Before you create a system admin account, check whether the RDS instance meets all prerequisites. For more information, See [Create a system admin account](https://help.aliyun.com/zh/rds/apsaradb-rds-for-sql-server/create-a-system-admin-account-for-an-apsaradb-rds-for-sql-server-instance?spm=api-workbench.API%20Document.0.0.529e2defHKoZ3o).
  late final pulumi.Output<String> accountType;
  /// Whether to apply password policy
  late final pulumi.Output<bool?> checkPolicy;
  /// The ID of the instance.
  late final pulumi.Output<String> dbInstanceId;
  /// The attribute has been deprecated from 1.120.0 and using `account_description` instead.
  late final pulumi.Output<String> description;
  /// The attribute has been deprecated from 1.120.0 and using `db_instance_id` instead.
  late final pulumi.Output<String> instanceId;
  /// An KMS encrypts password used to a db account. If the `account_password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The attribute has been deprecated from 1.120.0 and using `account_name` instead.
  late final pulumi.Output<String> name;
  /// The attribute has been deprecated from 1.120.0 and using `account_password` instead.
  late final pulumi.Output<String> password;
  /// Resets permissions flag of the privileged account. Default to `false`. Set it to `true` can resets permissions of the privileged account.
  late final pulumi.Output<bool?> resetPermissionFlag;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The attribute has been deprecated from 1.120.0 and using `account_type` instead.
  ///
  /// &gt; **NOTE**: Only MySQL engine is supported resets permissions of the privileged account.
  late final pulumi.Output<String> type;

  /// Creates a new [RdsAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsAccount]. {@macro pulumi_rds_rds_account_rds_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsAccount(
    String name, {
    RdsAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsAccount:RdsAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountType = registerOutput<String>('accountType');
    checkPolicy = registerOutput<bool?>('checkPolicy');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    description = registerOutput<String>('description');
    instanceId = registerOutput<String>('instanceId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    resetPermissionFlag = registerOutput<bool?>('resetPermissionFlag');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [RdsAccount] resource's state with the given [name] and [id].
  static RdsAccount get(
    String name,
    pulumi.Input<String> id, {
    RdsAccountState? state,
  }) {
    return RdsAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RdsAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsAccount:RdsAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountType = registerOutput<String>('accountType');
    checkPolicy = registerOutput<bool?>('checkPolicy');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    description = registerOutput<String>('description');
    instanceId = registerOutput<String>('instanceId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    resetPermissionFlag = registerOutput<bool?>('resetPermissionFlag');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }
}
