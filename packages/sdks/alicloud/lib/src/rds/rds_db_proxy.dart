import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_proxy_args.dart';
import 'rds_db_proxy_state.dart';

/// Information about RDS database exclusive agent and its usage, see [What is RDS DB Proxy](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-modifydbproxy).
///
/// &gt; **NOTE:** Available since v1.193.0.
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
/// const name = config.get("name") || "tf-example";
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
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "5.7",
///     instanceType: "rds.mysql.c1.large",
///     instanceStorage: 20,
///     instanceChargeType: "Postpaid",
///     instanceName: name,
///     vswitchId: defaultSwitch.id,
///     dbInstanceStorageType: "local_ssd",
/// });
/// const defaultReadOnlyInstance = new alicloud.rds.ReadOnlyInstance("default", {
///     zoneId: defaultInstance.zoneId,
///     masterDbInstanceId: defaultInstance.id,
///     engineVersion: defaultInstance.engineVersion,
///     instanceStorage: defaultInstance.instanceStorage,
///     instanceType: defaultInstance.instanceType,
///     instanceName: `${name}readonly`,
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultRdsDbProxy = new alicloud.rds.RdsDbProxy("default", {
///     instanceId: defaultInstance.id,
///     instanceNetworkType: "VPC",
///     vpcId: defaultInstance.vpcId,
///     vswitchId: defaultInstance.vswitchId,
///     dbProxyInstanceNum: 2,
///     dbProxyConnectionPrefix: "example",
///     dbProxyConnectStringPort: 3306,
///     dbProxyEndpointReadWriteMode: "ReadWrite",
///     readOnlyInstanceMaxDelayTime: 90,
///     dbProxyFeatures: "TransactionReadSqlRouteOptimizeStatus:1;ConnectionPersist:1;ReadWriteSpliting:1",
///     readOnlyInstanceDistributionType: "Custom",
///     readOnlyInstanceWeights: [
///         {
///             instanceId: defaultInstance.id,
///             weight: "100",
///         },
///         {
///             instanceId: defaultReadOnlyInstance.id,
///             weight: "500",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
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
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="5.7",
///     instance_type="rds.mysql.c1.large",
///     instance_storage=20,
///     instance_charge_type="Postpaid",
///     instance_name=name,
///     vswitch_id=default_switch.id,
///     db_instance_storage_type="local_ssd")
/// default_read_only_instance = alicloud.rds.ReadOnlyInstance("default",
///     zone_id=default_instance.zone_id,
///     master_db_instance_id=default_instance.id,
///     engine_version=default_instance.engine_version,
///     instance_storage=default_instance.instance_storage,
///     instance_type=default_instance.instance_type,
///     instance_name=f"{name}readonly",
///     vswitch_id=default_switch.id)
/// default_rds_db_proxy = alicloud.rds.RdsDbProxy("default",
///     instance_id=default_instance.id,
///     instance_network_type="VPC",
///     vpc_id=default_instance.vpc_id,
///     vswitch_id=default_instance.vswitch_id,
///     db_proxy_instance_num=2,
///     db_proxy_connection_prefix="example",
///     db_proxy_connect_string_port=3306,
///     db_proxy_endpoint_read_write_mode="ReadWrite",
///     read_only_instance_max_delay_time=90,
///     db_proxy_features="TransactionReadSqlRouteOptimizeStatus:1;ConnectionPersist:1;ReadWriteSpliting:1",
///     read_only_instance_distribution_type="Custom",
///     read_only_instance_weights=[
///         {
///             "instance_id": default_instance.id,
///             "weight": "100",
///         },
///         {
///             "instance_id": default_read_only_instance.id,
///             "weight": "500",
///         },
///     ])
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
///     var name = config.Get("name") ?? "tf-example";
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
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.7",
///         InstanceType = "rds.mysql.c1.large",
///         InstanceStorage = 20,
///         InstanceChargeType = "Postpaid",
///         InstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         DbInstanceStorageType = "local_ssd",
///     });
///
///     var defaultReadOnlyInstance = new AliCloud.Rds.ReadOnlyInstance("default", new()
///     {
///         ZoneId = defaultInstance.ZoneId,
///         MasterDbInstanceId = defaultInstance.Id,
///         EngineVersion = defaultInstance.EngineVersion,
///         InstanceStorage = defaultInstance.InstanceStorage,
///         InstanceType = defaultInstance.InstanceType,
///         InstanceName = $"{name}readonly",
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultRdsDbProxy = new AliCloud.Rds.RdsDbProxy("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         InstanceNetworkType = "VPC",
///         VpcId = defaultInstance.VpcId,
///         VswitchId = defaultInstance.VswitchId,
///         DbProxyInstanceNum = 2,
///         DbProxyConnectionPrefix = "example",
///         DbProxyConnectStringPort = 3306,
///         DbProxyEndpointReadWriteMode = "ReadWrite",
///         ReadOnlyInstanceMaxDelayTime = 90,
///         DbProxyFeatures = "TransactionReadSqlRouteOptimizeStatus:1;ConnectionPersist:1;ReadWriteSpliting:1",
///         ReadOnlyInstanceDistributionType = "Custom",
///         ReadOnlyInstanceWeights = new[]
///         {
///             new AliCloud.Rds.Inputs.RdsDbProxyReadOnlyInstanceWeightArgs
///             {
///                 InstanceId = defaultInstance.Id,
///                 Weight = "100",
///             },
///             new AliCloud.Rds.Inputs.RdsDbProxyReadOnlyInstanceWeightArgs
///             {
///                 InstanceId = defaultReadOnlyInstance.Id,
///                 Weight = "500",
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
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
/// 		_, err = ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("5.7"),
/// 			InstanceType:          pulumi.String("rds.mysql.c1.large"),
/// 			InstanceStorage:       pulumi.Int(20),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			InstanceName:          pulumi.String(name),
/// 			VswitchId:             defaultSwitch.ID(),
/// 			DbInstanceStorageType: pulumi.String("local_ssd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultReadOnlyInstance, err := rds.NewReadOnlyInstance(ctx, "default", &rds.ReadOnlyInstanceArgs{
/// 			ZoneId:             defaultInstance.ZoneId,
/// 			MasterDbInstanceId: defaultInstance.ID(),
/// 			EngineVersion:      defaultInstance.EngineVersion,
/// 			InstanceStorage:    defaultInstance.InstanceStorage,
/// 			InstanceType:       defaultInstance.InstanceType,
/// 			InstanceName:       pulumi.Sprintf("%vreadonly", name),
/// 			VswitchId:          defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewRdsDbProxy(ctx, "default", &rds.RdsDbProxyArgs{
/// 			InstanceId:                       defaultInstance.ID(),
/// 			InstanceNetworkType:              pulumi.String("VPC"),
/// 			VpcId:                            defaultInstance.VpcId,
/// 			VswitchId:                        defaultInstance.VswitchId,
/// 			DbProxyInstanceNum:               pulumi.Int(2),
/// 			DbProxyConnectionPrefix:          pulumi.String("example"),
/// 			DbProxyConnectStringPort:         pulumi.Int(3306),
/// 			DbProxyEndpointReadWriteMode:     pulumi.String("ReadWrite"),
/// 			ReadOnlyInstanceMaxDelayTime:     pulumi.Int(90),
/// 			DbProxyFeatures:                  pulumi.String("TransactionReadSqlRouteOptimizeStatus:1;ConnectionPersist:1;ReadWriteSpliting:1"),
/// 			ReadOnlyInstanceDistributionType: pulumi.String("Custom"),
/// 			ReadOnlyInstanceWeights: rds.RdsDbProxyReadOnlyInstanceWeightArray{
/// 				&rds.RdsDbProxyReadOnlyInstanceWeightArgs{
/// 					InstanceId: defaultInstance.ID(),
/// 					Weight:     pulumi.String("100"),
/// 				},
/// 				&rds.RdsDbProxyReadOnlyInstanceWeightArgs{
/// 					InstanceId: defaultReadOnlyInstance.ID(),
/// 					Weight:     pulumi.String("500"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.ReadOnlyInstance;
/// import com.pulumi.alicloud.rds.ReadOnlyInstanceArgs;
/// import com.pulumi.alicloud.rds.RdsDbProxy;
/// import com.pulumi.alicloud.rds.RdsDbProxyArgs;
/// import com.pulumi.alicloud.rds.inputs.RdsDbProxyReadOnlyInstanceWeightArgs;
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
///         final var name = config.get("name").orElse("tf-example");
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
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.7")
///             .instanceType("rds.mysql.c1.large")
///             .instanceStorage(20)
///             .instanceChargeType("Postpaid")
///             .instanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .dbInstanceStorageType("local_ssd")
///             .build());
///
///         var defaultReadOnlyInstance = new ReadOnlyInstance("defaultReadOnlyInstance", ReadOnlyInstanceArgs.builder()
///             .zoneId(defaultInstance.zoneId())
///             .masterDbInstanceId(defaultInstance.id())
///             .engineVersion(defaultInstance.engineVersion())
///             .instanceStorage(defaultInstance.instanceStorage())
///             .instanceType(defaultInstance.instanceType())
///             .instanceName(String.format("%sreadonly", name))
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultRdsDbProxy = new RdsDbProxy("defaultRdsDbProxy", RdsDbProxyArgs.builder()
///             .instanceId(defaultInstance.id())
///             .instanceNetworkType("VPC")
///             .vpcId(defaultInstance.vpcId())
///             .vswitchId(defaultInstance.vswitchId())
///             .dbProxyInstanceNum(2)
///             .dbProxyConnectionPrefix("example")
///             .dbProxyConnectStringPort(3306)
///             .dbProxyEndpointReadWriteMode("ReadWrite")
///             .readOnlyInstanceMaxDelayTime(90)
///             .dbProxyFeatures("TransactionReadSqlRouteOptimizeStatus:1;ConnectionPersist:1;ReadWriteSpliting:1")
///             .readOnlyInstanceDistributionType("Custom")
///             .readOnlyInstanceWeights(
///                 RdsDbProxyReadOnlyInstanceWeightArgs.builder()
///                     .instanceId(defaultInstance.id())
///                     .weight("100")
///                     .build(),
///                 RdsDbProxyReadOnlyInstanceWeightArgs.builder()
///                     .instanceId(defaultReadOnlyInstance.id())
///                     .weight("500")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '5.7'
///       instanceType: rds.mysql.c1.large
///       instanceStorage: '20'
///       instanceChargeType: Postpaid
///       instanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       dbInstanceStorageType: local_ssd
///   defaultReadOnlyInstance:
///     type: alicloud:rds:ReadOnlyInstance
///     name: default
///     properties:
///       zoneId: ${defaultInstance.zoneId}
///       masterDbInstanceId: ${defaultInstance.id}
///       engineVersion: ${defaultInstance.engineVersion}
///       instanceStorage: ${defaultInstance.instanceStorage}
///       instanceType: ${defaultInstance.instanceType}
///       instanceName: ${name}readonly
///       vswitchId: ${defaultSwitch.id}
///   defaultRdsDbProxy:
///     type: alicloud:rds:RdsDbProxy
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       instanceNetworkType: VPC
///       vpcId: ${defaultInstance.vpcId}
///       vswitchId: ${defaultInstance.vswitchId}
///       dbProxyInstanceNum: 2
///       dbProxyConnectionPrefix: example
///       dbProxyConnectStringPort: 3306
///       dbProxyEndpointReadWriteMode: ReadWrite
///       readOnlyInstanceMaxDelayTime: 90
///       dbProxyFeatures: TransactionReadSqlRouteOptimizeStatus:1;ConnectionPersist:1;ReadWriteSpliting:1
///       readOnlyInstanceDistributionType: Custom
///       readOnlyInstanceWeights:
///         - instanceId: ${defaultInstance.id}
///           weight: '100'
///         - instanceId: ${defaultReadOnlyInstance.id}
///           weight: '500'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '5.6'
/// ```
///
///
/// &gt; **NOTE:** Resource `alicloud.rds.RdsDbProxy` should be created after `alicloud.rds.ReadOnlyInstance`, so the `depends_on` statement is necessary.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS database proxy feature can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsDbProxy:RdsDbProxy example abc12345678
/// ```
class RdsDbProxy extends pulumi.CustomResource {
  /// The port number that is associated with the proxy endpoint.
  late final pulumi.Output<int> dbProxyConnectStringPort;

  /// The new prefix of the proxy endpoint. Enter a prefix.
  late final pulumi.Output<String> dbProxyConnectionPrefix;

  /// Connection instance string.
  late final pulumi.Output<String> dbProxyConnectionString;

  /// Remarks of agent terminal.
  late final pulumi.Output<String> dbProxyEndpointAliases;

  /// Proxy connection address ID.
  late final pulumi.Output<String> dbProxyEndpointId;

  /// The read and write attributes of the proxy terminal. Valid values:
  /// - ReadWrite: The proxy terminal connects to the primary instance and can receive both read and write requests.
  /// - ReadOnly: The proxy terminal does not connect to the primary instance and can receive only read requests. This is the default value.
  ///
  /// &gt; **NOTE:** Note This setting causes your instance to restart. Proceed with caution.
  late final pulumi.Output<String> dbProxyEndpointReadWriteMode;

  /// The features that you want to enable for the proxy endpoint. If you specify more than one feature, separate the features with semicolons (;). Format: Feature 1:Status;Feature 2:Status;.... Do not add a semicolon (;) at the end of the last value. Valid feature values:
  /// - ReadWriteSpliting: read/write splitting.
  /// - ConnectionPersist: connection pooling.
  /// - TransactionReadSqlRouteOptimizeStatus: transaction splitting.
  /// Valid status values:
  /// - 1: enabled.
  /// - 0: disabled.
  ///
  /// &gt; **NOTE:** Note You must specify this parameter only when the read/write splitting feature is enabled.
  late final pulumi.Output<String> dbProxyFeatures;

  /// The number of proxy instances that are enabled. Valid values: 1 to 60.
  late final pulumi.Output<int> dbProxyInstanceNum;

  /// The database proxy type. Valid values:
  /// - common: universal proxy.
  /// - exclusive: Exclusive proxy (default).
  late final pulumi.Output<String> dbProxyInstanceType;

  /// The SSL configuration setting that you want to apply on the instance. Valid values:
  /// - Close: disables SSL encryption.
  /// - Open: enables SSL encryption or modifies the endpoint that requires SSL encryption.
  /// - Update: updates the validity period of the SSL certificate.
  late final pulumi.Output<String> dbProxySslEnabled;

  /// The point in time at which you want to apply the new database proxy settings. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  late final pulumi.Output<String> effectiveSpecificTime;

  /// When modifying the number of proxy instances,The time when you want to apply the new database proxy settings.Valid values:
  /// - Immediate: ApsaraDB RDS immediately applies the new settings.
  /// - MaintainTime: ApsaraDB RDS applies the new settings during the maintenance window that you specified. For more information, see Modify the maintenance window.
  /// - SpecificTime: ApsaraDB RDS applies the new settings at a specified point in time.
  ///
  /// &gt; **NOTE:** Note If you set the EffectiveTime parameter to SpecificTime, you must specify the EffectiveSpecificTime parameter.
  late final pulumi.Output<String> effectiveTime;

  /// The Id of instance that can run database.
  late final pulumi.Output<String> instanceId;

  /// The network type of the instance. Set the value to VPC.
  late final pulumi.Output<String> instanceNetworkType;

  /// Network type of proxy connection address.
  late final pulumi.Output<String> netType;

  /// The policy that is used to allocate read weights. Valid values:
  /// - Standard: ApsaraDB RDS automatically allocates read weights to the instance and its read-only instances based on the specifications of the instances.
  /// - Custom: You must manually allocate read weights to the instance and its read-only instances.
  ///
  /// &gt; **NOTE:** Note If you set the ReadOnlyInstanceDistributionType parameter to Custom, you must specify the ReadOnlyInstanceWeight parameter.
  late final pulumi.Output<String> readOnlyInstanceDistributionType;

  /// The maximum latency threshold that is allowed for read/write splitting. If the latency on a read-only instance exceeds the threshold that you specified, ApsaraDB RDS no longer forwards read requests to the read-only instance. If you do not specify this parameter, the default value of this parameter is retained. Unit: seconds. Valid values: 0 to 3600.
  ///
  /// &gt; **NOTE:** Note If the instance runs PostgreSQL, you can enable only the read/write splitting feature, which is specified by ReadWriteSpliting.
  late final pulumi.Output<int> readOnlyInstanceMaxDelayTime;

  /// A list of the read weights of the instance and its read-only instances.  It contains two sub-fields(instance_id and weight). Read weights increase in increments of 100, and the maximum read weight is 10000. See `read_only_instance_weight` below.
  late final pulumi.Output<List<Map<String, dynamic>>> readOnlyInstanceWeights;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The time when the certificate expires.
  late final pulumi.Output<String> sslExpiredTime;

  /// The point in time at which you want to upgrade the database proxy version of the instance. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  late final pulumi.Output<String?> switchTime;

  /// The time when you want to upgrade the database proxy version of the instance. Valid values:
  /// - MaintainTime: ApsaraDB RDS performs the upgrade during the maintenance window that you specified. This is the default value. For more information, see Modify the maintenance window.
  /// - Immediate: ApsaraDB RDS immediately performs the upgrade.
  /// - SpecificTime: ApsaraDB RDS performs the upgrade at a specified point in time.
  late final pulumi.Output<String?> upgradeTime;

  /// The ID of the virtual private cloud (VPC) to which the instance belongs.
  late final pulumi.Output<String> vpcId;

  /// The ID of the vSwitch that is associated with the specified VPC.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [RdsDbProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsDbProxy]. {@macro pulumi_rds_rds_db_proxy_rds_db_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsDbProxy(
    String name, {
    RdsDbProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rds/rdsDbProxy:RdsDbProxy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dbProxyConnectStringPort = registerOutput<int>('dbProxyConnectStringPort');
    dbProxyConnectionPrefix = registerOutput<String>('dbProxyConnectionPrefix');
    dbProxyConnectionString = registerOutput<String>('dbProxyConnectionString');
    dbProxyEndpointAliases = registerOutput<String>('dbProxyEndpointAliases');
    dbProxyEndpointId = registerOutput<String>('dbProxyEndpointId');
    dbProxyEndpointReadWriteMode = registerOutput<String>(
      'dbProxyEndpointReadWriteMode',
    );
    dbProxyFeatures = registerOutput<String>('dbProxyFeatures');
    dbProxyInstanceNum = registerOutput<int>('dbProxyInstanceNum');
    dbProxyInstanceType = registerOutput<String>('dbProxyInstanceType');
    dbProxySslEnabled = registerOutput<String>('dbProxySslEnabled');
    effectiveSpecificTime = registerOutput<String>('effectiveSpecificTime');
    effectiveTime = registerOutput<String>('effectiveTime');
    instanceId = registerOutput<String>('instanceId');
    instanceNetworkType = registerOutput<String>('instanceNetworkType');
    netType = registerOutput<String>('netType');
    readOnlyInstanceDistributionType = registerOutput<String>(
      'readOnlyInstanceDistributionType',
    );
    readOnlyInstanceMaxDelayTime = registerOutput<int>(
      'readOnlyInstanceMaxDelayTime',
    );
    readOnlyInstanceWeights = registerOutput<List<Map<String, dynamic>>>(
      'readOnlyInstanceWeights',
    );
    resourceGroupId = registerOutput<String>('resourceGroupId');
    sslExpiredTime = registerOutput<String>('sslExpiredTime');
    switchTime = registerOutput<String?>('switchTime');
    upgradeTime = registerOutput<String?>('upgradeTime');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [RdsDbProxy] resource's state with the given [name] and [id].
  static RdsDbProxy get(
    String name,
    pulumi.Input<String> id, {
    RdsDbProxyState? state,
  }) {
    return RdsDbProxy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RdsDbProxy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rds/rdsDbProxy:RdsDbProxy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dbProxyConnectStringPort = registerOutput<int>('dbProxyConnectStringPort');
    dbProxyConnectionPrefix = registerOutput<String>('dbProxyConnectionPrefix');
    dbProxyConnectionString = registerOutput<String>('dbProxyConnectionString');
    dbProxyEndpointAliases = registerOutput<String>('dbProxyEndpointAliases');
    dbProxyEndpointId = registerOutput<String>('dbProxyEndpointId');
    dbProxyEndpointReadWriteMode = registerOutput<String>(
      'dbProxyEndpointReadWriteMode',
    );
    dbProxyFeatures = registerOutput<String>('dbProxyFeatures');
    dbProxyInstanceNum = registerOutput<int>('dbProxyInstanceNum');
    dbProxyInstanceType = registerOutput<String>('dbProxyInstanceType');
    dbProxySslEnabled = registerOutput<String>('dbProxySslEnabled');
    effectiveSpecificTime = registerOutput<String>('effectiveSpecificTime');
    effectiveTime = registerOutput<String>('effectiveTime');
    instanceId = registerOutput<String>('instanceId');
    instanceNetworkType = registerOutput<String>('instanceNetworkType');
    netType = registerOutput<String>('netType');
    readOnlyInstanceDistributionType = registerOutput<String>(
      'readOnlyInstanceDistributionType',
    );
    readOnlyInstanceMaxDelayTime = registerOutput<int>(
      'readOnlyInstanceMaxDelayTime',
    );
    readOnlyInstanceWeights = registerOutput<List<Map<String, dynamic>>>(
      'readOnlyInstanceWeights',
    );
    resourceGroupId = registerOutput<String>('resourceGroupId');
    sslExpiredTime = registerOutput<String>('sslExpiredTime');
    switchTime = registerOutput<String?>('switchTime');
    upgradeTime = registerOutput<String?>('upgradeTime');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
