import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_privilege_args.dart';

/// Provides an RDS account privilege resource and used to grant several database some access privilege. A database can be granted by multiple account, see [What is DB Account Privilege](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-grantaccountprivilege).
///
/// > **NOTE:** At present, a database can only have one database owner.
///
/// > **NOTE:** Available since v1.5.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "5.6",
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
/// const db: alicloud.rds.Database[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     db.push(new alicloud.rds.Database(`db-${range.value}`, {
///         instanceId: instance.id,
///         name: `${name}_${range.value}`,
///         description: "from terraform",
///     }));
/// }
/// const account = new alicloud.rds.Account("account", {
///     dbInstanceId: instance.id,
///     accountName: "tfexample",
///     accountPassword: "Example12345",
///     accountDescription: "from terraform",
/// });
/// const privilege = new alicloud.rds.AccountPrivilege("privilege", {
///     instanceId: instance.id,
///     accountName: account.accountName,
///     privilege: "ReadOnly",
///     dbNames: db.map(__item => __item.name),
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
///     engine_version="5.6")
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
/// db = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     db.append(alicloud.rds.Database(f"db-{range['value']}",
///         instance_id=instance.id,
///         name=f"{name}_{range['value']}",
///         description="from terraform"))
/// account = alicloud.rds.Account("account",
///     db_instance_id=instance.id,
///     account_name="tfexample",
///     account_password="Example12345",
///     account_description="from terraform")
/// privilege = alicloud.rds.AccountPrivilege("privilege",
///     instance_id=instance.id,
///     account_name=account.account_name,
///     privilege="ReadOnly",
///     db_names=[__item.name for __item in db])
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
///         EngineVersion = "5.6",
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
///     var db = new List<AliCloud.Rds.Database>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         db.Add(new AliCloud.Rds.Database($"db-{range.Value}", new()
///         {
///             InstanceId = instance.Id,
///             Name = $"{name}_{range.Value}",
///             Description = "from terraform",
///         }));
///     }
///     var account = new AliCloud.Rds.Account("account", new()
///     {
///         DbInstanceId = instance.Id,
///         AccountName = "tfexample",
///         AccountPassword = "Example12345",
///         AccountDescription = "from terraform",
///     });
///
///     var privilege = new AliCloud.Rds.AccountPrivilege("privilege", new()
///     {
///         InstanceId = instance.Id,
///         AccountName = account.AccountName,
///         Privilege = "ReadOnly",
///         DbNames = db.Select(__item => __item.Name).ToList(),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
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
/// 			Engine:        pulumi.StringRef("MySQL"),
/// 			EngineVersion: pulumi.StringRef("5.6"),
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
/// 		var db []*rds.Database
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := rds.NewDatabase(ctx, fmt.Sprintf("db-%v", key0), &rds.DatabaseArgs{
/// 				InstanceId:  instance.ID(),
/// 				Name:        pulumi.Sprintf("%v_%v", name, val0),
/// 				Description: pulumi.String("from terraform"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			db = append(db, __res)
/// 		}
/// 		account, err := rds.NewAccount(ctx, "account", &rds.AccountArgs{
/// 			DbInstanceId:       instance.ID(),
/// 			AccountName:        pulumi.String("tfexample"),
/// 			AccountPassword:    pulumi.String("Example12345"),
/// 			AccountDescription: pulumi.String("from terraform"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var splat0 pulumi.StringArray
/// 		for _, val0 := range db {
/// 			splat0 = append(splat0, val0.Name)
/// 		}
/// 		_, err = rds.NewAccountPrivilege(ctx, "privilege", &rds.AccountPrivilegeArgs{
/// 			InstanceId:  instance.ID(),
/// 			AccountName: account.AccountName,
/// 			Privilege:   pulumi.String("ReadOnly"),
/// 			DbNames:     splat0,
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.Database;
/// import com.pulumi.alicloud.rds.DatabaseArgs;
/// import com.pulumi.alicloud.rds.Account;
/// import com.pulumi.alicloud.rds.AccountArgs;
/// import com.pulumi.alicloud.rds.AccountPrivilege;
/// import com.pulumi.alicloud.rds.AccountPrivilegeArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .engineVersion("5.6")
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
///         for (var i = 0; i < 2; i++) {
///             new Database("db-" + i, DatabaseArgs.builder()
///                 .instanceId(instance.id())
///                 .name(String.format("%s_%s", name,range.value()))
///                 .description("from terraform")
///                 .build());
///
///
/// }
///         var account = new Account("account", AccountArgs.builder()
///             .dbInstanceId(instance.id())
///             .accountName("tfexample")
///             .accountPassword("Example12345")
///             .accountDescription("from terraform")
///             .build());
///
///         var privilege = new AccountPrivilege("privilege", AccountPrivilegeArgs.builder()
///             .instanceId(instance.id())
///             .accountName(account.accountName())
///             .privilege("ReadOnly")
///             .dbNames(db.stream().map(element -> element.name()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS account privilege can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/accountPrivilege:AccountPrivilege example "rm-12345:tf_account:ReadOnly"
/// ```
class AccountPrivilege extends pulumi.CustomResource {
  /// A specified account name.
  late final pulumi.Output<String> accountName;
  /// List of specified database name.
  late final pulumi.Output<List<String>> dbNames;
  /// The Id of instance in which account belongs.
  late final pulumi.Output<String> instanceId;
  /// The privilege of one account access database. Valid values:
  /// - ReadOnly: This value is only for MySQL, MariaDB and SQL Server
  /// - ReadWrite: This value is only for MySQL, MariaDB and SQL Server
  /// - DDLOnly: (Available in 1.64.0+) This value is only for MySQL and MariaDB
  /// - DMLOnly: (Available in 1.64.0+) This value is only for MySQL and MariaDB
  /// - DBOwner: (Available in 1.64.0+) This value is only for SQL Server and PostgreSQL.
  /// Default to "ReadOnly".
  late final pulumi.Output<String?> privilege;

  /// Creates a new [AccountPrivilege].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountPrivilege]. {@macro pulumi_rds_account_privilege_account_privilege_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountPrivilege(
    String name, {
    AccountPrivilegeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/accountPrivilege:AccountPrivilege',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.dbNames = registerOutput<List<String>>('dbNames');
    this.instanceId = registerOutput<String>('instanceId');
    this.privilege = registerOutput<String?>('privilege');
  }
}
