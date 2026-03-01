import 'package:pulumi/pulumi.dart' as pulumi;
import 'streaming_data_service_args.dart';

/// Provides a AnalyticDB for PostgreSQL (GPDB) Streaming Data Service resource.
///
///
///
/// For information about AnalyticDB for PostgreSQL (GPDB) Streaming Data Service and how to use it, see [What is Streaming Data Service](https://www.alibabacloud.com/help/en/analyticdb/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createstreamingdataservice).
///
/// > **NOTE:** Available since v1.227.0.
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
/// const defaultTXZPBL = new alicloud.vpc.Network("defaultTXZPBL", {cidrBlock: "192.168.0.0/16"});
/// const defaultrJ5mmz = new alicloud.vpc.Switch("defaultrJ5mmz", {
///     vpcId: defaultTXZPBL.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const default1oSPzX = new alicloud.gpdb.Instance("default1oSPzX", {
///     instanceSpec: "2C8G",
///     description: name,
///     segNodeNum: 2,
///     segStorageType: "cloud_essd",
///     instanceNetworkType: "VPC",
///     dbInstanceCategory: "Basic",
///     paymentType: "PayAsYouGo",
///     sslEnabled: 0,
///     engineVersion: "6.0",
///     zoneId: "cn-beijing-h",
///     vswitchId: defaultrJ5mmz.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultTXZPBL.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
/// });
/// const defaultStreamingDataService = new alicloud.gpdb.StreamingDataService("default", {
///     serviceName: "example",
///     dbInstanceId: default1oSPzX.id,
///     serviceDescription: "example",
///     serviceSpec: "8",
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
/// default_txzpbl = alicloud.vpc.Network("defaultTXZPBL", cidr_block="192.168.0.0/16")
/// defaultr_j5mmz = alicloud.vpc.Switch("defaultrJ5mmz",
///     vpc_id=default_txzpbl.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// default1o_s_pz_x = alicloud.gpdb.Instance("default1oSPzX",
///     instance_spec="2C8G",
///     description=name,
///     seg_node_num=2,
///     seg_storage_type="cloud_essd",
///     instance_network_type="VPC",
///     db_instance_category="Basic",
///     payment_type="PayAsYouGo",
///     ssl_enabled=0,
///     engine_version="6.0",
///     zone_id="cn-beijing-h",
///     vswitch_id=defaultr_j5mmz.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_txzpbl.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb")
/// default_streaming_data_service = alicloud.gpdb.StreamingDataService("default",
///     service_name="example",
///     db_instance_id=default1o_s_pz_x.id,
///     service_description="example",
///     service_spec="8")
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
///     var defaultTXZPBL = new AliCloud.Vpc.Network("defaultTXZPBL", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultrJ5mmz = new AliCloud.Vpc.Switch("defaultrJ5mmz", new()
///     {
///         VpcId = defaultTXZPBL.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var default1oSPzX = new AliCloud.Gpdb.Instance("default1oSPzX", new()
///     {
///         InstanceSpec = "2C8G",
///         Description = name,
///         SegNodeNum = 2,
///         SegStorageType = "cloud_essd",
///         InstanceNetworkType = "VPC",
///         DbInstanceCategory = "Basic",
///         PaymentType = "PayAsYouGo",
///         SslEnabled = 0,
///         EngineVersion = "6.0",
///         ZoneId = "cn-beijing-h",
///         VswitchId = defaultrJ5mmz.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultTXZPBL.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///     });
///
///     var defaultStreamingDataService = new AliCloud.Gpdb.StreamingDataService("default", new()
///     {
///         ServiceName = "example",
///         DbInstanceId = default1oSPzX.Id,
///         ServiceDescription = "example",
///         ServiceSpec = "8",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTXZPBL, err := vpc.NewNetwork(ctx, "defaultTXZPBL", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultrJ5mmz, err := vpc.NewSwitch(ctx, "defaultrJ5mmz", &vpc.SwitchArgs{
/// 			VpcId:     defaultTXZPBL.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1oSPzX, err := gpdb.NewInstance(ctx, "default1oSPzX", &gpdb.InstanceArgs{
/// 			InstanceSpec:        pulumi.String("2C8G"),
/// 			Description:         pulumi.String(name),
/// 			SegNodeNum:          pulumi.Int(2),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			DbInstanceCategory:  pulumi.String("Basic"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SslEnabled:          pulumi.Int(0),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String("cn-beijing-h"),
/// 			VswitchId:           defaultrJ5mmz.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               defaultTXZPBL.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewStreamingDataService(ctx, "default", &gpdb.StreamingDataServiceArgs{
/// 			ServiceName:        pulumi.String("example"),
/// 			DbInstanceId:       default1oSPzX.ID(),
/// 			ServiceDescription: pulumi.String("example"),
/// 			ServiceSpec:        pulumi.String("8"),
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
/// import com.pulumi.alicloud.gpdb.StreamingDataService;
/// import com.pulumi.alicloud.gpdb.StreamingDataServiceArgs;
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
///         var defaultTXZPBL = new Network("defaultTXZPBL", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultrJ5mmz = new Switch("defaultrJ5mmz", SwitchArgs.builder()
///             .vpcId(defaultTXZPBL.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var default1oSPzX = new Instance("default1oSPzX", InstanceArgs.builder()
///             .instanceSpec("2C8G")
///             .description(name)
///             .segNodeNum(2)
///             .segStorageType("cloud_essd")
///             .instanceNetworkType("VPC")
///             .dbInstanceCategory("Basic")
///             .paymentType("PayAsYouGo")
///             .sslEnabled(0)
///             .engineVersion("6.0")
///             .zoneId("cn-beijing-h")
///             .vswitchId(defaultrJ5mmz.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultTXZPBL.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .build());
///
///         var defaultStreamingDataService = new StreamingDataService("defaultStreamingDataService", StreamingDataServiceArgs.builder()
///             .serviceName("example")
///             .dbInstanceId(default1oSPzX.id())
///             .serviceDescription("example")
///             .serviceSpec("8")
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
///   defaultTXZPBL:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultrJ5mmz:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultTXZPBL.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   default1oSPzX:
///     type: alicloud:gpdb:Instance
///     properties:
///       instanceSpec: 2C8G
///       description: ${name}
///       segNodeNum: '2'
///       segStorageType: cloud_essd
///       instanceNetworkType: VPC
///       dbInstanceCategory: Basic
///       paymentType: PayAsYouGo
///       sslEnabled: '0'
///       engineVersion: '6.0'
///       zoneId: cn-beijing-h
///       vswitchId: ${defaultrJ5mmz.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultTXZPBL.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///   defaultStreamingDataService:
///     type: alicloud:gpdb:StreamingDataService
///     name: default
///     properties:
///       serviceName: example
///       dbInstanceId: ${default1oSPzX.id}
///       serviceDescription: example
///       serviceSpec: '8'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for PostgreSQL (GPDB) Streaming Data Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/streamingDataService:StreamingDataService example <db_instance_id>:<service_id>
/// ```
class StreamingDataService extends pulumi.CustomResource {
  /// Create time
  late final pulumi.Output<String> createTime;
  /// The ID of the associated instance.
  late final pulumi.Output<String> dbInstanceId;
  /// The description of the service.
  late final pulumi.Output<String?> serviceDescription;
  /// Service ID
  late final pulumi.Output<String> serviceId;
  /// Service Name
  late final pulumi.Output<String> serviceName;
  /// Resource Specifications
  late final pulumi.Output<String> serviceSpec;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [StreamingDataService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamingDataService]. {@macro pulumi_gpdb_streaming_data_service_streaming_data_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamingDataService(
    String name, {
    StreamingDataServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/streamingDataService:StreamingDataService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.serviceDescription = registerOutput<String?>('serviceDescription');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceSpec = registerOutput<String>('serviceSpec');
    this.status = registerOutput<String>('status');
  }
}
