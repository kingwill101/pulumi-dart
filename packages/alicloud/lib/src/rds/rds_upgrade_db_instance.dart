import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_upgrade_db_instance_args.dart';
import 'rds_upgrade_db_instance_parameter.dart';
import 'rds_upgrade_db_instance_pg_hba_conf.dart';

/// Provides a RDS Upgrade DB Instance resource.
///
/// For information about RDS Upgrade DB Instance and how to use it, see [What is ApsaraDB for RDS](https://www.alibabacloud.com/help/en/doc-detail/26092.htm).
///
/// > **NOTE:** Available since v1.153.0.
///
/// ## Example Usage
///
/// ### Create a RDS PostgreSQL upgrade instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.rds.getZones({
///     engine: "PostgreSQL",
///     engineVersion: "13.0",
///     instanceChargeType: "PostPaid",
///     category: "HighAvailability",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// const exampleGetInstanceClasses = example.then(example => alicloud.rds.getInstanceClasses({
///     zoneId: example.zones?.[0]?.id,
///     engine: "PostgreSQL",
///     engineVersion: "13.0",
///     category: "HighAvailability",
///     dbInstanceStorageType: "cloud_essd",
///     instanceChargeType: "PostPaid",
/// }));
/// const exampleGetCrossRegions = alicloud.rds.getCrossRegions({});
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vpcId: exampleNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: example.then(example => example.zones?.[0]?.id),
///     vswitchName: "terraform-example",
/// });
/// const exampleInstance = new alicloud.rds.Instance("example", {
///     engine: "PostgreSQL",
///     engineVersion: "13.0",
///     dbInstanceStorageType: "cloud_essd",
///     instanceType: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     instanceChargeType: "Postpaid",
///     instanceName: "terraform-example",
///     vswitchId: exampleSwitch.id,
///     monitoringPeriod: 60,
/// });
/// const exampleRdsUpgradeDbInstance = new alicloud.rds.RdsUpgradeDbInstance("example", {
///     sourceDbInstanceId: exampleInstance.id,
///     targetMajorVersion: "14.0",
///     dbInstanceClass: exampleInstance.instanceType,
///     dbInstanceStorage: exampleInstance.instanceStorage,
///     dbInstanceStorageType: exampleInstance.dbInstanceStorageType,
///     instanceNetworkType: "VPC",
///     collectStatMode: "After",
///     switchOver: "false",
///     paymentType: "PayAsYouGo",
///     dbInstanceDescription: "terraform-example",
///     vswitchId: exampleSwitch.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.get_zones(engine="PostgreSQL",
///     engine_version="13.0",
///     instance_charge_type="PostPaid",
///     category="HighAvailability",
///     db_instance_storage_type="cloud_essd")
/// example_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=example.zones[0].id,
///     engine="PostgreSQL",
///     engine_version="13.0",
///     category="HighAvailability",
///     db_instance_storage_type="cloud_essd",
///     instance_charge_type="PostPaid")
/// example_get_cross_regions = alicloud.rds.get_cross_regions()
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vpc_id=example_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=example.zones[0].id,
///     vswitch_name="terraform-example")
/// example_instance = alicloud.rds.Instance("example",
///     engine="PostgreSQL",
///     engine_version="13.0",
///     db_instance_storage_type="cloud_essd",
///     instance_type=example_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=example_get_instance_classes.instance_classes[0].storage_range.min,
///     instance_charge_type="Postpaid",
///     instance_name="terraform-example",
///     vswitch_id=example_switch.id,
///     monitoring_period=60)
/// example_rds_upgrade_db_instance = alicloud.rds.RdsUpgradeDbInstance("example",
///     source_db_instance_id=example_instance.id,
///     target_major_version="14.0",
///     db_instance_class=example_instance.instance_type,
///     db_instance_storage=example_instance.instance_storage,
///     db_instance_storage_type=example_instance.db_instance_storage_type,
///     instance_network_type="VPC",
///     collect_stat_mode="After",
///     switch_over="false",
///     payment_type="PayAsYouGo",
///     db_instance_description="terraform-example",
///     vswitch_id=example_switch.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "PostgreSQL",
///         EngineVersion = "13.0",
///         InstanceChargeType = "PostPaid",
///         Category = "HighAvailability",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
///     var exampleGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Engine = "PostgreSQL",
///         EngineVersion = "13.0",
///         Category = "HighAvailability",
///         DbInstanceStorageType = "cloud_essd",
///         InstanceChargeType = "PostPaid",
///     });
///
///     var exampleGetCrossRegions = AliCloud.Rds.GetCrossRegions.Invoke();
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VpcId = exampleNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = "terraform-example",
///     });
///
///     var exampleInstance = new AliCloud.Rds.Instance("example", new()
///     {
///         Engine = "PostgreSQL",
///         EngineVersion = "13.0",
///         DbInstanceStorageType = "cloud_essd",
///         InstanceType = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         InstanceChargeType = "Postpaid",
///         InstanceName = "terraform-example",
///         VswitchId = exampleSwitch.Id,
///         MonitoringPeriod = 60,
///     });
///
///     var exampleRdsUpgradeDbInstance = new AliCloud.Rds.RdsUpgradeDbInstance("example", new()
///     {
///         SourceDbInstanceId = exampleInstance.Id,
///         TargetMajorVersion = "14.0",
///         DbInstanceClass = exampleInstance.InstanceType,
///         DbInstanceStorage = exampleInstance.InstanceStorage,
///         DbInstanceStorageType = exampleInstance.DbInstanceStorageType,
///         InstanceNetworkType = "VPC",
///         CollectStatMode = "After",
///         SwitchOver = "false",
///         PaymentType = "PayAsYouGo",
///         DbInstanceDescription = "terraform-example",
///         VswitchId = exampleSwitch.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("PostgreSQL"),
/// 			EngineVersion:         pulumi.StringRef("13.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(example.Zones[0].Id),
/// 			Engine:                pulumi.StringRef("PostgreSQL"),
/// 			EngineVersion:         pulumi.StringRef("13.0"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.GetCrossRegions(ctx, &rds.GetCrossRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VpcId:       exampleNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 			VswitchName: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("PostgreSQL"),
/// 			EngineVersion:         pulumi.String("13.0"),
/// 			DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 			InstanceType:          pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:       pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			InstanceName:          pulumi.String("terraform-example"),
/// 			VswitchId:             exampleSwitch.ID(),
/// 			MonitoringPeriod:      pulumi.Int(60),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewRdsUpgradeDbInstance(ctx, "example", &rds.RdsUpgradeDbInstanceArgs{
/// 			SourceDbInstanceId:    exampleInstance.ID(),
/// 			TargetMajorVersion:    pulumi.String("14.0"),
/// 			DbInstanceClass:       exampleInstance.InstanceType,
/// 			DbInstanceStorage:     exampleInstance.InstanceStorage,
/// 			DbInstanceStorageType: exampleInstance.DbInstanceStorageType,
/// 			InstanceNetworkType:   pulumi.String("VPC"),
/// 			CollectStatMode:       pulumi.String("After"),
/// 			SwitchOver:            pulumi.String("false"),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			DbInstanceDescription: pulumi.String("terraform-example"),
/// 			VswitchId:             exampleSwitch.ID(),
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
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
/// import com.pulumi.alicloud.rds.inputs.GetCrossRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.RdsUpgradeDbInstance;
/// import com.pulumi.alicloud.rds.RdsUpgradeDbInstanceArgs;
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
///         final var example = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("PostgreSQL")
///             .engineVersion("13.0")
///             .instanceChargeType("PostPaid")
///             .category("HighAvailability")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///         final var exampleGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(example.zones()[0].id())
///             .engine("PostgreSQL")
///             .engineVersion("13.0")
///             .category("HighAvailability")
///             .dbInstanceStorageType("cloud_essd")
///             .instanceChargeType("PostPaid")
///             .build());
///
///         final var exampleGetCrossRegions = RdsFunctions.getCrossRegions(GetCrossRegionsArgs.builder()
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vpcId(exampleNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(example.zones()[0].id())
///             .vswitchName("terraform-example")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .engine("PostgreSQL")
///             .engineVersion("13.0")
///             .dbInstanceStorageType("cloud_essd")
///             .instanceType(exampleGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(exampleGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .instanceChargeType("Postpaid")
///             .instanceName("terraform-example")
///             .vswitchId(exampleSwitch.id())
///             .monitoringPeriod(60)
///             .build());
///
///         var exampleRdsUpgradeDbInstance = new RdsUpgradeDbInstance("exampleRdsUpgradeDbInstance", RdsUpgradeDbInstanceArgs.builder()
///             .sourceDbInstanceId(exampleInstance.id())
///             .targetMajorVersion("14.0")
///             .dbInstanceClass(exampleInstance.instanceType())
///             .dbInstanceStorage(exampleInstance.instanceStorage())
///             .dbInstanceStorageType(exampleInstance.dbInstanceStorageType())
///             .instanceNetworkType("VPC")
///             .collectStatMode("After")
///             .switchOver("false")
///             .paymentType("PayAsYouGo")
///             .dbInstanceDescription("terraform-example")
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.16.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vpcId: ${exampleNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${example.zones[0].id}
///       vswitchName: terraform-example
///   exampleInstance:
///     type: alicloud:rds:Instance
///     name: example
///     properties:
///       engine: PostgreSQL
///       engineVersion: '13.0'
///       dbInstanceStorageType: cloud_essd
///       instanceType: ${exampleGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${exampleGetInstanceClasses.instanceClasses[0].storageRange.min}
///       instanceChargeType: Postpaid
///       instanceName: terraform-example
///       vswitchId: ${exampleSwitch.id}
///       monitoringPeriod: '60'
///   exampleRdsUpgradeDbInstance:
///     type: alicloud:rds:RdsUpgradeDbInstance
///     name: example
///     properties:
///       sourceDbInstanceId: ${exampleInstance.id}
///       targetMajorVersion: '14.0'
///       dbInstanceClass: ${exampleInstance.instanceType}
///       dbInstanceStorage: ${exampleInstance.instanceStorage}
///       dbInstanceStorageType: ${exampleInstance.dbInstanceStorageType}
///       instanceNetworkType: VPC
///       collectStatMode: After
///       switchOver: 'false'
///       paymentType: PayAsYouGo
///       dbInstanceDescription: terraform-example
///       vswitchId: ${exampleSwitch.id}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: PostgreSQL
///         engineVersion: '13.0'
///         instanceChargeType: PostPaid
///         category: HighAvailability
///         dbInstanceStorageType: cloud_essd
///   exampleGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${example.zones[0].id}
///         engine: PostgreSQL
///         engineVersion: '13.0'
///         category: HighAvailability
///         dbInstanceStorageType: cloud_essd
///         instanceChargeType: PostPaid
///   exampleGetCrossRegions:
///     fn::invoke:
///       function: alicloud:rds:getCrossRegions
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Upgrade DB Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsUpgradeDbInstance:RdsUpgradeDbInstance example <id>
/// ```
class RdsUpgradeDbInstance extends pulumi.CustomResource {
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. This parameter indicates the authentication method. It is allowed only when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  late final pulumi.Output<String> acl;
  /// How to upgrade the minor version of the instance. Valid values:
  /// * **Auto**: automatically upgrade the minor version.
  /// * **Manual**: It is not automatically upgraded. It is only mandatory when the current version is offline.
  late final pulumi.Output<String> autoUpgradeMinorVersion;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the certificate type. When the value of ssl_action is Open, the default value of this parameter is aliyun. Value range:
  /// * **aliyun**: using cloud certificates.
  /// * **custom**: use a custom certificate. Valid values: `aliyun`, `custom`.
  late final pulumi.Output<String> caType;
  /// The file that contains the certificate used for TDE.
  late final pulumi.Output<String?> certificate;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the public key of the client certification authority. If the value of client_ca_enabled is 1, this parameter must be configured.
  late final pulumi.Output<String?> clientCaCert;
  /// The client ca enabled.
  late final pulumi.Output<int?> clientCaEnabled;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version, which indicates that the client revokes the certificate file. If the value of client_crl_enabled is 1, this parameter must be configured.
  late final pulumi.Output<String?> clientCertRevocationList;
  /// The client crl enabled.
  late final pulumi.Output<int?> clientCrlEnabled;
  /// The time at which ApsaraDB RDS collects the statistics of the new instance.
  /// * **Before**: ApsaraDB RDS collects the statistics of the new instance before the switchover to ensure service stability. If the original instance contains a large amount of data, the upgrade may require a long period of time.
  /// * **After**: ApsaraDB RDS collects the statistics of the new instance after the switchover to accelerate the upgrade. If you access tables for which no statistics are generated, the query plans that you specify may be inaccurately executed. In addition, your database service may be unavailable during peak hours.
  ///
  /// > **NOTE** If you set the SwitchOver parameter to false, the value Before specifies that ApsaraDB RDS collects the statistics of the new instance before the new instance starts to process read and write requests, and the value After specifies that ApsaraDB RDS collects the statistics of the new instance after the new instance starts to process read and write requests.
  late final pulumi.Output<String> collectStatMode;
  /// The database connection address.
  late final pulumi.Output<String> connectionString;
  /// The connection string prefix.
  late final pulumi.Output<String?> connectionStringPrefix;
  /// The instance type of the new instance. For information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  late final pulumi.Output<String> dbInstanceClass;
  /// The db instance description.
  late final pulumi.Output<String> dbInstanceDescription;
  /// The storage capacity of the new instance. Unit: GB. The storage capacity increases in increments of 5 GB. For more information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  ///
  /// > **NOTE:** The default value of this parameter is the storage capacity of the original instance.
  late final pulumi.Output<int> dbInstanceStorage;
  /// The type of storage media that is used for the new instance. Valid values:
  /// * **local_ssd**: local SSDs.
  /// * **cloud_ssd**: standard SSDs.
  /// * **cloud_essd**: enhanced SSDs (ESSDs) of performance level 1 (PL1).
  /// * **cloud_essd2**: ESSDs of PL2.
  /// * **cloud_essd3**: ESSDs of PL3.
  late final pulumi.Output<String> dbInstanceStorageType;
  /// The name of the database for which you want to enable TDE. Up to 50 names can be entered in a single request. If you specify multiple names, separate these names with commas (,).
  ///
  /// > **NOTE:** This parameter is available and must be specified only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  late final pulumi.Output<String?> dbName;
  /// The ID of the dedicated cluster to which the new instance belongs. This parameter takes effect only when you create the new instance in a dedicated cluster.
  late final pulumi.Output<String?> dedicatedHostGroupId;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// > **NOTE:** `deletion_protection` is valid only when attribute `payment_type` is set to `PayAsYouGo`, supported engine type: **MySQL**, **PostgreSQL**, **MariaDB**, **MSSQL**.
  late final pulumi.Output<bool?> deletionProtection;
  /// The direction. Valid values: `Auto`, `Down`, `TempUpgrade`, `Up`.
  late final pulumi.Output<String?> direction;
  /// The effective time.
  late final pulumi.Output<String?> effectiveTime;
  /// The ID of the private key.
  ///
  /// > **NOTE:** This parameter is available only when the instance runs MySQL.
  late final pulumi.Output<String?> encryptionKey;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL.
  late final pulumi.Output<String> engine;
  /// Database version. Value:
  /// * MySQL: **5.5/5.6/5.7/8.0**.
  /// * SQL Server: **2008r2/08r2_ent_ha/2012/2012_ent_ha/2012_std_ha/2012_web/2014_std_ha/2016_ent_ha/2016_std_ha/2016_web/2017_std_ha/2017_ent/2019_std_ha/2019_ent**.
  /// * PostgreSQL: **9.4/10.0/11.0/12.0/13.0**.
  /// * MariaDB: **10.3**.
  late final pulumi.Output<String> engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  late final pulumi.Output<bool?> forceRestart;
  /// The high availability mode. Valid values:
  /// * **RPO**: Data persistence is preferred. The instance preferentially ensures data reliability to minimize data loss. Use this mode if you have higher requirements on data consistency.
  /// * **RTO**: Instance availability is preferred. The instance restores services as soon as possible to ensure availability. Use this mode if you have higher requirements on service availability.
  late final pulumi.Output<String> haMode;
  /// The network type of the instance. Valid values:
  /// * **Classic**: Classic Network.
  /// * **VPC**: VPC.
  late final pulumi.Output<String> instanceNetworkType;
  /// The maintainable time period of the instance. Format: <I> HH:mm</I> Z-<I> HH:mm</I> Z(UTC time).
  late final pulumi.Output<String> maintainTime;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm). See `parameters` below.
  late final pulumi.Output<List<RdsUpgradeDbInstanceParameter>> parameters;
  /// The password of the certificate.
  ///
  /// > **NOTE:** This parameter is available only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  late final pulumi.Output<String?> password;
  /// The billing method of the new instance. Valid values: `PayAsYouGo` and `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  late final pulumi.Output<List<RdsUpgradeDbInstancePgHbaConf>> pgHbaConfs;
  /// The port.
  late final pulumi.Output<String> port;
  /// The intranet IP address of the new instance must be within the specified vSwitch IP address range. By default, the system automatically allocates by using **VPCId** and **VSwitchId**.
  late final pulumi.Output<String> privateIpAddress;
  /// The file that contains the private key used for TDE.
  late final pulumi.Output<String?> privateKey;
  /// The released keep policy.
  late final pulumi.Output<String?> releasedKeepPolicy;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version, indicating the authentication method of the replication permission. It is only allowed when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  late final pulumi.Output<String> replicationAcl;
  /// The resource group id.
  late final pulumi.Output<String?> resourceGroupId;
  /// The Alibaba Cloud Resource Name (ARN) of a RAM role. A RAM role is a virtual RAM identity that you can create within your Alibaba Cloud account. For more information, see [RAM role overview](https://www.alibabacloud.com/help/en/ram/user-guide/ram-role-overview).
  ///
  /// > **NOTE:** This parameter is available only when the instance runs MySQL.
  late final pulumi.Output<String?> roleArn;
  /// The IP address whitelist of the instance. Separate multiple IP addresses with commas (,) and cannot be repeated. The following two formats are supported:
  /// * IP address form, for example: 10.23.12.24.
  /// * CIDR format, for example, 10.23.12.0/24 (no Inter-Domain Routing, 24 indicates the length of the prefix in the address, ranging from 1 to 32).
  ///
  /// > **NOTE:** each instance can add up to 1000 IP addresses or IP segments, that is, the total number of IP addresses or IP segments in all IP whitelist groups cannot exceed 1000. When there are more IP addresses, it is recommended to merge them into IP segments, for example, 10.23.12.0/24.
  late final pulumi.Output<List<String>> securityIps;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the content of the server certificate. If the CAType value is custom, this parameter must be configured.
  late final pulumi.Output<String> serverCert;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the private key of the server certificate. If the value of CAType is custom, this parameter must be configured.
  late final pulumi.Output<String> serverKey;
  /// The source biz.
  late final pulumi.Output<String?> sourceBiz;
  /// The source db instance id.
  late final pulumi.Output<String> sourceDbInstanceId;
  /// Enable or disable SSL. Valid values: `0` and `1`.
  late final pulumi.Output<int> sslEnabled;
  /// Specifies whether ApsaraDB RDS automatically switches your workloads over to the new instance after data is migrated to the new instance. Valid values:
  /// * **true**: ApsaraDB RDS automatically switches workloads over to the new instance. If you set this parameter to true, you must take note of the following information:
  /// * After the switchover is complete, you cannot roll your workloads back to the original instance. Proceed with caution.
  /// * During the switchover, the original instance processes only read requests. You must perform the switchover during off-peak hours.
  /// * If read-only instances are attached to the original instance, you can set this parameter only to false. In this case, the read-only instances that are attached to the original instance cannot be cloned. After the upgrade is complete, you must create read-only instances for the new instance.
  /// * **false**: ApsaraDB RDS does not automatically switch your workloads over to the new instance. Before you perform an upgrade, we recommend that you set this parameter to false to test whether the new major engine version is compatible with your workloads. If you set this parameter to false, you must take note of the following information:
  /// * The data migration does not interrupt your workloads on the original instance.
  /// * After data is migrated to the new instance, you must update the endpoint configuration on your application. This update requires you to replace the endpoint of the original instance with the endpoint of the new instance. For more information about how to view the endpoint of an instance, see [View and change the internal and public endpoints and port numbers of an ApsaraDB RDS for PostgreSQL instance](https://www.alibabacloud.com/help/doc-detail/96788.htm).
  late final pulumi.Output<String> switchOver;
  /// The time at which you want to apply the specification changes. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  late final pulumi.Output<String?> switchTime;
  /// The time at which ApsaraDB RDS switches your workloads over to the new instance. This parameter is used together with the SwitchOver parameter and takes effect only when you set the SwitchOver parameter to true. Valid values:
  /// * **Immediate**: After data is migrated to the new instance, ApsaraDB RDS immediately switches your workloads over to the new instance.
  /// * **MaintainTime**: After data is migrated to the new instance, ApsaraDB RDS switches your workloads over to the new instance during the maintenance window that you specify. You can call the [ModifyDBInstanceMaintainTime](https://www.alibabacloud.com/help/doc-detail/26249.htm) operation to change the maintenance window of an instance.
  late final pulumi.Output<String?> switchTimeMode;
  /// [The data replication mode](https://www.alibabacloud.com/help/doc-detail/96055.htm). Valid values:
  /// * **Sync**: strong synchronization.
  /// * **Semi-sync**: Semi-synchronous.
  /// * **Async**: asynchronous.
  ///
  /// > **NOTE:** SQL Server 2017 cluster version is currently not supported.
  late final pulumi.Output<String> syncMode;
  /// The major engine version of the new instance. The value of this parameter must be the major engine version on which an upgrade check is performed.
  ///
  /// > **NOTE** You can call the [UpgradeDBInstanceMajorVersionPrecheck](https://www.alibabacloud.com/help/doc-detail/330050.htm) operation to perform an upgrade check on a major engine version.
  late final pulumi.Output<String> targetMajorVersion;
  /// The availability check method of the instance. Valid values:
  /// - **SHORT**: Alibaba Cloud uses short-lived connections to check the availability of the instance.
  /// - **LONG**: Alibaba Cloud uses persistent connections to check the availability of the instance.
  late final pulumi.Output<String> tcpConnectionType;
  /// Specifies whether to enable TDE. Valid values: `Enabled` and `Disabled`.
  late final pulumi.Output<String?> tdeStatus;
  /// The ID of the VPC to which the new instance belongs.
  ///
  /// > **NOTE:** Make sure that the VPC resides in the specified region.
  late final pulumi.Output<String> vpcId;
  /// The ID of the vSwitch associated with the specified VPC.
  ///
  /// > **NOTE:** Make sure that the vSwitch belongs to the specified VPC and region.
  late final pulumi.Output<String> vswitchId;
  /// The ID of the zone to which the new instance belongs. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query the most recent region list.
  ///
  /// > **NOTE:** The default value of this parameter is the ID of the zone to which the original instance belongs.
  late final pulumi.Output<String> zoneId;
  /// The ID of the zone to which the secondary instance of the new instance belongs. You can specify this parameter only when the original instance runs RDS High-availability Edition. You can select a zone that belongs to the region where the original instance resides. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query zone IDs.
  late final pulumi.Output<String> zoneIdSlave1;

  /// Creates a new [RdsUpgradeDbInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsUpgradeDbInstance]. {@macro pulumi_rds_rds_upgrade_db_instance_rds_upgrade_db_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsUpgradeDbInstance(
    String name, {
    RdsUpgradeDbInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsUpgradeDbInstance:RdsUpgradeDbInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.autoUpgradeMinorVersion = registerOutput<String>('autoUpgradeMinorVersion');
    this.caType = registerOutput<String>('caType');
    this.certificate = registerOutput<String?>('certificate');
    this.clientCaCert = registerOutput<String?>('clientCaCert');
    this.clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    this.clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    this.clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    this.collectStatMode = registerOutput<String>('collectStatMode');
    this.connectionString = registerOutput<String>('connectionString');
    this.connectionStringPrefix = registerOutput<String?>('connectionStringPrefix');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.dbInstanceDescription = registerOutput<String>('dbInstanceDescription');
    this.dbInstanceStorage = registerOutput<int>('dbInstanceStorage');
    this.dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    this.dbName = registerOutput<String?>('dbName');
    this.dedicatedHostGroupId = registerOutput<String?>('dedicatedHostGroupId');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.direction = registerOutput<String?>('direction');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.encryptionKey = registerOutput<String?>('encryptionKey');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.forceRestart = registerOutput<bool?>('forceRestart');
    this.haMode = registerOutput<String>('haMode');
    this.instanceNetworkType = registerOutput<String>('instanceNetworkType');
    this.maintainTime = registerOutput<String>('maintainTime');
    this.parameters = registerOutput<List<RdsUpgradeDbInstanceParameter>>('parameters');
    this.password = registerOutput<String?>('password');
    this.paymentType = registerOutput<String>('paymentType');
    this.pgHbaConfs = registerOutput<List<RdsUpgradeDbInstancePgHbaConf>>('pgHbaConfs');
    this.port = registerOutput<String>('port');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.privateKey = registerOutput<String?>('privateKey');
    this.releasedKeepPolicy = registerOutput<String?>('releasedKeepPolicy');
    this.replicationAcl = registerOutput<String>('replicationAcl');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.roleArn = registerOutput<String?>('roleArn');
    this.securityIps = registerOutput<List<String>>('securityIps');
    this.serverCert = registerOutput<String>('serverCert');
    this.serverKey = registerOutput<String>('serverKey');
    this.sourceBiz = registerOutput<String?>('sourceBiz');
    this.sourceDbInstanceId = registerOutput<String>('sourceDbInstanceId');
    this.sslEnabled = registerOutput<int>('sslEnabled');
    this.switchOver = registerOutput<String>('switchOver');
    this.switchTime = registerOutput<String?>('switchTime');
    this.switchTimeMode = registerOutput<String?>('switchTimeMode');
    this.syncMode = registerOutput<String>('syncMode');
    this.targetMajorVersion = registerOutput<String>('targetMajorVersion');
    this.tcpConnectionType = registerOutput<String>('tcpConnectionType');
    this.tdeStatus = registerOutput<String?>('tdeStatus');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
    this.zoneIdSlave1 = registerOutput<String>('zoneIdSlave1');
  }
}
