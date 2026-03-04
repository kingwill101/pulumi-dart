import 'package:pulumi/pulumi.dart' as pulumi;
import 'streaming_job_args.dart';
import 'streaming_job_state.dart';

/// Provides a GPDB Streaming Job resource.
///
/// Real-time data tasks.
///
/// For information about GPDB Streaming Job and how to use it, see [What is Streaming Job](https://www.alibabacloud.com/help/en/analyticdb/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createstreamingjob).
///
/// &gt; **NOTE:** Available since v1.231.0.
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
/// const defaultTXqb15 = new alicloud.vpc.Network("defaultTXqb15", {cidrBlock: "192.168.0.0/16"});
/// const defaultaSWhbT = new alicloud.vpc.Switch("defaultaSWhbT", {
///     vpcId: defaultTXqb15.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const defaulth2ghc1 = new alicloud.gpdb.Instance("defaulth2ghc1", {
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
///     vswitchId: defaultaSWhbT.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultTXqb15.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
/// });
/// const default2dUszY = new alicloud.gpdb.StreamingDataService("default2dUszY", {
///     serviceName: "example",
///     dbInstanceId: defaulth2ghc1.id,
///     serviceDescription: "example",
///     serviceSpec: "8",
/// });
/// const defaultcDQItu = new alicloud.gpdb.StreamingDataSource("defaultcDQItu", {
///     dbInstanceId: defaulth2ghc1.id,
///     dataSourceName: "example",
///     dataSourceConfig: JSON.stringify({
///         brokers: "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///         delimiter: "|",
///         format: "delimited",
///         topic: "ziyuan_example",
///     }),
///     dataSourceType: "kafka",
///     dataSourceDescription: "example",
///     serviceId: default2dUszY.serviceId,
/// });
/// const _default = new alicloud.gpdb.StreamingJob("default", {
///     account: "example_001",
///     destSchema: "public",
///     mode: "professional",
///     jobName: "example-kafka",
///     jobDescription: "example-kafka",
///     destDatabase: "adb_sampledata_tpch",
///     dbInstanceId: defaulth2ghc1.id,
///     destTable: "customer",
///     dataSourceId: defaultcDQItu.dataSourceId,
///     password: "example_001",
///     jobConfig: `ATABASE: adb_sampledata_tpch
/// USER: example_001
/// PASSWORD: example_001
/// HOST: gp-2zean69451zsjj139-master.gpdb.rds.aliyuncs.com
/// PORT: 5432
/// KAFKA:
///   INPUT:
///     SOURCE:
///       BROKERS: alikafka-post-cn-3mp3t4ekq004-1-vpc.alikafka.aliyuncs.com:9092
///       TOPIC: ziyuan_example
///       FALLBACK_OFFSET: LATEST
///     KEY:
///       COLUMNS:
///       - NAME: c_custkey
///         TYPE: int
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\\\'|\\\\'
///     VALUE:
///       COLUMNS:
///       - NAME: c_comment
///         TYPE: varchar
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\\\'|\\\\'
///     ERROR_LIMIT: 10
///   OUTPUT:
///     SCHEMA: public
///     TABLE: customer
///     MODE: MERGE
///     MATCH_COLUMNS:
///     - c_custkey
///     ORDER_COLUMNS:
///     - c_custkey
///     UPDATE_COLUMNS:
///     - c_custkey
///     MAPPING:
///     - NAME: c_custkey
///       EXPRESSION: c_custkey
///   COMMIT:
///     MAX_ROW: 1000
///     MINIMAL_INTERVAL: 1000
///     CONSISTENCY: ATLEAST
///   POLL:
///     BATCHSIZE: 1000
///     TIMEOUT: 1000
///   PROPERTIES:
///     group.id: ziyuan_example_01
/// `,
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
/// default_t_xqb15 = alicloud.vpc.Network("defaultTXqb15", cidr_block="192.168.0.0/16")
/// defaulta_s_whb_t = alicloud.vpc.Switch("defaultaSWhbT",
///     vpc_id=default_t_xqb15.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// defaulth2ghc1 = alicloud.gpdb.Instance("defaulth2ghc1",
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
///     vswitch_id=defaulta_s_whb_t.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_t_xqb15.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb")
/// default2d_usz_y = alicloud.gpdb.StreamingDataService("default2dUszY",
///     service_name="example",
///     db_instance_id=defaulth2ghc1.id,
///     service_description="example",
///     service_spec="8")
/// defaultc_dq_itu = alicloud.gpdb.StreamingDataSource("defaultcDQItu",
///     db_instance_id=defaulth2ghc1.id,
///     data_source_name="example",
///     data_source_config=json.dumps({
///         "brokers": "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///         "delimiter": "|",
///         "format": "delimited",
///         "topic": "ziyuan_example",
///     }),
///     data_source_type="kafka",
///     data_source_description="example",
///     service_id=default2d_usz_y.service_id)
/// default = alicloud.gpdb.StreamingJob("default",
///     account="example_001",
///     dest_schema="public",
///     mode="professional",
///     job_name="example-kafka",
///     job_description="example-kafka",
///     dest_database="adb_sampledata_tpch",
///     db_instance_id=defaulth2ghc1.id,
///     dest_table="customer",
///     data_source_id=defaultc_dq_itu.data_source_id,
///     password="example_001",
///     job_config="""ATABASE: adb_sampledata_tpch
/// USER: example_001
/// PASSWORD: example_001
/// HOST: gp-2zean69451zsjj139-master.gpdb.rds.aliyuncs.com
/// PORT: 5432
/// KAFKA:
///   INPUT:
///     SOURCE:
///       BROKERS: alikafka-post-cn-3mp3t4ekq004-1-vpc.alikafka.aliyuncs.com:9092
///       TOPIC: ziyuan_example
///       FALLBACK_OFFSET: LATEST
///     KEY:
///       COLUMNS:
///       - NAME: c_custkey
///         TYPE: int
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     VALUE:
///       COLUMNS:
///       - NAME: c_comment
///         TYPE: varchar
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     ERROR_LIMIT: 10
///   OUTPUT:
///     SCHEMA: public
///     TABLE: customer
///     MODE: MERGE
///     MATCH_COLUMNS:
///     - c_custkey
///     ORDER_COLUMNS:
///     - c_custkey
///     UPDATE_COLUMNS:
///     - c_custkey
///     MAPPING:
///     - NAME: c_custkey
///       EXPRESSION: c_custkey
///   COMMIT:
///     MAX_ROW: 1000
///     MINIMAL_INTERVAL: 1000
///     CONSISTENCY: ATLEAST
///   POLL:
///     BATCHSIZE: 1000
///     TIMEOUT: 1000
///   PROPERTIES:
///     group.id: ziyuan_example_01
/// """)
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
///     var defaultTXqb15 = new AliCloud.Vpc.Network("defaultTXqb15", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultaSWhbT = new AliCloud.Vpc.Switch("defaultaSWhbT", new()
///     {
///         VpcId = defaultTXqb15.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var defaulth2ghc1 = new AliCloud.Gpdb.Instance("defaulth2ghc1", new()
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
///         VswitchId = defaultaSWhbT.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultTXqb15.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///     });
///
///     var default2dUszY = new AliCloud.Gpdb.StreamingDataService("default2dUszY", new()
///     {
///         ServiceName = "example",
///         DbInstanceId = defaulth2ghc1.Id,
///         ServiceDescription = "example",
///         ServiceSpec = "8",
///     });
///
///     var defaultcDQItu = new AliCloud.Gpdb.StreamingDataSource("defaultcDQItu", new()
///     {
///         DbInstanceId = defaulth2ghc1.Id,
///         DataSourceName = "example",
///         DataSourceConfig = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["brokers"] = "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
///             ["delimiter"] = "|",
///             ["format"] = "delimited",
///             ["topic"] = "ziyuan_example",
///         }),
///         DataSourceType = "kafka",
///         DataSourceDescription = "example",
///         ServiceId = default2dUszY.ServiceId,
///     });
///
///     var @default = new AliCloud.Gpdb.StreamingJob("default", new()
///     {
///         Account = "example_001",
///         DestSchema = "public",
///         Mode = "professional",
///         JobName = "example-kafka",
///         JobDescription = "example-kafka",
///         DestDatabase = "adb_sampledata_tpch",
///         DbInstanceId = defaulth2ghc1.Id,
///         DestTable = "customer",
///         DataSourceId = defaultcDQItu.DataSourceId,
///         Password = "example_001",
///         JobConfig = @"ATABASE: adb_sampledata_tpch
/// USER: example_001
/// PASSWORD: example_001
/// HOST: gp-2zean69451zsjj139-master.gpdb.rds.aliyuncs.com
/// PORT: 5432
/// KAFKA:
///   INPUT:
///     SOURCE:
///       BROKERS: alikafka-post-cn-3mp3t4ekq004-1-vpc.alikafka.aliyuncs.com:9092
///       TOPIC: ziyuan_example
///       FALLBACK_OFFSET: LATEST
///     KEY:
///       COLUMNS:
///       - NAME: c_custkey
///         TYPE: int
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     VALUE:
///       COLUMNS:
///       - NAME: c_comment
///         TYPE: varchar
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     ERROR_LIMIT: 10
///   OUTPUT:
///     SCHEMA: public
///     TABLE: customer
///     MODE: MERGE
///     MATCH_COLUMNS:
///     - c_custkey
///     ORDER_COLUMNS:
///     - c_custkey
///     UPDATE_COLUMNS:
///     - c_custkey
///     MAPPING:
///     - NAME: c_custkey
///       EXPRESSION: c_custkey
///   COMMIT:
///     MAX_ROW: 1000
///     MINIMAL_INTERVAL: 1000
///     CONSISTENCY: ATLEAST
///   POLL:
///     BATCHSIZE: 1000
///     TIMEOUT: 1000
///   PROPERTIES:
///     group.id: ziyuan_example_01
/// ",
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
/// 		defaultTXqb15, err := vpc.NewNetwork(ctx, "defaultTXqb15", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultaSWhbT, err := vpc.NewSwitch(ctx, "defaultaSWhbT", &vpc.SwitchArgs{
/// 			VpcId:     defaultTXqb15.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulth2ghc1, err := gpdb.NewInstance(ctx, "defaulth2ghc1", &gpdb.InstanceArgs{
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
/// 			VswitchId:           defaultaSWhbT.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               defaultTXqb15.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2dUszY, err := gpdb.NewStreamingDataService(ctx, "default2dUszY", &gpdb.StreamingDataServiceArgs{
/// 			ServiceName:        pulumi.String("example"),
/// 			DbInstanceId:       defaulth2ghc1.ID(),
/// 			ServiceDescription: pulumi.String("example"),
/// 			ServiceSpec:        pulumi.String("8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"brokers":   "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092",
/// 			"delimiter": "|",
/// 			"format":    "delimited",
/// 			"topic":     "ziyuan_example",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		defaultcDQItu, err := gpdb.NewStreamingDataSource(ctx, "defaultcDQItu", &gpdb.StreamingDataSourceArgs{
/// 			DbInstanceId:          defaulth2ghc1.ID(),
/// 			DataSourceName:        pulumi.String("example"),
/// 			DataSourceConfig:      pulumi.String(json0),
/// 			DataSourceType:        pulumi.String("kafka"),
/// 			DataSourceDescription: pulumi.String("example"),
/// 			ServiceId:             default2dUszY.ServiceId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewStreamingJob(ctx, "default", &gpdb.StreamingJobArgs{
/// 			Account:        pulumi.String("example_001"),
/// 			DestSchema:     pulumi.String("public"),
/// 			Mode:           pulumi.String("professional"),
/// 			JobName:        pulumi.String("example-kafka"),
/// 			JobDescription: pulumi.String("example-kafka"),
/// 			DestDatabase:   pulumi.String("adb_sampledata_tpch"),
/// 			DbInstanceId:   defaulth2ghc1.ID(),
/// 			DestTable:      pulumi.String("customer"),
/// 			DataSourceId:   defaultcDQItu.DataSourceId,
/// 			Password:       pulumi.String("example_001"),
/// 			JobConfig: pulumi.String(`ATABASE: adb_sampledata_tpch
/// USER: example_001
/// PASSWORD: example_001
/// HOST: gp-2zean69451zsjj139-master.gpdb.rds.aliyuncs.com
/// PORT: 5432
/// KAFKA:
///   INPUT:
///     SOURCE:
///       BROKERS: alikafka-post-cn-3mp3t4ekq004-1-vpc.alikafka.aliyuncs.com:9092
///       TOPIC: ziyuan_example
///       FALLBACK_OFFSET: LATEST
///     KEY:
///       COLUMNS:
///       - NAME: c_custkey
///         TYPE: int
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     VALUE:
///       COLUMNS:
///       - NAME: c_comment
///         TYPE: varchar
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     ERROR_LIMIT: 10
///   OUTPUT:
///     SCHEMA: public
///     TABLE: customer
///     MODE: MERGE
///     MATCH_COLUMNS:
///     - c_custkey
///     ORDER_COLUMNS:
///     - c_custkey
///     UPDATE_COLUMNS:
///     - c_custkey
///     MAPPING:
///     - NAME: c_custkey
///       EXPRESSION: c_custkey
///   COMMIT:
///     MAX_ROW: 1000
///     MINIMAL_INTERVAL: 1000
///     CONSISTENCY: ATLEAST
///   POLL:
///     BATCHSIZE: 1000
///     TIMEOUT: 1000
///   PROPERTIES:
///     group.id: ziyuan_example_01
/// `),
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
/// import com.pulumi.alicloud.gpdb.StreamingDataService;
/// import com.pulumi.alicloud.gpdb.StreamingDataServiceArgs;
/// import com.pulumi.alicloud.gpdb.StreamingDataSource;
/// import com.pulumi.alicloud.gpdb.StreamingDataSourceArgs;
/// import com.pulumi.alicloud.gpdb.StreamingJob;
/// import com.pulumi.alicloud.gpdb.StreamingJobArgs;
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
///         var defaultTXqb15 = new Network("defaultTXqb15", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultaSWhbT = new Switch("defaultaSWhbT", SwitchArgs.builder()
///             .vpcId(defaultTXqb15.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var defaulth2ghc1 = new Instance("defaulth2ghc1", InstanceArgs.builder()
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
///             .vswitchId(defaultaSWhbT.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultTXqb15.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .build());
///
///         var default2dUszY = new StreamingDataService("default2dUszY", StreamingDataServiceArgs.builder()
///             .serviceName("example")
///             .dbInstanceId(defaulth2ghc1.id())
///             .serviceDescription("example")
///             .serviceSpec("8")
///             .build());
///
///         var defaultcDQItu = new StreamingDataSource("defaultcDQItu", StreamingDataSourceArgs.builder()
///             .dbInstanceId(defaulth2ghc1.id())
///             .dataSourceName("example")
///             .dataSourceConfig(serializeJson(
///                 jsonObject(
///                     jsonProperty("brokers", "alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092"),
///                     jsonProperty("delimiter", "|"),
///                     jsonProperty("format", "delimited"),
///                     jsonProperty("topic", "ziyuan_example")
///                 )))
///             .dataSourceType("kafka")
///             .dataSourceDescription("example")
///             .serviceId(default2dUszY.serviceId())
///             .build());
///
///         var default_ = new StreamingJob("default", StreamingJobArgs.builder()
///             .account("example_001")
///             .destSchema("public")
///             .mode("professional")
///             .jobName("example-kafka")
///             .jobDescription("example-kafka")
///             .destDatabase("adb_sampledata_tpch")
///             .dbInstanceId(defaulth2ghc1.id())
///             .destTable("customer")
///             .dataSourceId(defaultcDQItu.dataSourceId())
///             .password("example_001")
///             .jobConfig("""
/// ATABASE: adb_sampledata_tpch
/// USER: example_001
/// PASSWORD: example_001
/// HOST: gp-2zean69451zsjj139-master.gpdb.rds.aliyuncs.com
/// PORT: 5432
/// KAFKA:
///   INPUT:
///     SOURCE:
///       BROKERS: alikafka-post-cn-3mp3t4ekq004-1-vpc.alikafka.aliyuncs.com:9092
///       TOPIC: ziyuan_example
///       FALLBACK_OFFSET: LATEST
///     KEY:
///       COLUMNS:
///       - NAME: c_custkey
///         TYPE: int
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     VALUE:
///       COLUMNS:
///       - NAME: c_comment
///         TYPE: varchar
///       FORMAT: delimited
///       DELIMITED_OPTION:
///         DELIMITER: \\'|\\'
///     ERROR_LIMIT: 10
///   OUTPUT:
///     SCHEMA: public
///     TABLE: customer
///     MODE: MERGE
///     MATCH_COLUMNS:
///     - c_custkey
///     ORDER_COLUMNS:
///     - c_custkey
///     UPDATE_COLUMNS:
///     - c_custkey
///     MAPPING:
///     - NAME: c_custkey
///       EXPRESSION: c_custkey
///   COMMIT:
///     MAX_ROW: 1000
///     MINIMAL_INTERVAL: 1000
///     CONSISTENCY: ATLEAST
///   POLL:
///     BATCHSIZE: 1000
///     TIMEOUT: 1000
///   PROPERTIES:
///     group.id: ziyuan_example_01
///             """)
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
///   defaultTXqb15:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultaSWhbT:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultTXqb15.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   defaulth2ghc1:
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
///       vswitchId: ${defaultaSWhbT.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultTXqb15.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///   default2dUszY:
///     type: alicloud:gpdb:StreamingDataService
///     properties:
///       serviceName: example
///       dbInstanceId: ${defaulth2ghc1.id}
///       serviceDescription: example
///       serviceSpec: '8'
///   defaultcDQItu:
///     type: alicloud:gpdb:StreamingDataSource
///     properties:
///       dbInstanceId: ${defaulth2ghc1.id}
///       dataSourceName: example
///       dataSourceConfig:
///         fn::toJSON:
///           brokers: alikafka-post-cn-g4t3t4eod004-1-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-2-vpc.alikafka.aliyuncs.com:9092,alikafka-post-cn-g4t3t4eod004-3-vpc.alikafka.aliyuncs.com:9092
///           delimiter: '|'
///           format: delimited
///           topic: ziyuan_example
///       dataSourceType: kafka
///       dataSourceDescription: example
///       serviceId: ${default2dUszY.serviceId}
///   default:
///     type: alicloud:gpdb:StreamingJob
///     properties:
///       account: example_001
///       destSchema: public
///       mode: professional
///       jobName: example-kafka
///       jobDescription: example-kafka
///       destDatabase: adb_sampledata_tpch
///       dbInstanceId: ${defaulth2ghc1.id}
///       destTable: customer
///       dataSourceId: ${defaultcDQItu.dataSourceId}
///       password: example_001
///       jobConfig: |
///         ATABASE: adb_sampledata_tpch
///         USER: example_001
///         PASSWORD: example_001
///         HOST: gp-2zean69451zsjj139-master.gpdb.rds.aliyuncs.com
///         PORT: 5432
///         KAFKA:
///           INPUT:
///             SOURCE:
///               BROKERS: alikafka-post-cn-3mp3t4ekq004-1-vpc.alikafka.aliyuncs.com:9092
///               TOPIC: ziyuan_example
///               FALLBACK_OFFSET: LATEST
///             KEY:
///               COLUMNS:
///               - NAME: c_custkey
///                 TYPE: int
///               FORMAT: delimited
///               DELIMITED_OPTION:
///                 DELIMITER: \\'|\\'
///             VALUE:
///               COLUMNS:
///               - NAME: c_comment
///                 TYPE: varchar
///               FORMAT: delimited
///               DELIMITED_OPTION:
///                 DELIMITER: \\'|\\'
///             ERROR_LIMIT: 10
///           OUTPUT:
///             SCHEMA: public
///             TABLE: customer
///             MODE: MERGE
///             MATCH_COLUMNS:
///             - c_custkey
///             ORDER_COLUMNS:
///             - c_custkey
///             UPDATE_COLUMNS:
///             - c_custkey
///             MAPPING:
///             - NAME: c_custkey
///               EXPRESSION: c_custkey
///           COMMIT:
///             MAX_ROW: 1000
///             MINIMAL_INTERVAL: 1000
///             CONSISTENCY: ATLEAST
///           POLL:
///             BATCHSIZE: 1000
///             TIMEOUT: 1000
///           PROPERTIES:
///             group.id: ziyuan_example_01
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// GPDB Streaming Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/streamingJob:StreamingJob example <db_instance_id>:<job_id>
/// ```
class StreamingJob extends pulumi.CustomResource {
  /// The name of the database account.
  late final pulumi.Output<String?> account;

  /// The delivery guarantee setting.
  ///
  /// Valid values:
  ///
  /// - ATLEAST
  /// - EXACTLY
  late final pulumi.Output<String?> consistency;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// The data source ID.
  late final pulumi.Output<String> dataSourceId;

  /// The instance ID.
  late final pulumi.Output<String> dbInstanceId;

  /// Target Field
  late final pulumi.Output<List<String>?> destColumns;

  /// The name of the destination database.
  late final pulumi.Output<String?> destDatabase;

  /// Target Schema
  late final pulumi.Output<String?> destSchema;

  /// The name of the destination table.
  late final pulumi.Output<String?> destTable;

  /// The number of allowed error rows. Write failures occur when Kafka data does not match the destination table in AnalyticDB for PostgreSQL. If the specified value is exceeded, the job fails.
  late final pulumi.Output<int?> errorLimitCount;

  /// Automatic offset reset
  late final pulumi.Output<String?> fallbackOffset;

  /// Group Name
  late final pulumi.Output<String?> groupName;

  /// The YAML configuration file of the job. This parameter must be specified when Mode is set to professional.
  late final pulumi.Output<String?> jobConfig;

  /// The description of the job.
  late final pulumi.Output<String?> jobDescription;

  /// The job ID.
  late final pulumi.Output<String> jobId;

  /// The name of the job.
  late final pulumi.Output<String> jobName;

  /// Match Field
  late final pulumi.Output<List<String>?> matchColumns;

  /// The configuration mode. Valid values:
  ///
  /// 1.  basic: In basic mode, you must configure the configuration parameters.
  ///
  /// 2.  professional: In professional mode, you can submit a YAML configuration file.
  late final pulumi.Output<String?> mode;

  /// The password of the database account.
  late final pulumi.Output<String?> password;

  /// Source Field
  late final pulumi.Output<List<String>?> srcColumns;

  /// Service status, value:
  late final pulumi.Output<String> status;

  /// Specifies whether to test the real-time job. Valid values:
  ///
  /// - true
  /// - false
  ///
  /// Default value: false.
  late final pulumi.Output<bool?> tryRun;

  /// Update Field
  late final pulumi.Output<List<String>?> updateColumns;

  /// The write mode.
  ///
  /// Valid values:
  ///
  /// - insert
  /// - update
  /// - merge
  late final pulumi.Output<String?> writeMode;

  /// Creates a new [StreamingJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamingJob]. {@macro pulumi_gpdb_streaming_job_streaming_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamingJob(
    String name, {
    StreamingJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:gpdb/streamingJob:StreamingJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    account = registerOutput<String?>('account');
    consistency = registerOutput<String?>('consistency');
    createTime = registerOutput<String>('createTime');
    dataSourceId = registerOutput<String>('dataSourceId');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    destColumns = registerOutput<List<String>?>('destColumns');
    destDatabase = registerOutput<String?>('destDatabase');
    destSchema = registerOutput<String?>('destSchema');
    destTable = registerOutput<String?>('destTable');
    errorLimitCount = registerOutput<int?>('errorLimitCount');
    fallbackOffset = registerOutput<String?>('fallbackOffset');
    groupName = registerOutput<String?>('groupName');
    jobConfig = registerOutput<String?>('jobConfig');
    jobDescription = registerOutput<String?>('jobDescription');
    jobId = registerOutput<String>('jobId');
    jobName = registerOutput<String>('jobName');
    matchColumns = registerOutput<List<String>?>('matchColumns');
    mode = registerOutput<String?>('mode');
    password = registerOutput<String?>('password');
    srcColumns = registerOutput<List<String>?>('srcColumns');
    status = registerOutput<String>('status');
    tryRun = registerOutput<bool?>('tryRun');
    updateColumns = registerOutput<List<String>?>('updateColumns');
    writeMode = registerOutput<String?>('writeMode');
  }

  /// Gets an existing [StreamingJob] resource's state with the given [name] and [id].
  static StreamingJob get(
    String name,
    pulumi.Input<String> id, {
    StreamingJobState? state,
  }) {
    return StreamingJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StreamingJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:gpdb/streamingJob:StreamingJob',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    account = registerOutput<String?>('account');
    consistency = registerOutput<String?>('consistency');
    createTime = registerOutput<String>('createTime');
    dataSourceId = registerOutput<String>('dataSourceId');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    destColumns = registerOutput<List<String>?>('destColumns');
    destDatabase = registerOutput<String?>('destDatabase');
    destSchema = registerOutput<String?>('destSchema');
    destTable = registerOutput<String?>('destTable');
    errorLimitCount = registerOutput<int?>('errorLimitCount');
    fallbackOffset = registerOutput<String?>('fallbackOffset');
    groupName = registerOutput<String?>('groupName');
    jobConfig = registerOutput<String?>('jobConfig');
    jobDescription = registerOutput<String?>('jobDescription');
    jobId = registerOutput<String>('jobId');
    jobName = registerOutput<String>('jobName');
    matchColumns = registerOutput<List<String>?>('matchColumns');
    mode = registerOutput<String?>('mode');
    password = registerOutput<String?>('password');
    srcColumns = registerOutput<List<String>?>('srcColumns');
    status = registerOutput<String>('status');
    tryRun = registerOutput<bool?>('tryRun');
    updateColumns = registerOutput<List<String>?>('updateColumns');
    writeMode = registerOutput<String?>('writeMode');
  }
}
