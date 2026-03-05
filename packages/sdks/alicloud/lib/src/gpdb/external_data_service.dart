import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_data_service_args.dart';
import 'external_data_service_state.dart';

/// Provides a AnalyticDB for PostgreSQL (GPDB) External Data Service resource.
///
/// External Data Services.
///
/// For information about AnalyticDB for PostgreSQL (GPDB) External Data Service and how to use it, see [What is External Data Service](https://next.api.alibabacloud.com/document/gpdb/2016-05-03/CreateExternalDataService).
///
/// &gt; **NOTE:** Available since v1.227.0.
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
/// const defaultrple4a = new alicloud.vpc.Network("defaultrple4a", {cidrBlock: "192.168.0.0/16"});
/// const defaultnYWSkl = new alicloud.vpc.Switch("defaultnYWSkl", {
///     vpcId: defaultrple4a.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const defaultZ7DPgB = new alicloud.gpdb.Instance("defaultZ7DPgB", {
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
///     vswitchId: defaultnYWSkl.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultrple4a.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
/// });
/// const defaultExternalDataService = new alicloud.gpdb.ExternalDataService("default", {
///     serviceName: "example6",
///     dbInstanceId: defaultZ7DPgB.id,
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
/// defaultrple4a = alicloud.vpc.Network("defaultrple4a", cidr_block="192.168.0.0/16")
/// defaultn_yw_skl = alicloud.vpc.Switch("defaultnYWSkl",
///     vpc_id=defaultrple4a.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// default_z7_d_pg_b = alicloud.gpdb.Instance("defaultZ7DPgB",
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
///     vswitch_id=defaultn_yw_skl.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=defaultrple4a.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb")
/// default_external_data_service = alicloud.gpdb.ExternalDataService("default",
///     service_name="example6",
///     db_instance_id=default_z7_d_pg_b.id,
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
///     var defaultrple4a = new AliCloud.Vpc.Network("defaultrple4a", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultnYWSkl = new AliCloud.Vpc.Switch("defaultnYWSkl", new()
///     {
///         VpcId = defaultrple4a.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var defaultZ7DPgB = new AliCloud.Gpdb.Instance("defaultZ7DPgB", new()
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
///         VswitchId = defaultnYWSkl.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultrple4a.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///     });
///
///     var defaultExternalDataService = new AliCloud.Gpdb.ExternalDataService("default", new()
///     {
///         ServiceName = "example6",
///         DbInstanceId = defaultZ7DPgB.Id,
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
/// 		defaultrple4a, err := vpc.NewNetwork(ctx, "defaultrple4a", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultnYWSkl, err := vpc.NewSwitch(ctx, "defaultnYWSkl", &vpc.SwitchArgs{
/// 			VpcId:     defaultrple4a.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultZ7DPgB, err := gpdb.NewInstance(ctx, "defaultZ7DPgB", &gpdb.InstanceArgs{
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
/// 			VswitchId:           defaultnYWSkl.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               defaultrple4a.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewExternalDataService(ctx, "default", &gpdb.ExternalDataServiceArgs{
/// 			ServiceName:        pulumi.String("example6"),
/// 			DbInstanceId:       defaultZ7DPgB.ID(),
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
/// import com.pulumi.alicloud.gpdb.ExternalDataService;
/// import com.pulumi.alicloud.gpdb.ExternalDataServiceArgs;
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
///         var defaultrple4a = new Network("defaultrple4a", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultnYWSkl = new Switch("defaultnYWSkl", SwitchArgs.builder()
///             .vpcId(defaultrple4a.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var defaultZ7DPgB = new Instance("defaultZ7DPgB", InstanceArgs.builder()
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
///             .vswitchId(defaultnYWSkl.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultrple4a.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .build());
///
///         var defaultExternalDataService = new ExternalDataService("defaultExternalDataService", ExternalDataServiceArgs.builder()
///             .serviceName("example6")
///             .dbInstanceId(defaultZ7DPgB.id())
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
///   defaultrple4a:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultnYWSkl:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultrple4a.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   defaultZ7DPgB:
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
///       vswitchId: ${defaultnYWSkl.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultrple4a.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///   defaultExternalDataService:
///     type: alicloud:gpdb:ExternalDataService
///     name: default
///     properties:
///       serviceName: example6
///       dbInstanceId: ${defaultZ7DPgB.id}
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
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for PostgreSQL (GPDB) External Data Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/externalDataService:ExternalDataService example <db_instance_id>:<service_id>
/// ```
class ExternalDataService extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Instance ID
  late final pulumi.Output<String> dbInstanceId;
  /// Service Description
  late final pulumi.Output<String?> serviceDescription;
  /// Service ID
  late final pulumi.Output<int> serviceId;
  /// Service Name
  late final pulumi.Output<String> serviceName;
  /// Service Specifications
  late final pulumi.Output<String> serviceSpec;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [ExternalDataService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalDataService]. {@macro pulumi_gpdb_external_data_service_external_data_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalDataService(
    String name, {
    ExternalDataServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/externalDataService:ExternalDataService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    serviceDescription = registerOutput<String?>('serviceDescription');
    serviceId = registerOutput<int>('serviceId');
    serviceName = registerOutput<String>('serviceName');
    serviceSpec = registerOutput<String>('serviceSpec');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ExternalDataService] resource's state with the given [name] and [id].
  static ExternalDataService get(
    String name,
    pulumi.Input<String> id, {
    ExternalDataServiceState? state,
  }) {
    return ExternalDataService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExternalDataService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/externalDataService:ExternalDataService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    serviceDescription = registerOutput<String?>('serviceDescription');
    serviceId = registerOutput<int>('serviceId');
    serviceName = registerOutput<String>('serviceName');
    serviceSpec = registerOutput<String>('serviceSpec');
    status = registerOutput<String>('status');
  }
}
