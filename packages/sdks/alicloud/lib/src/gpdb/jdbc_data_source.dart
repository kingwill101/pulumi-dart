import 'package:pulumi/pulumi.dart' as pulumi;
import 'jdbc_data_source_args.dart';
import 'jdbc_data_source_state.dart';

/// Provides a AnalyticDB for PostgreSQL (GPDB) Jdbc Data Source resource.
///
///
///
/// For information about AnalyticDB for PostgreSQL (GPDB) Jdbc Data Source and how to use it, see [What is Jdbc Data Source](https://www.alibabacloud.com/help/en/analyticdb/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createjdbcdatasource).
///
/// > **NOTE:** Available since v1.230.0.
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
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: "cn-beijing-h",
/// }));
/// const defaulttuqTmM = new alicloud.gpdb.Instance("defaulttuqTmM", {
///     instanceSpec: "2C8G",
///     description: name,
///     segNodeNum: 2,
///     segStorageType: "cloud_essd",
///     instanceNetworkType: "VPC",
///     paymentType: "PayAsYouGo",
///     sslEnabled: 0,
///     engineVersion: "6.0",
///     zoneId: "cn-beijing-h",
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
///     dbInstanceCategory: "Basic",
/// });
/// const defaultsk1eaS = new alicloud.gpdb.Account("defaultsk1eaS", {
///     accountDescription: "example_001",
///     dbInstanceId: defaulttuqTmM.id,
///     accountName: "example_001",
///     accountPassword: "example_001",
///     accountType: "Normal",
/// });
/// const defaultRXkfKL = new alicloud.gpdb.ExternalDataService("defaultRXkfKL", {
///     serviceName: name,
///     dbInstanceId: defaulttuqTmM.id,
///     serviceDescription: "myexample",
///     serviceSpec: "8",
/// });
/// const defaultJdbcDataSource = new alicloud.gpdb.JdbcDataSource("default", {
///     jdbcConnectionString: "jdbc:mysql://rm-2ze327yr44c61183c.mysql.rds.aliyuncs.com:3306/example_001",
///     dataSourceDescription: "myexample",
///     dbInstanceId: defaulttuqTmM.id,
///     jdbcPassword: "example_001",
///     dataSourceName: defaultRXkfKL.serviceName,
///     dataSourceType: "mysql",
///     jdbcUserName: "example_001",
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
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id="cn-beijing-h")
/// defaulttuq_tm_m = alicloud.gpdb.Instance("defaulttuqTmM",
///     instance_spec="2C8G",
///     description=name,
///     seg_node_num=2,
///     seg_storage_type="cloud_essd",
///     instance_network_type="VPC",
///     payment_type="PayAsYouGo",
///     ssl_enabled=0,
///     engine_version="6.0",
///     zone_id="cn-beijing-h",
///     vswitch_id=default_get_switches.ids[0],
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_get_networks.ids[0],
///     db_instance_mode="StorageElastic",
///     engine="gpdb",
///     db_instance_category="Basic")
/// defaultsk1ea_s = alicloud.gpdb.Account("defaultsk1eaS",
///     account_description="example_001",
///     db_instance_id=defaulttuq_tm_m.id,
///     account_name="example_001",
///     account_password="example_001",
///     account_type="Normal")
/// default_r_xkf_kl = alicloud.gpdb.ExternalDataService("defaultRXkfKL",
///     service_name=name,
///     db_instance_id=defaulttuq_tm_m.id,
///     service_description="myexample",
///     service_spec="8")
/// default_jdbc_data_source = alicloud.gpdb.JdbcDataSource("default",
///     jdbc_connection_string="jdbc:mysql://rm-2ze327yr44c61183c.mysql.rds.aliyuncs.com:3306/example_001",
///     data_source_description="myexample",
///     db_instance_id=defaulttuq_tm_m.id,
///     jdbc_password="example_001",
///     data_source_name=default_r_xkf_kl.service_name,
///     data_source_type="mysql",
///     jdbc_user_name="example_001")
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
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = "cn-beijing-h",
///     });
///
///     var defaulttuqTmM = new AliCloud.Gpdb.Instance("defaulttuqTmM", new()
///     {
///         InstanceSpec = "2C8G",
///         Description = name,
///         SegNodeNum = 2,
///         SegStorageType = "cloud_essd",
///         InstanceNetworkType = "VPC",
///         PaymentType = "PayAsYouGo",
///         SslEnabled = 0,
///         EngineVersion = "6.0",
///         ZoneId = "cn-beijing-h",
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///         DbInstanceCategory = "Basic",
///     });
///
///     var defaultsk1eaS = new AliCloud.Gpdb.Account("defaultsk1eaS", new()
///     {
///         AccountDescription = "example_001",
///         DbInstanceId = defaulttuqTmM.Id,
///         AccountName = "example_001",
///         AccountPassword = "example_001",
///         AccountType = "Normal",
///     });
///
///     var defaultRXkfKL = new AliCloud.Gpdb.ExternalDataService("defaultRXkfKL", new()
///     {
///         ServiceName = name,
///         DbInstanceId = defaulttuqTmM.Id,
///         ServiceDescription = "myexample",
///         ServiceSpec = "8",
///     });
///
///     var defaultJdbcDataSource = new AliCloud.Gpdb.JdbcDataSource("default", new()
///     {
///         JdbcConnectionString = "jdbc:mysql://rm-2ze327yr44c61183c.mysql.rds.aliyuncs.com:3306/example_001",
///         DataSourceDescription = "myexample",
///         DbInstanceId = defaulttuqTmM.Id,
///         JdbcPassword = "example_001",
///         DataSourceName = defaultRXkfKL.ServiceName,
///         DataSourceType = "mysql",
///         JdbcUserName = "example_001",
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
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef("cn-beijing-h"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulttuqTmM, err := gpdb.NewInstance(ctx, "defaulttuqTmM", &gpdb.InstanceArgs{
/// 			InstanceSpec:        pulumi.String("2C8G"),
/// 			Description:         pulumi.String(name),
/// 			SegNodeNum:          pulumi.Int(2),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SslEnabled:          pulumi.Int(0),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String("cn-beijing-h"),
/// 			VswitchId:           pulumi.String(defaultGetSwitches.Ids[0]),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               pulumi.String(defaultGetNetworks.Ids[0]),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 			DbInstanceCategory:  pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewAccount(ctx, "defaultsk1eaS", &gpdb.AccountArgs{
/// 			AccountDescription: pulumi.String("example_001"),
/// 			DbInstanceId:       defaulttuqTmM.ID(),
/// 			AccountName:        pulumi.String("example_001"),
/// 			AccountPassword:    pulumi.String("example_001"),
/// 			AccountType:        pulumi.String("Normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRXkfKL, err := gpdb.NewExternalDataService(ctx, "defaultRXkfKL", &gpdb.ExternalDataServiceArgs{
/// 			ServiceName:        pulumi.String(name),
/// 			DbInstanceId:       defaulttuqTmM.ID(),
/// 			ServiceDescription: pulumi.String("myexample"),
/// 			ServiceSpec:        pulumi.String("8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewJdbcDataSource(ctx, "default", &gpdb.JdbcDataSourceArgs{
/// 			JdbcConnectionString:  pulumi.String("jdbc:mysql://rm-2ze327yr44c61183c.mysql.rds.aliyuncs.com:3306/example_001"),
/// 			DataSourceDescription: pulumi.String("myexample"),
/// 			DbInstanceId:          defaulttuqTmM.ID(),
/// 			JdbcPassword:          pulumi.String("example_001"),
/// 			DataSourceName:        defaultRXkfKL.ServiceName,
/// 			DataSourceType:        pulumi.String("mysql"),
/// 			JdbcUserName:          pulumi.String("example_001"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.Account;
/// import com.pulumi.alicloud.gpdb.AccountArgs;
/// import com.pulumi.alicloud.gpdb.ExternalDataService;
/// import com.pulumi.alicloud.gpdb.ExternalDataServiceArgs;
/// import com.pulumi.alicloud.gpdb.JdbcDataSource;
/// import com.pulumi.alicloud.gpdb.JdbcDataSourceArgs;
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
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId("cn-beijing-h")
///             .build());
///
///         var defaulttuqTmM = new Instance("defaulttuqTmM", InstanceArgs.builder()
///             .instanceSpec("2C8G")
///             .description(name)
///             .segNodeNum(2)
///             .segStorageType("cloud_essd")
///             .instanceNetworkType("VPC")
///             .paymentType("PayAsYouGo")
///             .sslEnabled(0)
///             .engineVersion("6.0")
///             .zoneId("cn-beijing-h")
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .dbInstanceCategory("Basic")
///             .build());
///
///         var defaultsk1eaS = new Account("defaultsk1eaS", AccountArgs.builder()
///             .accountDescription("example_001")
///             .dbInstanceId(defaulttuqTmM.id())
///             .accountName("example_001")
///             .accountPassword("example_001")
///             .accountType("Normal")
///             .build());
///
///         var defaultRXkfKL = new ExternalDataService("defaultRXkfKL", ExternalDataServiceArgs.builder()
///             .serviceName(name)
///             .dbInstanceId(defaulttuqTmM.id())
///             .serviceDescription("myexample")
///             .serviceSpec("8")
///             .build());
///
///         var defaultJdbcDataSource = new JdbcDataSource("defaultJdbcDataSource", JdbcDataSourceArgs.builder()
///             .jdbcConnectionString("jdbc:mysql://rm-2ze327yr44c61183c.mysql.rds.aliyuncs.com:3306/example_001")
///             .dataSourceDescription("myexample")
///             .dbInstanceId(defaulttuqTmM.id())
///             .jdbcPassword("example_001")
///             .dataSourceName(defaultRXkfKL.serviceName())
///             .dataSourceType("mysql")
///             .jdbcUserName("example_001")
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
///   defaulttuqTmM:
///     type: alicloud:gpdb:Instance
///     properties:
///       instanceSpec: 2C8G
///       description: ${name}
///       segNodeNum: '2'
///       segStorageType: cloud_essd
///       instanceNetworkType: VPC
///       paymentType: PayAsYouGo
///       sslEnabled: '0'
///       engineVersion: '6.0'
///       zoneId: cn-beijing-h
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultGetNetworks.ids[0]}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///       dbInstanceCategory: Basic
///   defaultsk1eaS:
///     type: alicloud:gpdb:Account
///     properties:
///       accountDescription: example_001
///       dbInstanceId: ${defaulttuqTmM.id}
///       accountName: example_001
///       accountPassword: example_001
///       accountType: Normal
///   defaultRXkfKL:
///     type: alicloud:gpdb:ExternalDataService
///     properties:
///       serviceName: ${name}
///       dbInstanceId: ${defaulttuqTmM.id}
///       serviceDescription: myexample
///       serviceSpec: '8'
///   defaultJdbcDataSource:
///     type: alicloud:gpdb:JdbcDataSource
///     name: default
///     properties:
///       jdbcConnectionString: jdbc:mysql://rm-2ze327yr44c61183c.mysql.rds.aliyuncs.com:3306/example_001
///       dataSourceDescription: myexample
///       dbInstanceId: ${defaulttuqTmM.id}
///       jdbcPassword: example_001
///       dataSourceName: ${defaultRXkfKL.serviceName}
///       dataSourceType: mysql
///       jdbcUserName: example_001
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: cn-beijing-h
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for PostgreSQL (GPDB) Jdbc Data Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/jdbcDataSource:JdbcDataSource example <db_instance_id>:<data_source_id>
/// ```
class JdbcDataSource extends pulumi.CustomResource {
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Data Source Description
  late final pulumi.Output<String?> dataSourceDescription;
  /// The data source ID.
  late final pulumi.Output<String> dataSourceId;
  /// Data Source Name
  late final pulumi.Output<String?> dataSourceName;
  /// Data Source Type
  late final pulumi.Output<String?> dataSourceType;
  /// The instance ID.
  late final pulumi.Output<String> dbInstanceId;
  /// The JDBC connection string.
  late final pulumi.Output<String?> jdbcConnectionString;
  /// The password of the database account.
  late final pulumi.Output<String?> jdbcPassword;
  /// The name of the database account.
  late final pulumi.Output<String> jdbcUserName;
  /// Data Source Status
  late final pulumi.Output<String> status;

  /// Creates a new [JdbcDataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JdbcDataSource]. {@macro pulumi_gpdb_jdbc_data_source_jdbc_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JdbcDataSource(
    String name, {
    JdbcDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/jdbcDataSource:JdbcDataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataSourceDescription = registerOutput<String?>('dataSourceDescription');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.dataSourceName = registerOutput<String?>('dataSourceName');
    this.dataSourceType = registerOutput<String?>('dataSourceType');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.jdbcConnectionString = registerOutput<String?>('jdbcConnectionString');
    this.jdbcPassword = registerOutput<String?>('jdbcPassword');
    this.jdbcUserName = registerOutput<String>('jdbcUserName');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [JdbcDataSource] resource's state with the given [name] and [id].
  static JdbcDataSource get(
    String name,
    pulumi.Input<String> id, {
    JdbcDataSourceState? state,
  }) {
    return JdbcDataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JdbcDataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/jdbcDataSource:JdbcDataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataSourceDescription = registerOutput<String?>('dataSourceDescription');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.dataSourceName = registerOutput<String?>('dataSourceName');
    this.dataSourceType = registerOutput<String?>('dataSourceType');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.jdbcConnectionString = registerOutput<String?>('jdbcConnectionString');
    this.jdbcPassword = registerOutput<String?>('jdbcPassword');
    this.jdbcUserName = registerOutput<String>('jdbcUserName');
    this.status = registerOutput<String>('status');
  }
}
