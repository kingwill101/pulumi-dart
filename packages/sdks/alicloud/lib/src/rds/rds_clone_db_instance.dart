import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_clone_db_instance_args.dart';
import 'rds_clone_db_instance_parameter.dart';
import 'rds_clone_db_instance_pg_hba_conf.dart';
import 'rds_clone_db_instance_serverless_config.dart';
import 'rds_clone_db_instance_state.dart';

/// Provides an RDS Clone DB Instance resource.
///
/// For information about RDS Clone DB Instance and how to use it, see [What is ApsaraDB for RDS](https://www.alibabacloud.com/help/en/rds/product-overview/what-is-apsaradb-rds).
///
/// > **NOTE:** Available since v1.149.0.
///
/// ## Example Usage
///
/// ### Create an RDS MySQL clone instance
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
///     instanceType: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     instanceChargeType: "Postpaid",
///     instanceName: "terraform-example",
///     vswitchId: exampleSwitch.id,
///     monitoringPeriod: 60,
/// });
/// const exampleRdsBackup = new alicloud.rds.RdsBackup("example", {
///     dbInstanceId: exampleInstance.id,
///     removeFromState: true,
/// });
/// const exampleRdsCloneDbInstance = new alicloud.rds.RdsCloneDbInstance("example", {
///     sourceDbInstanceId: exampleInstance.id,
///     dbInstanceStorageType: "cloud_essd",
///     paymentType: "PayAsYouGo",
///     backupId: exampleRdsBackup.backupId,
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
///     instance_type=example_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=example_get_instance_classes.instance_classes[0].storage_range.min,
///     instance_charge_type="Postpaid",
///     instance_name="terraform-example",
///     vswitch_id=example_switch.id,
///     monitoring_period=60)
/// example_rds_backup = alicloud.rds.RdsBackup("example",
///     db_instance_id=example_instance.id,
///     remove_from_state=True)
/// example_rds_clone_db_instance = alicloud.rds.RdsCloneDbInstance("example",
///     source_db_instance_id=example_instance.id,
///     db_instance_storage_type="cloud_essd",
///     payment_type="PayAsYouGo",
///     backup_id=example_rds_backup.backup_id)
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
///         InstanceType = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         InstanceChargeType = "Postpaid",
///         InstanceName = "terraform-example",
///         VswitchId = exampleSwitch.Id,
///         MonitoringPeriod = 60,
///     });
///
///     var exampleRdsBackup = new AliCloud.Rds.RdsBackup("example", new()
///     {
///         DbInstanceId = exampleInstance.Id,
///         RemoveFromState = true,
///     });
///
///     var exampleRdsCloneDbInstance = new AliCloud.Rds.RdsCloneDbInstance("example", new()
///     {
///         SourceDbInstanceId = exampleInstance.Id,
///         DbInstanceStorageType = "cloud_essd",
///         PaymentType = "PayAsYouGo",
///         BackupId = exampleRdsBackup.BackupId,
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
/// 			Engine:             pulumi.String("PostgreSQL"),
/// 			EngineVersion:      pulumi.String("13.0"),
/// 			InstanceType:       pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:    pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			InstanceChargeType: pulumi.String("Postpaid"),
/// 			InstanceName:       pulumi.String("terraform-example"),
/// 			VswitchId:          exampleSwitch.ID(),
/// 			MonitoringPeriod:   pulumi.Int(60),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRdsBackup, err := rds.NewRdsBackup(ctx, "example", &rds.RdsBackupArgs{
/// 			DbInstanceId:    exampleInstance.ID(),
/// 			RemoveFromState: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewRdsCloneDbInstance(ctx, "example", &rds.RdsCloneDbInstanceArgs{
/// 			SourceDbInstanceId:    exampleInstance.ID(),
/// 			DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			BackupId:              exampleRdsBackup.BackupId,
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.RdsBackup;
/// import com.pulumi.alicloud.rds.RdsBackupArgs;
/// import com.pulumi.alicloud.rds.RdsCloneDbInstance;
/// import com.pulumi.alicloud.rds.RdsCloneDbInstanceArgs;
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
///             .instanceType(exampleGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(exampleGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .instanceChargeType("Postpaid")
///             .instanceName("terraform-example")
///             .vswitchId(exampleSwitch.id())
///             .monitoringPeriod(60)
///             .build());
///
///         var exampleRdsBackup = new RdsBackup("exampleRdsBackup", RdsBackupArgs.builder()
///             .dbInstanceId(exampleInstance.id())
///             .removeFromState(true)
///             .build());
///
///         var exampleRdsCloneDbInstance = new RdsCloneDbInstance("exampleRdsCloneDbInstance", RdsCloneDbInstanceArgs.builder()
///             .sourceDbInstanceId(exampleInstance.id())
///             .dbInstanceStorageType("cloud_essd")
///             .paymentType("PayAsYouGo")
///             .backupId(exampleRdsBackup.backupId())
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
///       instanceType: ${exampleGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${exampleGetInstanceClasses.instanceClasses[0].storageRange.min}
///       instanceChargeType: Postpaid
///       instanceName: terraform-example
///       vswitchId: ${exampleSwitch.id}
///       monitoringPeriod: '60'
///   exampleRdsBackup:
///     type: alicloud:rds:RdsBackup
///     name: example
///     properties:
///       dbInstanceId: ${exampleInstance.id}
///       removeFromState: 'true'
///   exampleRdsCloneDbInstance:
///     type: alicloud:rds:RdsCloneDbInstance
///     name: example
///     properties:
///       sourceDbInstanceId: ${exampleInstance.id}
///       dbInstanceStorageType: cloud_essd
///       paymentType: PayAsYouGo
///       backupId: ${exampleRdsBackup.backupId}
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Clone DB Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsCloneDbInstance:RdsCloneDbInstance example <id>
/// ```
class RdsCloneDbInstance extends pulumi.CustomResource {
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. This parameter indicates the authentication method. It is allowed only when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  late final pulumi.Output<String> acl;
  /// How to upgrade the minor version of the instance. Valid values:
  /// * **Auto**: automatically upgrade the minor version.
  /// * **Manual**: It is not automatically upgraded. It is only mandatory when the current version is offline.
  late final pulumi.Output<String> autoUpgradeMinorVersion;
  /// The ID of the data backup file you want to use. You can call the DescribeBackups operation to query the most recent data backup file list.
  ///
  /// > **NOTE:** You must specify at least one of the BackupId and RestoreTime parameters. When `payment_type="Serverless"` and when modifying, do not perform `instance_storage` check. Otherwise, check.
  late final pulumi.Output<String?> backupId;
  /// The type of backup that is used to restore the data of the original instance. Valid values:
  /// * **FullBackup**: full backup
  /// * **IncrementalBackup**: incremental backup
  late final pulumi.Output<String?> backupType;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the certificate type. When the value of ssl_action is Open, the default value of this parameter is aliyun. Value range:
  /// * **aliyun**: using cloud certificates
  /// * **custom**: use a custom certificate. Valid values: `aliyun`, `custom`.
  late final pulumi.Output<String> caType;
  /// Instance series. Valid values:
  /// * **Basic**: Basic Edition
  /// * **HighAvailability**: High availability
  /// * **AlwaysOn**: Cluster Edition
  /// * **Finance**: Three-node Enterprise Edition.
  /// * **serverless_basic**: Serverless Basic Edition. (Available since v1.200.0)
  /// * **serverless_standard**: MySQL Serverless High Availability Edition. (Available since v1.207.0)
  /// * **serverless_ha**: SQLServer Serverless High Availability Edition. (Available since v1.207.0)
  /// * **cluster**: MySQL Cluster Edition. (Available since v1.207.0)
  late final pulumi.Output<String> category;
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
  /// * **local_ssd**: local SSDs
  /// * **cloud_ssd**: standard SSDs
  /// * **cloud_essd**: enhanced SSDs (ESSDs) of performance level 1 (PL1)
  /// * **cloud_essd2**: ESSDs of PL2
  /// * **cloud_essd3**: ESSDs of PL3
  /// * **general_essd**: general ESSDS Available since v1.258.0
  late final pulumi.Output<String> dbInstanceStorageType;
  /// The name of the database for which you want to enable TDE. Up to 50 names can be entered in a single request. If you specify multiple names, separate these names with commas (,).
  ///
  /// > **NOTE:** This parameter is available and must be specified only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  late final pulumi.Output<String?> dbName;
  /// The names of the databases that you want to create on the new instance.
  late final pulumi.Output<String?> dbNames;
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
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  late final pulumi.Output<String> engine;
  /// Database version. Value:
  /// * MySQL:**5.5/5.6/5.7/8.0**
  /// * SQL Server:**2008r2/08r2_ent_ha/2012/2012_ent_ha/2012_std_ha/2012_web/2014_std_ha/2016_ent_ha/2016_std_ha/2016_web/2017_std_ha/2017_ent/2019_std_ha/2019_ent**
  /// * PostgreSQL:**9.4/10.0/11.0/12.0/13.0**
  /// * MariaDB:**10.3**.
  late final pulumi.Output<String> engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  late final pulumi.Output<bool?> forceRestart;
  /// The high availability mode. Valid values:
  /// * **RPO**: Data persistence is preferred. The instance preferentially ensures data reliability to minimize data loss. Use this mode if you have higher requirements on data consistency.
  /// * **RTO**: Instance availability is preferred. The instance restores services as soon as possible to ensure availability. Use this mode if you have higher requirements on service availability.
  late final pulumi.Output<String> haMode;
  /// The network type of the instance. Valid values:
  /// * **Classic**: Classic Network
  /// * **VPC**: VPC.
  late final pulumi.Output<String> instanceNetworkType;
  /// The maintainable time period of the instance. Format: <I> HH:mm</I> Z-<I> HH:mm</I> Z(UTC time).
  late final pulumi.Output<String> maintainTime;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm).See `parameters` below.
  late final pulumi.Output<List<RdsCloneDbInstanceParameter>> parameters;
  /// The password of the certificate.
  ///
  /// > **NOTE:** This parameter is available only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  late final pulumi.Output<String?> password;
  /// The billing method of the new instance. Valid values: `PayAsYouGo` and `Subscription` and `Serverless`.
  late final pulumi.Output<String> paymentType;
  /// The period. Valid values: `Month`, `Year`.
  ///
  /// > **NOTE:** If you set the payment_type parameter to Subscription, you must specify the period parameter.
  late final pulumi.Output<String?> period;
  /// The details of the AD domain.See `pg_hba_conf` below.
  late final pulumi.Output<List<RdsCloneDbInstancePgHbaConf>> pgHbaConfs;
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
  /// Specifies whether to restore only the databases and tables that you specify. The value 1 specifies to restore only the specified databases and tables. If you do not want to restore only the specified databases or tables, you can choose not to specify this parameter.
  late final pulumi.Output<String?> restoreTable;
  /// The point in time to which you want to restore the data of the original instance. The point in time must fall within the specified log backup retention period. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  late final pulumi.Output<String?> restoreTime;
  /// The Alibaba Cloud Resource Name (ARN) of a RAM role. A RAM role is a virtual RAM identity that you can create within your Alibaba Cloud account.
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
  /// The settings of the serverless instance. This parameter is required when you create a serverless instance. This parameter takes effect only when you create an ApsaraDB RDS for MySQL instance.See `serverless_config` below.
  late final pulumi.Output<List<RdsCloneDbInstanceServerlessConfig>?> serverlessConfigs;
  /// The source biz.
  late final pulumi.Output<String?> sourceBiz;
  /// The source db instance id.
  late final pulumi.Output<String> sourceDbInstanceId;
  /// Enable or disable SSL. Valid values: `0` and `1`.
  late final pulumi.Output<int> sslEnabled;
  /// The time at which you want to apply the specification changes. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  late final pulumi.Output<String?> switchTime;
  /// [The data replication mode](https://www.alibabacloud.com/help/doc-detail/96055.htm). Valid values:
  /// * **Sync**: strong synchronization
  /// * **Semi-sync**: Semi-synchronous
  /// * **Async**: asynchronous
  ///
  /// > **NOTE:** SQL Server 2017 cluster version is currently not supported.
  late final pulumi.Output<String> syncMode;
  /// The information about the databases and tables that you want to restore. Format:
  /// [{"type":"db","name":"The original name of Database 1","newname":"The new name of Database 1","tables":[{"type":"table","name":"The original name of Table 1 in Database 1","newname":"The new name of Table 1 in Database 1"},{"type":"table","name":"The original name of Table 2 in Database 1","newname":"The new name of Table 2 in Database 1"}]},{"type":"db","name":"The original name of Database 2","newname":"The new name of Database 2","tables":[{"type":"table","name":"The original name of Table 1 in Database 2","newname":"The new name of Table 1 in Database 2"},{"type":"table","name":"The original name of Table 2 in Database 2","newname":"The new name of Table 2 in Database 2"}]}]
  late final pulumi.Output<String?> tableMeta;
  /// The availability check method of the instance. Valid values:
  /// - **SHORT**: Alibaba Cloud uses short-lived connections to check the availability of the instance.
  /// - **LONG**: Alibaba Cloud uses persistent connections to check the availability of the instance.
  late final pulumi.Output<String> tcpConnectionType;
  /// Specifies whether to enable TDE. Valid values:
  /// * Enabled
  /// * Disabled
  late final pulumi.Output<String?> tdeStatus;
  /// The subscription period of the new instance. This parameter takes effect only when you select the subscription billing method for the new instance. Valid values:
  /// * If you set the `Period` parameter to Year, the value of the UsedTime parameter ranges from 1 to 3.
  /// * If you set the `Period` parameter to Month, the value of the UsedTime parameter ranges from 1 to 9.
  ///
  /// > **NOTE:** If you set the payment_type parameter to Subscription, you must specify the used_time parameter.
  late final pulumi.Output<int?> usedTime;
  /// The ID of the VPC to which the new instance belongs.
  ///
  /// > **NOTE:** Make sure that the VPC resides in the specified region.
  late final pulumi.Output<String> vpcId;
  /// The ID of the vSwitch associated with the specified VPC. If there are multiple vswitches, separate them with commas. The first vswitch is a primary zone switch and the query only returns that vswitch. If there are multiple vswitches, do not perform `vswitch_id` check.
  ///
  /// > **NOTE:** Make sure that the vSwitch belongs to the specified VPC and region.
  late final pulumi.Output<String> vswitchId;
  /// The ID of the zone to which the new instance belongs. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query the most recent region list.
  late final pulumi.Output<String> zoneId;
  /// The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  late final pulumi.Output<String> zoneIdSlaveA;
  /// The region ID of the log instance if you create a log instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  ///
  /// > **NOTE:** The default value of this parameter is the ID of the zone to which the original instance belongs.
  late final pulumi.Output<String> zoneIdSlaveB;

  /// Creates a new [RdsCloneDbInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsCloneDbInstance]. {@macro pulumi_rds_rds_clone_db_instance_rds_clone_db_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsCloneDbInstance(
    String name, {
    RdsCloneDbInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsCloneDbInstance:RdsCloneDbInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.autoUpgradeMinorVersion = registerOutput<String>('autoUpgradeMinorVersion');
    this.backupId = registerOutput<String?>('backupId');
    this.backupType = registerOutput<String?>('backupType');
    this.caType = registerOutput<String>('caType');
    this.category = registerOutput<String>('category');
    this.certificate = registerOutput<String?>('certificate');
    this.clientCaCert = registerOutput<String?>('clientCaCert');
    this.clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    this.clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    this.clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    this.connectionString = registerOutput<String>('connectionString');
    this.connectionStringPrefix = registerOutput<String?>('connectionStringPrefix');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.dbInstanceDescription = registerOutput<String>('dbInstanceDescription');
    this.dbInstanceStorage = registerOutput<int>('dbInstanceStorage');
    this.dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    this.dbName = registerOutput<String?>('dbName');
    this.dbNames = registerOutput<String?>('dbNames');
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
    this.parameters = registerOutput<List<RdsCloneDbInstanceParameter>>('parameters');
    this.password = registerOutput<String?>('password');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<String?>('period');
    this.pgHbaConfs = registerOutput<List<RdsCloneDbInstancePgHbaConf>>('pgHbaConfs');
    this.port = registerOutput<String>('port');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.privateKey = registerOutput<String?>('privateKey');
    this.releasedKeepPolicy = registerOutput<String?>('releasedKeepPolicy');
    this.replicationAcl = registerOutput<String>('replicationAcl');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.restoreTable = registerOutput<String?>('restoreTable');
    this.restoreTime = registerOutput<String?>('restoreTime');
    this.roleArn = registerOutput<String?>('roleArn');
    this.securityIps = registerOutput<List<String>>('securityIps');
    this.serverCert = registerOutput<String>('serverCert');
    this.serverKey = registerOutput<String>('serverKey');
    this.serverlessConfigs = registerOutput<List<RdsCloneDbInstanceServerlessConfig>?>('serverlessConfigs');
    this.sourceBiz = registerOutput<String?>('sourceBiz');
    this.sourceDbInstanceId = registerOutput<String>('sourceDbInstanceId');
    this.sslEnabled = registerOutput<int>('sslEnabled');
    this.switchTime = registerOutput<String?>('switchTime');
    this.syncMode = registerOutput<String>('syncMode');
    this.tableMeta = registerOutput<String?>('tableMeta');
    this.tcpConnectionType = registerOutput<String>('tcpConnectionType');
    this.tdeStatus = registerOutput<String?>('tdeStatus');
    this.usedTime = registerOutput<int?>('usedTime');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
    this.zoneIdSlaveA = registerOutput<String>('zoneIdSlaveA');
    this.zoneIdSlaveB = registerOutput<String>('zoneIdSlaveB');
  }

  /// Gets an existing [RdsCloneDbInstance] resource's state with the given [name] and [id].
  static RdsCloneDbInstance get(
    String name,
    pulumi.Input<String> id, {
    RdsCloneDbInstanceState? state,
  }) {
    return RdsCloneDbInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RdsCloneDbInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsCloneDbInstance:RdsCloneDbInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.autoUpgradeMinorVersion = registerOutput<String>('autoUpgradeMinorVersion');
    this.backupId = registerOutput<String?>('backupId');
    this.backupType = registerOutput<String?>('backupType');
    this.caType = registerOutput<String>('caType');
    this.category = registerOutput<String>('category');
    this.certificate = registerOutput<String?>('certificate');
    this.clientCaCert = registerOutput<String?>('clientCaCert');
    this.clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    this.clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    this.clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    this.connectionString = registerOutput<String>('connectionString');
    this.connectionStringPrefix = registerOutput<String?>('connectionStringPrefix');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.dbInstanceDescription = registerOutput<String>('dbInstanceDescription');
    this.dbInstanceStorage = registerOutput<int>('dbInstanceStorage');
    this.dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    this.dbName = registerOutput<String?>('dbName');
    this.dbNames = registerOutput<String?>('dbNames');
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
    this.parameters = registerOutput<List<RdsCloneDbInstanceParameter>>('parameters');
    this.password = registerOutput<String?>('password');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<String?>('period');
    this.pgHbaConfs = registerOutput<List<RdsCloneDbInstancePgHbaConf>>('pgHbaConfs');
    this.port = registerOutput<String>('port');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.privateKey = registerOutput<String?>('privateKey');
    this.releasedKeepPolicy = registerOutput<String?>('releasedKeepPolicy');
    this.replicationAcl = registerOutput<String>('replicationAcl');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.restoreTable = registerOutput<String?>('restoreTable');
    this.restoreTime = registerOutput<String?>('restoreTime');
    this.roleArn = registerOutput<String?>('roleArn');
    this.securityIps = registerOutput<List<String>>('securityIps');
    this.serverCert = registerOutput<String>('serverCert');
    this.serverKey = registerOutput<String>('serverKey');
    this.serverlessConfigs = registerOutput<List<RdsCloneDbInstanceServerlessConfig>?>('serverlessConfigs');
    this.sourceBiz = registerOutput<String?>('sourceBiz');
    this.sourceDbInstanceId = registerOutput<String>('sourceDbInstanceId');
    this.sslEnabled = registerOutput<int>('sslEnabled');
    this.switchTime = registerOutput<String?>('switchTime');
    this.syncMode = registerOutput<String>('syncMode');
    this.tableMeta = registerOutput<String?>('tableMeta');
    this.tcpConnectionType = registerOutput<String>('tcpConnectionType');
    this.tdeStatus = registerOutput<String?>('tdeStatus');
    this.usedTime = registerOutput<int?>('usedTime');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
    this.zoneIdSlaveA = registerOutput<String>('zoneIdSlaveA');
    this.zoneIdSlaveB = registerOutput<String>('zoneIdSlaveB');
  }
}
