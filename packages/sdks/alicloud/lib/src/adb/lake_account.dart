import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_account_args.dart';
import 'lake_account_state.dart';

/// Provides a ADB Lake Account resource. Account of the DBClusterLakeVesion.
///
/// For information about ADB Lake Account and how to use it, see [What is Lake Account](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2021-12-01-createaccount).
/// For information about ADB Lake Account Privileges and how to use it, see [What are Lake Account Privileges](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2021-12-01-modifyaccountprivileges/).
///
/// &gt; **NOTE:** Available since v1.214.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const VPCID = new alicloud.vpc.Network("VPCID", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const VSWITCHID = new alicloud.vpc.Switch("VSWITCHID", {
///     vpcId: VPCID.id,
///     zoneId: "cn-hangzhou-k",
///     vswitchName: name,
///     cidrBlock: "172.16.0.0/24",
/// });
/// const createInstance = new alicloud.adb.DBClusterLakeVersion("CreateInstance", {
///     storageResource: "0ACU",
///     zoneId: "cn-hangzhou-k",
///     vpcId: VPCID.id,
///     vswitchId: VSWITCHID.id,
///     dbClusterDescription: name,
///     computeResource: "16ACU",
///     dbClusterVersion: "5.0",
///     paymentType: "PayAsYouGo",
///     securityIps: "127.0.0.1",
/// });
/// const defaultLakeAccount = new alicloud.adb.LakeAccount("default", {
///     dbClusterId: createInstance.id,
///     accountType: "Super",
///     accountName: "tfnormal",
///     accountPassword: "normal@2023",
///     accountPrivileges: [
///         {
///             privilegeType: "Database",
///             privilegeObject: {
///                 database: "MYSQL",
///             },
///             privileges: [
///                 "select",
///                 "update",
///             ],
///         },
///         {
///             privilegeType: "Table",
///             privilegeObject: {
///                 database: "INFORMATION_SCHEMA",
///                 table: "ENGINES",
///             },
///             privileges: ["update"],
///         },
///         {
///             privilegeType: "Column",
///             privilegeObject: {
///                 table: "COLUMNS",
///                 column: "PRIVILEGES",
///                 database: "INFORMATION_SCHEMA",
///             },
///             privileges: ["update"],
///         },
///     ],
///     accountDescription: name,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// vpcid = alicloud.vpc.Network("VPCID",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// vswitchid = alicloud.vpc.Switch("VSWITCHID",
///     vpc_id=vpcid.id,
///     zone_id="cn-hangzhou-k",
///     vswitch_name=name,
///     cidr_block="172.16.0.0/24")
/// create_instance = alicloud.adb.DBClusterLakeVersion("CreateInstance",
///     storage_resource="0ACU",
///     zone_id="cn-hangzhou-k",
///     vpc_id=vpcid.id,
///     vswitch_id=vswitchid.id,
///     db_cluster_description=name,
///     compute_resource="16ACU",
///     db_cluster_version="5.0",
///     payment_type="PayAsYouGo",
///     security_ips="127.0.0.1")
/// default_lake_account = alicloud.adb.LakeAccount("default",
///     db_cluster_id=create_instance.id,
///     account_type="Super",
///     account_name="tfnormal",
///     account_password="normal@2023",
///     account_privileges=[
///         {
///             "privilege_type": "Database",
///             "privilege_object": {
///                 "database": "MYSQL",
///             },
///             "privileges": [
///                 "select",
///                 "update",
///             ],
///         },
///         {
///             "privilege_type": "Table",
///             "privilege_object": {
///                 "database": "INFORMATION_SCHEMA",
///                 "table": "ENGINES",
///             },
///             "privileges": ["update"],
///         },
///         {
///             "privilege_type": "Column",
///             "privilege_object": {
///                 "table": "COLUMNS",
///                 "column": "PRIVILEGES",
///                 "database": "INFORMATION_SCHEMA",
///             },
///             "privileges": ["update"],
///         },
///     ],
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var VPCID = new AliCloud.Vpc.Network("VPCID", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var VSWITCHID = new AliCloud.Vpc.Switch("VSWITCHID", new()
///     {
///         VpcId = VPCID.Id,
///         ZoneId = "cn-hangzhou-k",
///         VswitchName = name,
///         CidrBlock = "172.16.0.0/24",
///     });
///
///     var createInstance = new AliCloud.Adb.DBClusterLakeVersion("CreateInstance", new()
///     {
///         StorageResource = "0ACU",
///         ZoneId = "cn-hangzhou-k",
///         VpcId = VPCID.Id,
///         VswitchId = VSWITCHID.Id,
///         DbClusterDescription = name,
///         ComputeResource = "16ACU",
///         DbClusterVersion = "5.0",
///         PaymentType = "PayAsYouGo",
///         SecurityIps = "127.0.0.1",
///     });
///
///     var defaultLakeAccount = new AliCloud.Adb.LakeAccount("default", new()
///     {
///         DbClusterId = createInstance.Id,
///         AccountType = "Super",
///         AccountName = "tfnormal",
///         AccountPassword = "normal@2023",
///         AccountPrivileges = new[]
///         {
///             new AliCloud.Adb.Inputs.LakeAccountAccountPrivilegeArgs
///             {
///                 PrivilegeType = "Database",
///                 PrivilegeObject = new AliCloud.Adb.Inputs.LakeAccountAccountPrivilegePrivilegeObjectArgs
///                 {
///                     Database = "MYSQL",
///                 },
///                 Privileges = new[]
///                 {
///                     "select",
///                     "update",
///                 },
///             },
///             new AliCloud.Adb.Inputs.LakeAccountAccountPrivilegeArgs
///             {
///                 PrivilegeType = "Table",
///                 PrivilegeObject = new AliCloud.Adb.Inputs.LakeAccountAccountPrivilegePrivilegeObjectArgs
///                 {
///                     Database = "INFORMATION_SCHEMA",
///                     Table = "ENGINES",
///                 },
///                 Privileges = new[]
///                 {
///                     "update",
///                 },
///             },
///             new AliCloud.Adb.Inputs.LakeAccountAccountPrivilegeArgs
///             {
///                 PrivilegeType = "Column",
///                 PrivilegeObject = new AliCloud.Adb.Inputs.LakeAccountAccountPrivilegePrivilegeObjectArgs
///                 {
///                     Table = "COLUMNS",
///                     Column = "PRIVILEGES",
///                     Database = "INFORMATION_SCHEMA",
///                 },
///                 Privileges = new[]
///                 {
///                     "update",
///                 },
///             },
///         },
///         AccountDescription = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
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
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		VPCID, err := vpc.NewNetwork(ctx, "VPCID", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		VSWITCHID, err := vpc.NewSwitch(ctx, "VSWITCHID", &vpc.SwitchArgs{
/// 			VpcId:       VPCID.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-k"),
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createInstance, err := adb.NewDBClusterLakeVersion(ctx, "CreateInstance", &adb.DBClusterLakeVersionArgs{
/// 			StorageResource:      pulumi.String("0ACU"),
/// 			ZoneId:               pulumi.String("cn-hangzhou-k"),
/// 			VpcId:                VPCID.ID(),
/// 			VswitchId:            VSWITCHID.ID(),
/// 			DbClusterDescription: pulumi.String(name),
/// 			ComputeResource:      pulumi.String("16ACU"),
/// 			DbClusterVersion:     pulumi.String("5.0"),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			SecurityIps:          pulumi.String("127.0.0.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = adb.NewLakeAccount(ctx, "default", &adb.LakeAccountArgs{
/// 			DbClusterId:     createInstance.ID(),
/// 			AccountType:     pulumi.String("Super"),
/// 			AccountName:     pulumi.String("tfnormal"),
/// 			AccountPassword: pulumi.String("normal@2023"),
/// 			AccountPrivileges: adb.LakeAccountAccountPrivilegeArray{
/// 				&adb.LakeAccountAccountPrivilegeArgs{
/// 					PrivilegeType: pulumi.String("Database"),
/// 					PrivilegeObject: &adb.LakeAccountAccountPrivilegePrivilegeObjectArgs{
/// 						Database: pulumi.String("MYSQL"),
/// 					},
/// 					Privileges: pulumi.StringArray{
/// 						pulumi.String("select"),
/// 						pulumi.String("update"),
/// 					},
/// 				},
/// 				&adb.LakeAccountAccountPrivilegeArgs{
/// 					PrivilegeType: pulumi.String("Table"),
/// 					PrivilegeObject: &adb.LakeAccountAccountPrivilegePrivilegeObjectArgs{
/// 						Database: pulumi.String("INFORMATION_SCHEMA"),
/// 						Table:    pulumi.String("ENGINES"),
/// 					},
/// 					Privileges: pulumi.StringArray{
/// 						pulumi.String("update"),
/// 					},
/// 				},
/// 				&adb.LakeAccountAccountPrivilegeArgs{
/// 					PrivilegeType: pulumi.String("Column"),
/// 					PrivilegeObject: &adb.LakeAccountAccountPrivilegePrivilegeObjectArgs{
/// 						Table:    pulumi.String("COLUMNS"),
/// 						Column:   pulumi.String("PRIVILEGES"),
/// 						Database: pulumi.String("INFORMATION_SCHEMA"),
/// 					},
/// 					Privileges: pulumi.StringArray{
/// 						pulumi.String("update"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.adb.DBClusterLakeVersion;
/// import com.pulumi.alicloud.adb.DBClusterLakeVersionArgs;
/// import com.pulumi.alicloud.adb.LakeAccount;
/// import com.pulumi.alicloud.adb.LakeAccountArgs;
/// import com.pulumi.alicloud.adb.inputs.LakeAccountAccountPrivilegeArgs;
/// import com.pulumi.alicloud.adb.inputs.LakeAccountAccountPrivilegePrivilegeObjectArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var vPCID = new Network("VPCID", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var vSWITCHID = new Switch("VSWITCHID", SwitchArgs.builder()
///             .vpcId(VPCID.id())
///             .zoneId("cn-hangzhou-k")
///             .vswitchName(name)
///             .cidrBlock("172.16.0.0/24")
///             .build());
///
///         var createInstance = new DBClusterLakeVersion("createInstance", DBClusterLakeVersionArgs.builder()
///             .storageResource("0ACU")
///             .zoneId("cn-hangzhou-k")
///             .vpcId(VPCID.id())
///             .vswitchId(VSWITCHID.id())
///             .dbClusterDescription(name)
///             .computeResource("16ACU")
///             .dbClusterVersion("5.0")
///             .paymentType("PayAsYouGo")
///             .securityIps("127.0.0.1")
///             .build());
///
///         var defaultLakeAccount = new LakeAccount("defaultLakeAccount", LakeAccountArgs.builder()
///             .dbClusterId(createInstance.id())
///             .accountType("Super")
///             .accountName("tfnormal")
///             .accountPassword("normal@2023")
///             .accountPrivileges(
///                 LakeAccountAccountPrivilegeArgs.builder()
///                     .privilegeType("Database")
///                     .privilegeObject(LakeAccountAccountPrivilegePrivilegeObjectArgs.builder()
///                         .database("MYSQL")
///                         .build())
///                     .privileges(
///                         "select",
///                         "update")
///                     .build(),
///                 LakeAccountAccountPrivilegeArgs.builder()
///                     .privilegeType("Table")
///                     .privilegeObject(LakeAccountAccountPrivilegePrivilegeObjectArgs.builder()
///                         .database("INFORMATION_SCHEMA")
///                         .table("ENGINES")
///                         .build())
///                     .privileges("update")
///                     .build(),
///                 LakeAccountAccountPrivilegeArgs.builder()
///                     .privilegeType("Column")
///                     .privilegeObject(LakeAccountAccountPrivilegePrivilegeObjectArgs.builder()
///                         .table("COLUMNS")
///                         .column("PRIVILEGES")
///                         .database("INFORMATION_SCHEMA")
///                         .build())
///                     .privileges("update")
///                     .build())
///             .accountDescription(name)
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
///   VPCID:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   VSWITCHID:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${VPCID.id}
///       zoneId: cn-hangzhou-k
///       vswitchName: ${name}
///       cidrBlock: 172.16.0.0/24
///   createInstance:
///     type: alicloud:adb:DBClusterLakeVersion
///     name: CreateInstance
///     properties:
///       storageResource: 0ACU
///       zoneId: cn-hangzhou-k
///       vpcId: ${VPCID.id}
///       vswitchId: ${VSWITCHID.id}
///       dbClusterDescription: ${name}
///       computeResource: 16ACU
///       dbClusterVersion: '5.0'
///       paymentType: PayAsYouGo
///       securityIps: 127.0.0.1
///   defaultLakeAccount:
///     type: alicloud:adb:LakeAccount
///     name: default
///     properties:
///       dbClusterId: ${createInstance.id}
///       accountType: Super
///       accountName: tfnormal
///       accountPassword: normal@2023
///       accountPrivileges:
///         - privilegeType: Database
///           privilegeObject:
///             database: MYSQL
///           privileges:
///             - select
///             - update
///         - privilegeType: Table
///           privilegeObject:
///             database: INFORMATION_SCHEMA
///             table: ENGINES
///           privileges:
///             - update
///         - privilegeType: Column
///           privilegeObject:
///             table: COLUMNS
///             column: PRIVILEGES
///             database: INFORMATION_SCHEMA
///           privileges:
///             - update
///       accountDescription: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ADB Lake Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:adb/lakeAccount:LakeAccount example <db_cluster_id>:<account_name>
/// ```
class LakeAccount extends pulumi.CustomResource {
  /// The description of the account.
  late final pulumi.Output<String?> accountDescription;
  /// The name of the account.
  late final pulumi.Output<String> accountName;
  /// AccountPassword.
  late final pulumi.Output<String> accountPassword;
  /// List of permissions granted. See `account_privileges` below.
  late final pulumi.Output<List<Map<String, dynamic>>> accountPrivileges;
  /// The type of the account.
  late final pulumi.Output<String?> accountType;
  /// The DBCluster ID.
  late final pulumi.Output<String> dbClusterId;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [LakeAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LakeAccount]. {@macro pulumi_adb_lake_account_lake_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LakeAccount(
    String name, {
    LakeAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/lakeAccount:LakeAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountPrivileges = registerOutput<List<Map<String, dynamic>>>('accountPrivileges');
    accountType = registerOutput<String?>('accountType');
    dbClusterId = registerOutput<String>('dbClusterId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [LakeAccount] resource's state with the given [name] and [id].
  static LakeAccount get(
    String name,
    pulumi.Input<String> id, {
    LakeAccountState? state,
  }) {
    return LakeAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LakeAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:adb/lakeAccount:LakeAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDescription = registerOutput<String?>('accountDescription');
    accountName = registerOutput<String>('accountName');
    accountPassword = registerOutput<String>('accountPassword');
    accountPrivileges = registerOutput<List<Map<String, dynamic>>>('accountPrivileges');
    accountType = registerOutput<String?>('accountType');
    dbClusterId = registerOutput<String>('dbClusterId');
    status = registerOutput<String>('status');
  }
}
