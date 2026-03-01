import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_resource_group_args.dart';

/// Provides a AnalyticDB for PostgreSQL (GPDB) Db Resource Group resource.
///
///
///
/// For information about AnalyticDB for PostgreSQL (GPDB) Db Resource Group and how to use it, see [What is Db Resource Group](https://next.api.alibabacloud.com/document/gpdb/2016-05-03/CreateDBResourceGroup).
///
/// > **NOTE:** Available since v1.225.0.
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
/// const defaultZc8RD9 = new alicloud.vpc.Network("defaultZc8RD9", {cidrBlock: "192.168.0.0/16"});
/// const defaultRv5UXt = new alicloud.vpc.Switch("defaultRv5UXt", {
///     vpcId: defaultZc8RD9.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "192.168.1.0/24",
/// });
/// const defaultJXWSlW = new alicloud.gpdb.Instance("defaultJXWSlW", {
///     instanceSpec: "2C8G",
///     segNodeNum: 2,
///     segStorageType: "cloud_essd",
///     instanceNetworkType: "VPC",
///     dbInstanceCategory: "Basic",
///     engine: "gpdb",
///     paymentType: "PayAsYouGo",
///     sslEnabled: 0,
///     engineVersion: "6.0",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchId: defaultRv5UXt.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultZc8RD9.id,
///     dbInstanceMode: "StorageElastic",
///     description: name,
/// });
/// const defaultDbResourceGroup = new alicloud.gpdb.DbResourceGroup("default", {
///     resourceGroupConfig: JSON.stringify({
///         CpuRateLimit: 10,
///         MemoryLimit: 10,
///         MemorySharedQuota: 80,
///         MemorySpillRatio: 0,
///         Concurrency: 10,
///     }),
///     dbInstanceId: defaultJXWSlW.id,
///     resourceGroupName: "yb_example_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_zc8_rd9 = alicloud.vpc.Network("defaultZc8RD9", cidr_block="192.168.0.0/16")
/// default_rv5_u_xt = alicloud.vpc.Switch("defaultRv5UXt",
///     vpc_id=default_zc8_rd9.id,
///     zone_id=default.zones[0].id,
///     cidr_block="192.168.1.0/24")
/// default_jxw_sl_w = alicloud.gpdb.Instance("defaultJXWSlW",
///     instance_spec="2C8G",
///     seg_node_num=2,
///     seg_storage_type="cloud_essd",
///     instance_network_type="VPC",
///     db_instance_category="Basic",
///     engine="gpdb",
///     payment_type="PayAsYouGo",
///     ssl_enabled=0,
///     engine_version="6.0",
///     zone_id=default.zones[0].id,
///     vswitch_id=default_rv5_u_xt.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_zc8_rd9.id,
///     db_instance_mode="StorageElastic",
///     description=name)
/// default_db_resource_group = alicloud.gpdb.DbResourceGroup("default",
///     resource_group_config=json.dumps({
///         "CpuRateLimit": 10,
///         "MemoryLimit": 10,
///         "MemorySharedQuota": 80,
///         "MemorySpillRatio": 0,
///         "Concurrency": 10,
///     }),
///     db_instance_id=default_jxw_sl_w.id,
///     resource_group_name="yb_example_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
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
///     var defaultZc8RD9 = new AliCloud.Vpc.Network("defaultZc8RD9", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultRv5UXt = new AliCloud.Vpc.Switch("defaultRv5UXt", new()
///     {
///         VpcId = defaultZc8RD9.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var defaultJXWSlW = new AliCloud.Gpdb.Instance("defaultJXWSlW", new()
///     {
///         InstanceSpec = "2C8G",
///         SegNodeNum = 2,
///         SegStorageType = "cloud_essd",
///         InstanceNetworkType = "VPC",
///         DbInstanceCategory = "Basic",
///         Engine = "gpdb",
///         PaymentType = "PayAsYouGo",
///         SslEnabled = 0,
///         EngineVersion = "6.0",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchId = defaultRv5UXt.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultZc8RD9.Id,
///         DbInstanceMode = "StorageElastic",
///         Description = name,
///     });
///
///     var defaultDbResourceGroup = new AliCloud.Gpdb.DbResourceGroup("default", new()
///     {
///         ResourceGroupConfig = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["CpuRateLimit"] = 10,
///             ["MemoryLimit"] = 10,
///             ["MemorySharedQuota"] = 80,
///             ["MemorySpillRatio"] = 0,
///             ["Concurrency"] = 10,
///         }),
///         DbInstanceId = defaultJXWSlW.Id,
///         ResourceGroupName = "yb_example_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultZc8RD9, err := vpc.NewNetwork(ctx, "defaultZc8RD9", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRv5UXt, err := vpc.NewSwitch(ctx, "defaultRv5UXt", &vpc.SwitchArgs{
/// 			VpcId:     defaultZc8RD9.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultJXWSlW, err := gpdb.NewInstance(ctx, "defaultJXWSlW", &gpdb.InstanceArgs{
/// 			InstanceSpec:        pulumi.String("2C8G"),
/// 			SegNodeNum:          pulumi.Int(2),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			DbInstanceCategory:  pulumi.String("Basic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SslEnabled:          pulumi.Int(0),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String(_default.Zones[0].Id),
/// 			VswitchId:           defaultRv5UXt.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               defaultZc8RD9.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Description:         pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"CpuRateLimit":      10,
/// 			"MemoryLimit":       10,
/// 			"MemorySharedQuota": 80,
/// 			"MemorySpillRatio":  0,
/// 			"Concurrency":       10,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = gpdb.NewDbResourceGroup(ctx, "default", &gpdb.DbResourceGroupArgs{
/// 			ResourceGroupConfig: pulumi.String(json0),
/// 			DbInstanceId:        defaultJXWSlW.ID(),
/// 			ResourceGroupName:   pulumi.String("yb_example_group"),
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
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.DbResourceGroup;
/// import com.pulumi.alicloud.gpdb.DbResourceGroupArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var defaultZc8RD9 = new Network("defaultZc8RD9", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultRv5UXt = new Switch("defaultRv5UXt", SwitchArgs.builder()
///             .vpcId(defaultZc8RD9.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var defaultJXWSlW = new Instance("defaultJXWSlW", InstanceArgs.builder()
///             .instanceSpec("2C8G")
///             .segNodeNum(2)
///             .segStorageType("cloud_essd")
///             .instanceNetworkType("VPC")
///             .dbInstanceCategory("Basic")
///             .engine("gpdb")
///             .paymentType("PayAsYouGo")
///             .sslEnabled(0)
///             .engineVersion("6.0")
///             .zoneId(default_.zones()[0].id())
///             .vswitchId(defaultRv5UXt.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultZc8RD9.id())
///             .dbInstanceMode("StorageElastic")
///             .description(name)
///             .build());
///
///         var defaultDbResourceGroup = new DbResourceGroup("defaultDbResourceGroup", DbResourceGroupArgs.builder()
///             .resourceGroupConfig(serializeJson(
///                 jsonObject(
///                     jsonProperty("CpuRateLimit", 10),
///                     jsonProperty("MemoryLimit", 10),
///                     jsonProperty("MemorySharedQuota", 80),
///                     jsonProperty("MemorySpillRatio", 0),
///                     jsonProperty("Concurrency", 10)
///                 )))
///             .dbInstanceId(defaultJXWSlW.id())
///             .resourceGroupName("yb_example_group")
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
///   defaultZc8RD9:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultRv5UXt:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultZc8RD9.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 192.168.1.0/24
///   defaultJXWSlW:
///     type: alicloud:gpdb:Instance
///     properties:
///       instanceSpec: 2C8G
///       segNodeNum: '2'
///       segStorageType: cloud_essd
///       instanceNetworkType: VPC
///       dbInstanceCategory: Basic
///       engine: gpdb
///       paymentType: PayAsYouGo
///       sslEnabled: '0'
///       engineVersion: '6.0'
///       zoneId: ${default.zones[0].id}
///       vswitchId: ${defaultRv5UXt.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultZc8RD9.id}
///       dbInstanceMode: StorageElastic
///       description: ${name}
///   defaultDbResourceGroup:
///     type: alicloud:gpdb:DbResourceGroup
///     name: default
///     properties:
///       resourceGroupConfig:
///         fn::toJSON:
///           CpuRateLimit: 10
///           MemoryLimit: 10
///           MemorySharedQuota: 80
///           MemorySpillRatio: 0
///           Concurrency: 10
///       dbInstanceId: ${defaultJXWSlW.id}
///       resourceGroupName: yb_example_group
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
/// AnalyticDB for PostgreSQL (GPDB) Db Resource Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/dbResourceGroup:DbResourceGroup example <db_instance_id>:<resource_group_name>
/// ```
class DbResourceGroup extends pulumi.CustomResource {
  /// The instance ID.> You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  late final pulumi.Output<String> dbInstanceId;
  /// Resource group configuration.
  late final pulumi.Output<String> resourceGroupConfig;
  /// Resource group name.
  late final pulumi.Output<String> resourceGroupName;
  /// Role List
  late final pulumi.Output<List<String>?> roleLists;

  /// Creates a new [DbResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbResourceGroup]. {@macro pulumi_gpdb_db_resource_group_db_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbResourceGroup(
    String name, {
    DbResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/dbResourceGroup:DbResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.resourceGroupConfig = registerOutput<String>('resourceGroupConfig');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.roleLists = registerOutput<List<String>?>('roleLists');
  }
}
