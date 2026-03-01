import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// Provides a GPDB Database resource.
///
///
///
/// For information about GPDB Database and how to use it, see [What is Database](https://www.alibabacloud.com/help/en/).
///
/// > **NOTE:** Available since v1.232.0.
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
/// const default35OkxY = new alicloud.vpc.Network("default35OkxY", {cidrBlock: "192.168.0.0/16"});
/// const defaultl8haQ3 = new alicloud.vpc.Switch("defaultl8haQ3", {
///     vpcId: default35OkxY.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const defaultTC08a9 = new alicloud.gpdb.Instance("defaultTC08a9", {
///     instanceSpec: "2C8G",
///     segNodeNum: 2,
///     segStorageType: "cloud_essd",
///     instanceNetworkType: "VPC",
///     dbInstanceCategory: "Basic",
///     paymentType: "PayAsYouGo",
///     sslEnabled: 0,
///     engineVersion: "6.0",
///     engine: "gpdb",
///     zoneId: "cn-beijing-h",
///     vswitchId: defaultl8haQ3.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: default35OkxY.id,
///     dbInstanceMode: "StorageElastic",
/// });
/// const _default = new alicloud.gpdb.Database("default", {
///     characterSetName: "UTF8",
///     owner: "adbpgadmin",
///     description: "go-to-the-docks-for-french-fries",
///     databaseName: "seagull",
///     collate: "en_US.utf8",
///     ctype: "en_US.utf8",
///     dbInstanceId: defaultTC08a9.id,
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
/// default35_okx_y = alicloud.vpc.Network("default35OkxY", cidr_block="192.168.0.0/16")
/// defaultl8ha_q3 = alicloud.vpc.Switch("defaultl8haQ3",
///     vpc_id=default35_okx_y.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// default_tc08a9 = alicloud.gpdb.Instance("defaultTC08a9",
///     instance_spec="2C8G",
///     seg_node_num=2,
///     seg_storage_type="cloud_essd",
///     instance_network_type="VPC",
///     db_instance_category="Basic",
///     payment_type="PayAsYouGo",
///     ssl_enabled=0,
///     engine_version="6.0",
///     engine="gpdb",
///     zone_id="cn-beijing-h",
///     vswitch_id=defaultl8ha_q3.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default35_okx_y.id,
///     db_instance_mode="StorageElastic")
/// default = alicloud.gpdb.Database("default",
///     character_set_name="UTF8",
///     owner="adbpgadmin",
///     description="go-to-the-docks-for-french-fries",
///     database_name="seagull",
///     collate="en_US.utf8",
///     ctype="en_US.utf8",
///     db_instance_id=default_tc08a9.id)
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
///     var default35OkxY = new AliCloud.Vpc.Network("default35OkxY", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultl8haQ3 = new AliCloud.Vpc.Switch("defaultl8haQ3", new()
///     {
///         VpcId = default35OkxY.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var defaultTC08a9 = new AliCloud.Gpdb.Instance("defaultTC08a9", new()
///     {
///         InstanceSpec = "2C8G",
///         SegNodeNum = 2,
///         SegStorageType = "cloud_essd",
///         InstanceNetworkType = "VPC",
///         DbInstanceCategory = "Basic",
///         PaymentType = "PayAsYouGo",
///         SslEnabled = 0,
///         EngineVersion = "6.0",
///         Engine = "gpdb",
///         ZoneId = "cn-beijing-h",
///         VswitchId = defaultl8haQ3.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = default35OkxY.Id,
///         DbInstanceMode = "StorageElastic",
///     });
///
///     var @default = new AliCloud.Gpdb.Database("default", new()
///     {
///         CharacterSetName = "UTF8",
///         Owner = "adbpgadmin",
///         Description = "go-to-the-docks-for-french-fries",
///         DatabaseName = "seagull",
///         Collate = "en_US.utf8",
///         Ctype = "en_US.utf8",
///         DbInstanceId = defaultTC08a9.Id,
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
/// 		default35OkxY, err := vpc.NewNetwork(ctx, "default35OkxY", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultl8haQ3, err := vpc.NewSwitch(ctx, "defaultl8haQ3", &vpc.SwitchArgs{
/// 			VpcId:     default35OkxY.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTC08a9, err := gpdb.NewInstance(ctx, "defaultTC08a9", &gpdb.InstanceArgs{
/// 			InstanceSpec:        pulumi.String("2C8G"),
/// 			SegNodeNum:          pulumi.Int(2),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			DbInstanceCategory:  pulumi.String("Basic"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SslEnabled:          pulumi.Int(0),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			Engine:              pulumi.String("gpdb"),
/// 			ZoneId:              pulumi.String("cn-beijing-h"),
/// 			VswitchId:           defaultl8haQ3.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               default35OkxY.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewDatabase(ctx, "default", &gpdb.DatabaseArgs{
/// 			CharacterSetName: pulumi.String("UTF8"),
/// 			Owner:            pulumi.String("adbpgadmin"),
/// 			Description:      pulumi.String("go-to-the-docks-for-french-fries"),
/// 			DatabaseName:     pulumi.String("seagull"),
/// 			Collate:          pulumi.String("en_US.utf8"),
/// 			Ctype:            pulumi.String("en_US.utf8"),
/// 			DbInstanceId:     defaultTC08a9.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.Database;
/// import com.pulumi.alicloud.gpdb.DatabaseArgs;
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
///         var default35OkxY = new Network("default35OkxY", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultl8haQ3 = new Switch("defaultl8haQ3", SwitchArgs.builder()
///             .vpcId(default35OkxY.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var defaultTC08a9 = new Instance("defaultTC08a9", InstanceArgs.builder()
///             .instanceSpec("2C8G")
///             .segNodeNum(2)
///             .segStorageType("cloud_essd")
///             .instanceNetworkType("VPC")
///             .dbInstanceCategory("Basic")
///             .paymentType("PayAsYouGo")
///             .sslEnabled(0)
///             .engineVersion("6.0")
///             .engine("gpdb")
///             .zoneId("cn-beijing-h")
///             .vswitchId(defaultl8haQ3.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(default35OkxY.id())
///             .dbInstanceMode("StorageElastic")
///             .build());
///
///         var default_ = new Database("default", DatabaseArgs.builder()
///             .characterSetName("UTF8")
///             .owner("adbpgadmin")
///             .description("go-to-the-docks-for-french-fries")
///             .databaseName("seagull")
///             .collate("en_US.utf8")
///             .ctype("en_US.utf8")
///             .dbInstanceId(defaultTC08a9.id())
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
///   default35OkxY:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultl8haQ3:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${default35OkxY.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   defaultTC08a9:
///     type: alicloud:gpdb:Instance
///     properties:
///       instanceSpec: 2C8G
///       segNodeNum: '2'
///       segStorageType: cloud_essd
///       instanceNetworkType: VPC
///       dbInstanceCategory: Basic
///       paymentType: PayAsYouGo
///       sslEnabled: '0'
///       engineVersion: '6.0'
///       engine: gpdb
///       zoneId: cn-beijing-h
///       vswitchId: ${defaultl8haQ3.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${default35OkxY.id}
///       dbInstanceMode: StorageElastic
///   default:
///     type: alicloud:gpdb:Database
///     properties:
///       characterSetName: UTF8
///       owner: adbpgadmin
///       description: go-to-the-docks-for-french-fries
///       databaseName: seagull
///       collate: en_US.utf8
///       ctype: en_US.utf8
///       dbInstanceId: ${defaultTC08a9.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// GPDB Database can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/database:Database example <db_instance_id>:<database_name>
/// ```
class Database extends pulumi.CustomResource {
  /// Character set, default value is UTF8
  late final pulumi.Output<String?> characterSetName;
  /// Database locale parameters, specifying string comparison/collation
  late final pulumi.Output<String?> collate;
  /// Database locale parameters, specifying character classification/case conversion rules
  late final pulumi.Output<String?> ctype;
  /// Database Name
  late final pulumi.Output<String> databaseName;
  /// Instance ID
  late final pulumi.Output<String> dbInstanceId;
  /// Database Description
  late final pulumi.Output<String?> description;
  /// Data Sheet owner
  late final pulumi.Output<String> owner;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_gpdb_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.characterSetName = registerOutput<String?>('characterSetName');
    this.collate = registerOutput<String?>('collate');
    this.ctype = registerOutput<String?>('ctype');
    this.databaseName = registerOutput<String>('databaseName');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.description = registerOutput<String?>('description');
    this.owner = registerOutput<String>('owner');
  }

  /// Gets an existing [Database] resource's state with the given [name] and [id].
  static Database get(
    String name,
    pulumi.Input<String> id, {
    DatabaseState? state,
  }) {
    return Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.characterSetName = registerOutput<String?>('characterSetName');
    this.collate = registerOutput<String?>('collate');
    this.ctype = registerOutput<String?>('ctype');
    this.databaseName = registerOutput<String>('databaseName');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.description = registerOutput<String?>('description');
    this.owner = registerOutput<String>('owner');
  }
}
