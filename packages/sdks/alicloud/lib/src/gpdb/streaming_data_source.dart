import 'package:pulumi/pulumi.dart' as pulumi;
import 'streaming_data_source_args.dart';
import 'streaming_data_source_state.dart';

/// Provides a GPDB Streaming Data Source resource.
///
/// Real-time data source.
///
/// For information about GPDB Streaming Data Source and how to use it, see [What is Streaming Data Source](https://www.alibabacloud.com/help/en/analyticdb/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createstreamingdatasource).
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
/// const kafka_config_modify = config.get("kafka-config-modify") || `{
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "#",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
/// `;
/// const kafka_config = config.get("kafka-config") || `{
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "|",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
/// `;
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultDfkYOR = new alicloud.vpc.Network("defaultDfkYOR", {cidrBlock: "192.168.0.0/16"});
/// const default59ZqyD = new alicloud.vpc.Switch("default59ZqyD", {
///     vpcId: defaultDfkYOR.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const default7mX6ld = new alicloud.gpdb.Instance("default7mX6ld", {
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
///     vswitchId: default59ZqyD.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultDfkYOR.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
/// });
/// const defaultwruvdv = new alicloud.gpdb.StreamingDataService("defaultwruvdv", {
///     serviceName: "example",
///     dbInstanceId: default7mX6ld.id,
///     serviceDescription: "example",
///     serviceSpec: "8",
/// });
/// const defaultStreamingDataSource = new alicloud.gpdb.StreamingDataSource("default", {
///     dbInstanceId: default7mX6ld.id,
///     dataSourceName: "example-kafka3",
///     dataSourceConfig: kafka_config,
///     dataSourceType: "kafka",
///     dataSourceDescription: "example-kafka",
///     serviceId: defaultwruvdv.serviceId,
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
/// kafka_config_modify = config.get("kafka-config-modify")
/// if kafka_config_modify is None:
///     kafka_config_modify = """{
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "#",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
/// """
/// kafka_config = config.get("kafka-config")
/// if kafka_config is None:
///     kafka_config = """{
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "|",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
/// """
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_dfk_yor = alicloud.vpc.Network("defaultDfkYOR", cidr_block="192.168.0.0/16")
/// default59_zqy_d = alicloud.vpc.Switch("default59ZqyD",
///     vpc_id=default_dfk_yor.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// default7m_x6ld = alicloud.gpdb.Instance("default7mX6ld",
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
///     vswitch_id=default59_zqy_d.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_dfk_yor.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb")
/// defaultwruvdv = alicloud.gpdb.StreamingDataService("defaultwruvdv",
///     service_name="example",
///     db_instance_id=default7m_x6ld.id,
///     service_description="example",
///     service_spec="8")
/// default_streaming_data_source = alicloud.gpdb.StreamingDataSource("default",
///     db_instance_id=default7m_x6ld.id,
///     data_source_name="example-kafka3",
///     data_source_config=kafka_config,
///     data_source_type="kafka",
///     data_source_description="example-kafka",
///     service_id=defaultwruvdv.service_id)
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
///     var kafka_config_modify = config.Get("kafka-config-modify") ?? @"{
///     ""brokers"": ""alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092"",
///     ""delimiter"": ""#"",
///     ""format"": ""delimited"",
///     ""topic"": ""ziyuan_example""
/// }
/// ";
///     var kafka_config = config.Get("kafka-config") ?? @"{
///     ""brokers"": ""alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092"",
///     ""delimiter"": ""|"",
///     ""format"": ""delimited"",
///     ""topic"": ""ziyuan_example""
/// }
/// ";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultDfkYOR = new AliCloud.Vpc.Network("defaultDfkYOR", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var default59ZqyD = new AliCloud.Vpc.Switch("default59ZqyD", new()
///     {
///         VpcId = defaultDfkYOR.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var default7mX6ld = new AliCloud.Gpdb.Instance("default7mX6ld", new()
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
///         VswitchId = default59ZqyD.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultDfkYOR.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///     });
///
///     var defaultwruvdv = new AliCloud.Gpdb.StreamingDataService("defaultwruvdv", new()
///     {
///         ServiceName = "example",
///         DbInstanceId = default7mX6ld.Id,
///         ServiceDescription = "example",
///         ServiceSpec = "8",
///     });
///
///     var defaultStreamingDataSource = new AliCloud.Gpdb.StreamingDataSource("default", new()
///     {
///         DbInstanceId = default7mX6ld.Id,
///         DataSourceName = "example-kafka3",
///         DataSourceConfig = kafka_config,
///         DataSourceType = "kafka",
///         DataSourceDescription = "example-kafka",
///         ServiceId = defaultwruvdv.ServiceId,
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
/// 		kafka_config_modify := `{
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "#",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
/// `
/// 		if param := cfg.Get("kafka-config-modify"); param != "" {
/// 			kafka_config_modify = param
/// 		}
/// 		kafka_config := `{
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "|",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
/// `
/// 		if param := cfg.Get("kafka-config"); param != "" {
/// 			kafka_config = param
/// 		}
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDfkYOR, err := vpc.NewNetwork(ctx, "defaultDfkYOR", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default59ZqyD, err := vpc.NewSwitch(ctx, "default59ZqyD", &vpc.SwitchArgs{
/// 			VpcId:     defaultDfkYOR.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default7mX6ld, err := gpdb.NewInstance(ctx, "default7mX6ld", &gpdb.InstanceArgs{
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
/// 			VswitchId:           default59ZqyD.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               defaultDfkYOR.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultwruvdv, err := gpdb.NewStreamingDataService(ctx, "defaultwruvdv", &gpdb.StreamingDataServiceArgs{
/// 			ServiceName:        pulumi.String("example"),
/// 			DbInstanceId:       default7mX6ld.ID(),
/// 			ServiceDescription: pulumi.String("example"),
/// 			ServiceSpec:        pulumi.String("8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewStreamingDataSource(ctx, "default", &gpdb.StreamingDataSourceArgs{
/// 			DbInstanceId:          default7mX6ld.ID(),
/// 			DataSourceName:        pulumi.String("example-kafka3"),
/// 			DataSourceConfig:      pulumi.String(kafka_config),
/// 			DataSourceType:        pulumi.String("kafka"),
/// 			DataSourceDescription: pulumi.String("example-kafka"),
/// 			ServiceId:             defaultwruvdv.ServiceId,
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
/// import com.pulumi.alicloud.gpdb.StreamingDataSource;
/// import com.pulumi.alicloud.gpdb.StreamingDataSourceArgs;
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
///         final var kafka_config_modify = config.get("kafka-config-modify").orElse("""
/// {
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "#",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
///         """);
///         final var kafka_config = config.get("kafka-config").orElse("""
/// {
///     "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///     "delimiter": "|",
///     "format": "delimited",
///     "topic": "ziyuan_example"
/// }
///         """);
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultDfkYOR = new Network("defaultDfkYOR", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var default59ZqyD = new Switch("default59ZqyD", SwitchArgs.builder()
///             .vpcId(defaultDfkYOR.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var default7mX6ld = new Instance("default7mX6ld", InstanceArgs.builder()
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
///             .vswitchId(default59ZqyD.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultDfkYOR.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .build());
///
///         var defaultwruvdv = new StreamingDataService("defaultwruvdv", StreamingDataServiceArgs.builder()
///             .serviceName("example")
///             .dbInstanceId(default7mX6ld.id())
///             .serviceDescription("example")
///             .serviceSpec("8")
///             .build());
///
///         var defaultStreamingDataSource = new StreamingDataSource("defaultStreamingDataSource", StreamingDataSourceArgs.builder()
///             .dbInstanceId(default7mX6ld.id())
///             .dataSourceName("example-kafka3")
///             .dataSourceConfig(kafka_config)
///             .dataSourceType("kafka")
///             .dataSourceDescription("example-kafka")
///             .serviceId(defaultwruvdv.serviceId())
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
///   kafka-config-modify:
///     type: string
///     default: |
///       {
///           "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///           "delimiter": "#",
///           "format": "delimited",
///           "topic": "ziyuan_example"
///       }
///   kafka-config:
///     type: string
///     default: |
///       {
///           "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///           "delimiter": "|",
///           "format": "delimited",
///           "topic": "ziyuan_example"
///       }
/// resources:
///   defaultDfkYOR:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   default59ZqyD:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultDfkYOR.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   default7mX6ld:
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
///       vswitchId: ${default59ZqyD.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultDfkYOR.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///   defaultwruvdv:
///     type: alicloud:gpdb:StreamingDataService
///     properties:
///       serviceName: example
///       dbInstanceId: ${default7mX6ld.id}
///       serviceDescription: example
///       serviceSpec: '8'
///   defaultStreamingDataSource:
///     type: alicloud:gpdb:StreamingDataSource
///     name: default
///     properties:
///       dbInstanceId: ${default7mX6ld.id}
///       dataSourceName: example-kafka3
///       dataSourceConfig: ${["kafka-config"]}
///       dataSourceType: kafka
///       dataSourceDescription: example-kafka
///       serviceId: ${defaultwruvdv.serviceId}
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
/// GPDB Streaming Data Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/streamingDataSource:StreamingDataSource example <db_instance_id>:<data_source_id>
/// ```
class StreamingDataSource extends pulumi.CustomResource {
  /// Creation time
  late final pulumi.Output<String> createTime;
  /// The configurations of the data source.
  late final pulumi.Output<String> dataSourceConfig;
  /// The description of the data source.
  late final pulumi.Output<String?> dataSourceDescription;
  /// The data source ID.
  late final pulumi.Output<String> dataSourceId;
  /// Data Source Name
  late final pulumi.Output<String> dataSourceName;
  /// Data Source Type
  late final pulumi.Output<String> dataSourceType;
  /// The instance ID.
  ///
  /// &gt; **NOTE:**   You can call the [DescribeDBInstances](https://www.alibabacloud.com/help/en/doc-detail/196830.html) operation to query the information about all AnalyticDB for PostgreSQL instances within a region, including instance IDs.
  late final pulumi.Output<String> dbInstanceId;
  /// The real-time data service ID.
  late final pulumi.Output<int> serviceId;
  /// Service Status:
  late final pulumi.Output<String> status;

  /// Creates a new [StreamingDataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamingDataSource]. {@macro pulumi_gpdb_streaming_data_source_streaming_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamingDataSource(
    String name, {
    StreamingDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/streamingDataSource:StreamingDataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataSourceConfig = registerOutput<String>('dataSourceConfig');
    dataSourceDescription = registerOutput<String?>('dataSourceDescription');
    dataSourceId = registerOutput<String>('dataSourceId');
    dataSourceName = registerOutput<String>('dataSourceName');
    dataSourceType = registerOutput<String>('dataSourceType');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    serviceId = registerOutput<int>('serviceId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [StreamingDataSource] resource's state with the given [name] and [id].
  static StreamingDataSource get(
    String name,
    pulumi.Input<String> id, {
    StreamingDataSourceState? state,
  }) {
    return StreamingDataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StreamingDataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/streamingDataSource:StreamingDataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataSourceConfig = registerOutput<String>('dataSourceConfig');
    dataSourceDescription = registerOutput<String?>('dataSourceDescription');
    dataSourceId = registerOutput<String>('dataSourceId');
    dataSourceName = registerOutput<String>('dataSourceName');
    dataSourceType = registerOutput<String>('dataSourceType');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    serviceId = registerOutput<int>('serviceId');
    status = registerOutput<String>('status');
  }
}
