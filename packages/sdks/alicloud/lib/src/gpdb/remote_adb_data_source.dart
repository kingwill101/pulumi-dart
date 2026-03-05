import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_adb_data_source_args.dart';
import 'remote_adb_data_source_state.dart';

/// Provides a GPDB Remote ADB Data Source resource.
///
/// RemoteADBDataSource is the data external table call method between greenplums, which will be used for data external table access between ADB-PG.
///
/// For information about GPDB Remote ADB Data Source and how to use it, see [What is Remote ADB Data Source](https://www.alibabacloud.com/help/en/analyticdb/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createremoteadbdatasource).
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
/// const default4Mf0nY = new alicloud.vpc.Network("default4Mf0nY", {cidrBlock: "192.168.0.0/16"});
/// const defaultwSAVpf = new alicloud.vpc.Switch("defaultwSAVpf", {
///     vpcId: default4Mf0nY.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const defaultEtEzMF = new alicloud.gpdb.Instance("defaultEtEzMF", {
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
///     vswitchId: defaultwSAVpf.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: default4Mf0nY.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
/// });
/// const defaultEY7t9t = new alicloud.gpdb.Instance("defaultEY7t9t", {
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
///     vswitchId: defaultwSAVpf.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: default4Mf0nY.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
/// });
/// const default26qpEo = new alicloud.gpdb.Account("default26qpEo", {
///     accountDescription: "example_001",
///     dbInstanceId: defaultEtEzMF.id,
///     accountName: "example_001",
///     accountPassword: "example_001",
/// });
/// const defaultwXePof = new alicloud.gpdb.Account("defaultwXePof", {
///     accountDescription: "example_001",
///     dbInstanceId: defaultEY7t9t.id,
///     accountName: "example_001",
///     accountPassword: "example_001",
/// });
/// const defaultRemoteAdbDataSource = new alicloud.gpdb.RemoteAdbDataSource("default", {
///     remoteDatabase: "example_001",
///     managerUserName: "example_001",
///     userName: "example_001",
///     remoteDbInstanceId: defaultwXePof.dbInstanceId,
///     localDatabase: "example_001",
///     dataSourceName: "myexample",
///     userPassword: "example_001",
///     managerUserPassword: "example_001",
///     localDbInstanceId: defaultEtEzMF.id,
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
/// default4_mf0n_y = alicloud.vpc.Network("default4Mf0nY", cidr_block="192.168.0.0/16")
/// defaultw_sa_vpf = alicloud.vpc.Switch("defaultwSAVpf",
///     vpc_id=default4_mf0n_y.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// default_et_ez_mf = alicloud.gpdb.Instance("defaultEtEzMF",
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
///     vswitch_id=defaultw_sa_vpf.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default4_mf0n_y.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb")
/// default_ey7t9t = alicloud.gpdb.Instance("defaultEY7t9t",
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
///     vswitch_id=defaultw_sa_vpf.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default4_mf0n_y.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb")
/// default26qp_eo = alicloud.gpdb.Account("default26qpEo",
///     account_description="example_001",
///     db_instance_id=default_et_ez_mf.id,
///     account_name="example_001",
///     account_password="example_001")
/// defaultw_xe_pof = alicloud.gpdb.Account("defaultwXePof",
///     account_description="example_001",
///     db_instance_id=default_ey7t9t.id,
///     account_name="example_001",
///     account_password="example_001")
/// default_remote_adb_data_source = alicloud.gpdb.RemoteAdbDataSource("default",
///     remote_database="example_001",
///     manager_user_name="example_001",
///     user_name="example_001",
///     remote_db_instance_id=defaultw_xe_pof.db_instance_id,
///     local_database="example_001",
///     data_source_name="myexample",
///     user_password="example_001",
///     manager_user_password="example_001",
///     local_db_instance_id=default_et_ez_mf.id)
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
///     var default4Mf0nY = new AliCloud.Vpc.Network("default4Mf0nY", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultwSAVpf = new AliCloud.Vpc.Switch("defaultwSAVpf", new()
///     {
///         VpcId = default4Mf0nY.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var defaultEtEzMF = new AliCloud.Gpdb.Instance("defaultEtEzMF", new()
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
///         VswitchId = defaultwSAVpf.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = default4Mf0nY.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///     });
///
///     var defaultEY7t9t = new AliCloud.Gpdb.Instance("defaultEY7t9t", new()
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
///         VswitchId = defaultwSAVpf.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = default4Mf0nY.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///     });
///
///     var default26qpEo = new AliCloud.Gpdb.Account("default26qpEo", new()
///     {
///         AccountDescription = "example_001",
///         DbInstanceId = defaultEtEzMF.Id,
///         AccountName = "example_001",
///         AccountPassword = "example_001",
///     });
///
///     var defaultwXePof = new AliCloud.Gpdb.Account("defaultwXePof", new()
///     {
///         AccountDescription = "example_001",
///         DbInstanceId = defaultEY7t9t.Id,
///         AccountName = "example_001",
///         AccountPassword = "example_001",
///     });
///
///     var defaultRemoteAdbDataSource = new AliCloud.Gpdb.RemoteAdbDataSource("default", new()
///     {
///         RemoteDatabase = "example_001",
///         ManagerUserName = "example_001",
///         UserName = "example_001",
///         RemoteDbInstanceId = defaultwXePof.DbInstanceId,
///         LocalDatabase = "example_001",
///         DataSourceName = "myexample",
///         UserPassword = "example_001",
///         ManagerUserPassword = "example_001",
///         LocalDbInstanceId = defaultEtEzMF.Id,
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
/// 		default4Mf0nY, err := vpc.NewNetwork(ctx, "default4Mf0nY", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultwSAVpf, err := vpc.NewSwitch(ctx, "defaultwSAVpf", &vpc.SwitchArgs{
/// 			VpcId:     default4Mf0nY.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEtEzMF, err := gpdb.NewInstance(ctx, "defaultEtEzMF", &gpdb.InstanceArgs{
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
/// 			VswitchId:           defaultwSAVpf.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               default4Mf0nY.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEY7t9t, err := gpdb.NewInstance(ctx, "defaultEY7t9t", &gpdb.InstanceArgs{
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
/// 			VswitchId:           defaultwSAVpf.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               default4Mf0nY.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewAccount(ctx, "default26qpEo", &gpdb.AccountArgs{
/// 			AccountDescription: pulumi.String("example_001"),
/// 			DbInstanceId:       defaultEtEzMF.ID(),
/// 			AccountName:        pulumi.String("example_001"),
/// 			AccountPassword:    pulumi.String("example_001"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultwXePof, err := gpdb.NewAccount(ctx, "defaultwXePof", &gpdb.AccountArgs{
/// 			AccountDescription: pulumi.String("example_001"),
/// 			DbInstanceId:       defaultEY7t9t.ID(),
/// 			AccountName:        pulumi.String("example_001"),
/// 			AccountPassword:    pulumi.String("example_001"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewRemoteAdbDataSource(ctx, "default", &gpdb.RemoteAdbDataSourceArgs{
/// 			RemoteDatabase:      pulumi.String("example_001"),
/// 			ManagerUserName:     pulumi.String("example_001"),
/// 			UserName:            pulumi.String("example_001"),
/// 			RemoteDbInstanceId:  defaultwXePof.DbInstanceId,
/// 			LocalDatabase:       pulumi.String("example_001"),
/// 			DataSourceName:      pulumi.String("myexample"),
/// 			UserPassword:        pulumi.String("example_001"),
/// 			ManagerUserPassword: pulumi.String("example_001"),
/// 			LocalDbInstanceId:   defaultEtEzMF.ID(),
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
/// import com.pulumi.alicloud.gpdb.Account;
/// import com.pulumi.alicloud.gpdb.AccountArgs;
/// import com.pulumi.alicloud.gpdb.RemoteAdbDataSource;
/// import com.pulumi.alicloud.gpdb.RemoteAdbDataSourceArgs;
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
///         var default4Mf0nY = new Network("default4Mf0nY", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultwSAVpf = new Switch("defaultwSAVpf", SwitchArgs.builder()
///             .vpcId(default4Mf0nY.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var defaultEtEzMF = new Instance("defaultEtEzMF", InstanceArgs.builder()
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
///             .vswitchId(defaultwSAVpf.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(default4Mf0nY.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .build());
///
///         var defaultEY7t9t = new Instance("defaultEY7t9t", InstanceArgs.builder()
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
///             .vswitchId(defaultwSAVpf.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(default4Mf0nY.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .build());
///
///         var default26qpEo = new Account("default26qpEo", AccountArgs.builder()
///             .accountDescription("example_001")
///             .dbInstanceId(defaultEtEzMF.id())
///             .accountName("example_001")
///             .accountPassword("example_001")
///             .build());
///
///         var defaultwXePof = new Account("defaultwXePof", AccountArgs.builder()
///             .accountDescription("example_001")
///             .dbInstanceId(defaultEY7t9t.id())
///             .accountName("example_001")
///             .accountPassword("example_001")
///             .build());
///
///         var defaultRemoteAdbDataSource = new RemoteAdbDataSource("defaultRemoteAdbDataSource", RemoteAdbDataSourceArgs.builder()
///             .remoteDatabase("example_001")
///             .managerUserName("example_001")
///             .userName("example_001")
///             .remoteDbInstanceId(defaultwXePof.dbInstanceId())
///             .localDatabase("example_001")
///             .dataSourceName("myexample")
///             .userPassword("example_001")
///             .managerUserPassword("example_001")
///             .localDbInstanceId(defaultEtEzMF.id())
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
///   default4Mf0nY:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultwSAVpf:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${default4Mf0nY.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   defaultEtEzMF:
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
///       vswitchId: ${defaultwSAVpf.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${default4Mf0nY.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///   defaultEY7t9t:
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
///       vswitchId: ${defaultwSAVpf.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${default4Mf0nY.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///   default26qpEo:
///     type: alicloud:gpdb:Account
///     properties:
///       accountDescription: example_001
///       dbInstanceId: ${defaultEtEzMF.id}
///       accountName: example_001
///       accountPassword: example_001
///   defaultwXePof:
///     type: alicloud:gpdb:Account
///     properties:
///       accountDescription: example_001
///       dbInstanceId: ${defaultEY7t9t.id}
///       accountName: example_001
///       accountPassword: example_001
///   defaultRemoteAdbDataSource:
///     type: alicloud:gpdb:RemoteAdbDataSource
///     name: default
///     properties:
///       remoteDatabase: example_001
///       managerUserName: example_001
///       userName: example_001
///       remoteDbInstanceId: ${defaultwXePof.dbInstanceId}
///       localDatabase: example_001
///       dataSourceName: myexample
///       userPassword: example_001
///       managerUserPassword: example_001
///       localDbInstanceId: ${defaultEtEzMF.id}
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
/// GPDB Remote ADB Data Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/remoteAdbDataSource:RemoteAdbDataSource example <local_db_instance_id>:<remote_adb_data_source_id>
/// ```
class RemoteAdbDataSource extends pulumi.CustomResource {
  /// Data Source Name
  late final pulumi.Output<String?> dataSourceName;
  /// The database of the local instance which connection data.
  late final pulumi.Output<String> localDatabase;
  /// The instanceId of the local instance which connection data.
  late final pulumi.Output<String> localDbInstanceId;
  /// The Management user name of the local instance.
  late final pulumi.Output<String> managerUserName;
  /// Password of the Manager user of the local instance
  late final pulumi.Output<String> managerUserPassword;
  /// The first ID of the resource
  late final pulumi.Output<int> remoteAdbDataSourceId;
  /// The database of the remote instance which provide data.
  late final pulumi.Output<String> remoteDatabase;
  /// The instanceId of the remote instance which provide data.
  late final pulumi.Output<String> remoteDbInstanceId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The user name used to connect to the remote instance
  late final pulumi.Output<String> userName;
  /// The user password used to connect to the remote instance
  late final pulumi.Output<String> userPassword;

  /// Creates a new [RemoteAdbDataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemoteAdbDataSource]. {@macro pulumi_gpdb_remote_adb_data_source_remote_adb_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemoteAdbDataSource(
    String name, {
    RemoteAdbDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/remoteAdbDataSource:RemoteAdbDataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceName = registerOutput<String?>('dataSourceName');
    localDatabase = registerOutput<String>('localDatabase');
    localDbInstanceId = registerOutput<String>('localDbInstanceId');
    managerUserName = registerOutput<String>('managerUserName');
    managerUserPassword = registerOutput<String>('managerUserPassword');
    remoteAdbDataSourceId = registerOutput<int>('remoteAdbDataSourceId');
    remoteDatabase = registerOutput<String>('remoteDatabase');
    remoteDbInstanceId = registerOutput<String>('remoteDbInstanceId');
    status = registerOutput<String>('status');
    userName = registerOutput<String>('userName');
    userPassword = registerOutput<String>('userPassword');
  }

  /// Gets an existing [RemoteAdbDataSource] resource's state with the given [name] and [id].
  static RemoteAdbDataSource get(
    String name,
    pulumi.Input<String> id, {
    RemoteAdbDataSourceState? state,
  }) {
    return RemoteAdbDataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RemoteAdbDataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/remoteAdbDataSource:RemoteAdbDataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceName = registerOutput<String?>('dataSourceName');
    localDatabase = registerOutput<String>('localDatabase');
    localDbInstanceId = registerOutput<String>('localDbInstanceId');
    managerUserName = registerOutput<String>('managerUserName');
    managerUserPassword = registerOutput<String>('managerUserPassword');
    remoteAdbDataSourceId = registerOutput<int>('remoteAdbDataSourceId');
    remoteDatabase = registerOutput<String>('remoteDatabase');
    remoteDbInstanceId = registerOutput<String>('remoteDbInstanceId');
    status = registerOutput<String>('status');
    userName = registerOutput<String>('userName');
    userPassword = registerOutput<String>('userPassword');
  }
}
