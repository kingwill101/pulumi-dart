import 'package:pulumi/pulumi.dart' as pulumi;
import 'read_only_instance_args.dart';
import 'read_only_instance_state.dart';

/// Provides an RDS readonly instance resource, see [What is DB Readonly Instance](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-createreadonlydbinstance).
///
/// &gt; **NOTE:** Available since v1.52.1.
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
/// const example = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "5.6",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vpcId: exampleNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: example.then(example => example.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.rds.Instance("example", {
///     engine: "MySQL",
///     engineVersion: "5.6",
///     instanceType: "rds.mysql.t1.small",
///     instanceStorage: 20,
///     instanceChargeType: "Postpaid",
///     instanceName: name,
///     vswitchId: exampleSwitch.id,
///     securityIps: [
///         "10.168.1.12",
///         "100.69.7.112",
///     ],
/// });
/// const exampleReadOnlyInstance = new alicloud.rds.ReadOnlyInstance("example", {
///     zoneId: exampleInstance.zoneId,
///     masterDbInstanceId: exampleInstance.id,
///     engineVersion: exampleInstance.engineVersion,
///     instanceStorage: exampleInstance.instanceStorage,
///     instanceType: exampleInstance.instanceType,
///     instanceName: `${name}readonly`,
///     vswitchId: exampleSwitch.id,
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
/// example = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="5.6")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vpc_id=example_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=example.zones[0].id,
///     vswitch_name=name)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name=name,
///     vpc_id=example_network.id)
/// example_instance = alicloud.rds.Instance("example",
///     engine="MySQL",
///     engine_version="5.6",
///     instance_type="rds.mysql.t1.small",
///     instance_storage=20,
///     instance_charge_type="Postpaid",
///     instance_name=name,
///     vswitch_id=example_switch.id,
///     security_ips=[
///         "10.168.1.12",
///         "100.69.7.112",
///     ])
/// example_read_only_instance = alicloud.rds.ReadOnlyInstance("example",
///     zone_id=example_instance.zone_id,
///     master_db_instance_id=example_instance.id,
///     engine_version=example_instance.engine_version,
///     instance_storage=example_instance.instance_storage,
///     instance_type=example_instance.instance_type,
///     instance_name=f"{name}readonly",
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
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var example = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VpcId = exampleNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = name,
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = name,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Rds.Instance("example", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         InstanceType = "rds.mysql.t1.small",
///         InstanceStorage = 20,
///         InstanceChargeType = "Postpaid",
///         InstanceName = name,
///         VswitchId = exampleSwitch.Id,
///         SecurityIps = new[]
///         {
///             "10.168.1.12",
///             "100.69.7.112",
///         },
///     });
///
///     var exampleReadOnlyInstance = new AliCloud.Rds.ReadOnlyInstance("example", new()
///     {
///         ZoneId = exampleInstance.ZoneId,
///         MasterDbInstanceId = exampleInstance.Id,
///         EngineVersion = exampleInstance.EngineVersion,
///         InstanceStorage = exampleInstance.InstanceStorage,
///         InstanceType = exampleInstance.InstanceType,
///         InstanceName = $"{name}readonly",
///         VswitchId = exampleSwitch.Id,
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
/// 		example, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:        pulumi.StringRef("MySQL"),
/// 			EngineVersion: pulumi.StringRef("5.6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VpcId:       exampleNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			Engine:             pulumi.String("MySQL"),
/// 			EngineVersion:      pulumi.String("5.6"),
/// 			InstanceType:       pulumi.String("rds.mysql.t1.small"),
/// 			InstanceStorage:    pulumi.Int(20),
/// 			InstanceChargeType: pulumi.String("Postpaid"),
/// 			InstanceName:       pulumi.String(name),
/// 			VswitchId:          exampleSwitch.ID(),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("10.168.1.12"),
/// 				pulumi.String("100.69.7.112"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewReadOnlyInstance(ctx, "example", &rds.ReadOnlyInstanceArgs{
/// 			ZoneId:             exampleInstance.ZoneId,
/// 			MasterDbInstanceId: exampleInstance.ID(),
/// 			EngineVersion:      exampleInstance.EngineVersion,
/// 			InstanceStorage:    exampleInstance.InstanceStorage,
/// 			InstanceType:       exampleInstance.InstanceType,
/// 			InstanceName:       pulumi.Sprintf("%vreadonly", name),
/// 			VswitchId:          exampleSwitch.ID(),
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
///         final var example = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vpcId(exampleNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(example.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .instanceType("rds.mysql.t1.small")
///             .instanceStorage(20)
///             .instanceChargeType("Postpaid")
///             .instanceName(name)
///             .vswitchId(exampleSwitch.id())
///             .securityIps(
///                 "10.168.1.12",
///                 "100.69.7.112")
///             .build());
///
///         var exampleReadOnlyInstance = new ReadOnlyInstance("exampleReadOnlyInstance", ReadOnlyInstanceArgs.builder()
///             .zoneId(exampleInstance.zoneId())
///             .masterDbInstanceId(exampleInstance.id())
///             .engineVersion(exampleInstance.engineVersion())
///             .instanceStorage(exampleInstance.instanceStorage())
///             .instanceType(exampleInstance.instanceType())
///             .instanceName(String.format("%sreadonly", name))
///             .vswitchId(exampleSwitch.id())
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
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vpcId: ${exampleNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${example.zones[0].id}
///       vswitchName: ${name}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:rds:Instance
///     name: example
///     properties:
///       engine: MySQL
///       engineVersion: '5.6'
///       instanceType: rds.mysql.t1.small
///       instanceStorage: '20'
///       instanceChargeType: Postpaid
///       instanceName: ${name}
///       vswitchId: ${exampleSwitch.id}
///       securityIps:
///         - 10.168.1.12
///         - 100.69.7.112
///   exampleReadOnlyInstance:
///     type: alicloud:rds:ReadOnlyInstance
///     name: example
///     properties:
///       zoneId: ${exampleInstance.zoneId}
///       masterDbInstanceId: ${exampleInstance.id}
///       engineVersion: ${exampleInstance.engineVersion}
///       instanceStorage: ${exampleInstance.instanceStorage}
///       instanceType: ${exampleInstance.instanceType}
///       instanceName: ${name}readonly
///       vswitchId: ${exampleSwitch.id}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '5.6'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS readonly instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/readOnlyInstance:ReadOnlyInstance example rm-abc12345678
/// ```
class ReadOnlyInstance extends pulumi.CustomResource {
  /// The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  late final pulumi.Output<String> acl;
  /// Whether to renewal a DB instance automatically or not. It is valid when instance_charge_type is `PrePaid`. Default to `false`.
  late final pulumi.Output<bool?> autoRenew;
  /// Auto-renewal period of an instance, in the unit of the month. It is valid when instance_charge_type is `PrePaid`. Valid value:[1~12], Default to 1.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. It is valid only when `ssl_enabled  = 1`. Value range:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  late final pulumi.Output<String> caType;
  /// The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  late final pulumi.Output<String?> clientCaCert;
  /// Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - 1: enables the public key
  /// - 0: disables the public key
  late final pulumi.Output<int?> clientCaEnabled;
  /// The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  late final pulumi.Output<String?> clientCertRevocationList;
  /// Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - 1: enables the CRL
  /// - 0: disables the CRL
  late final pulumi.Output<int?> clientCrlEnabled;
  /// RDS database connection string.
  late final pulumi.Output<String> connectionString;
  /// The attribute of the IP address whitelist. By default, this parameter is empty.
  ///
  /// &gt; **NOTE:** The IP address whitelists that have the hidden attribute are not displayed in the ApsaraDB RDS console. These IP address whitelists are used to access Alibaba Cloud services, such as Data Transmission Service (DTS).
  late final pulumi.Output<String?> dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. Default value: Default.
  ///
  /// &gt; **NOTE:** A maximum of 200 IP address whitelists can be configured for each instance.
  late final pulumi.Output<String?> dbInstanceIpArrayName;
  /// The storage type of the instance. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  late final pulumi.Output<String> dbInstanceStorageType;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  late final pulumi.Output<bool?> deletionProtection;
  /// The instance configuration type. Valid values:
  /// - Up
  /// - Down
  /// - TempUpgrade
  /// - Serverless
  late final pulumi.Output<String?> direction;
  /// The method to change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  late final pulumi.Output<String?> effectiveTime;
  /// Database type.
  late final pulumi.Output<String> engine;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  late final pulumi.Output<String> engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  late final pulumi.Output<bool?> forceRestart;
  /// Valid values are `Prepaid`, `Postpaid`, Default to `Postpaid`. The interval between the two conversion operations must be greater than 15 minutes. Only when this parameter is `Postpaid`, the instance can be released.
  late final pulumi.Output<String?> instanceChargeType;
  /// The name of DB instance. It a string of 2 to 256 characters.
  late final pulumi.Output<String> instanceName;
  /// User-defined DB instance storage space. Value range: [5, 2000] for MySQL/SQL Server HA dual node edition. Increase progressively at a rate of 5 GB. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  late final pulumi.Output<int> instanceStorage;
  /// DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  late final pulumi.Output<String> instanceType;
  /// ID of the master instance.
  late final pulumi.Output<String> masterDbInstanceId;
  /// The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// - Cover: Use the value of the SecurityIps parameter to overwrite the existing entries in the IP address whitelist.
  /// - Append: Add the IP addresses and CIDR blocks that are specified in the SecurityIps parameter to the IP address whitelist.
  /// - Delete: Delete IP addresses and CIDR blocks that are specified in the SecurityIps parameter from the IP address whitelist. You must retain at least one IP address or CIDR block.
  late final pulumi.Output<String?> modifyMode;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm). See `parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>> parameters;
  /// The duration that you will buy DB instance (in month). It is valid when instance_charge_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  late final pulumi.Output<int?> period;
  /// RDS database connection port.
  late final pulumi.Output<String> port;
  /// The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  /// &gt; **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  late final pulumi.Output<String> replicationAcl;
  /// The ID of resource group which the DB read-only instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The type of IP address in the IP address whitelist.
  late final pulumi.Output<String?> securityIpType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIps;
  /// The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  late final pulumi.Output<String> serverCert;
  /// The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  late final pulumi.Output<String> serverKey;
  /// Specifies whether to enable or disable SSL encryption. Valid values:
  /// - 1: enables SSL encryption
  /// - 0: disables SSL encryption
  late final pulumi.Output<int> sslEnabled;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `upgrade_db_instance_kernel_version = true`. The time must be in UTC.
  ///
  /// &gt; **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  late final pulumi.Output<String?> switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. It is valid only when `upgrade_db_instance_kernel_version = true`. You must specify the minor engine version in one of the following formats:
  /// - PostgreSQL: rds_postgres_&lt;Major engine version&gt;00_&lt;Minor engine version&gt;. Example: rds_postgres_1200_20200830.
  /// - MySQL: &lt;RDS edition&gt;_&lt;Minor engine version&gt;. Examples: rds_20200229, xcluster_20200229, and xcluster80_20200229. The following RDS editions are supported:
  /// - rds: The instance runs RDS Basic or High-availability Edition.
  /// - xcluster: The instance runs MySQL 5.7 on RDS Enterprise Edition.
  /// - xcluster80: The instance runs MySQL 8.0 on RDS Enterprise Edition.
  /// - SQLServer: &lt;Minor engine version&gt;. Example: 15.0.4073.23.
  ///
  /// &gt; **NOTE:** For more information about minor engine versions, see Release notes of minor AliPG versions, Release notes of minor AliSQL versions, and Release notes of minor engine versions of ApsaraDB RDS for SQL Server.
  late final pulumi.Output<String> targetMinorVersion;
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  late final pulumi.Output<bool?> upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `upgrade_db_instance_kernel_version = true`. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  late final pulumi.Output<String?> upgradeTime;
  /// The virtual switch ID to launch DB instances in one VPC.
  late final pulumi.Output<String?> vswitchId;
  /// The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// - Classic: classic network in enhanced whitelist mode
  /// - VPC: virtual private cloud (VPC) in enhanced whitelist mode
  /// - MIX: standard whitelist mode
  /// &gt; **NOTE:** In standard whitelist mode, IP addresses and CIDR blocks can be added only to the default IP address whitelist. In enhanced whitelist mode, IP addresses and CIDR blocks can be added to both IP address whitelists of the classic network type and those of the VPC network type.
  late final pulumi.Output<String?> whitelistNetworkType;
  /// The Zone to launch the DB instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ReadOnlyInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReadOnlyInstance]. {@macro pulumi_rds_read_only_instance_read_only_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReadOnlyInstance(
    String name, {
    ReadOnlyInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/readOnlyInstance:ReadOnlyInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String>('acl');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    caType = registerOutput<String>('caType');
    clientCaCert = registerOutput<String?>('clientCaCert');
    clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    connectionString = registerOutput<String>('connectionString');
    dbInstanceIpArrayAttribute = registerOutput<String?>('dbInstanceIpArrayAttribute');
    dbInstanceIpArrayName = registerOutput<String?>('dbInstanceIpArrayName');
    dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    direction = registerOutput<String?>('direction');
    effectiveTime = registerOutput<String?>('effectiveTime');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    forceRestart = registerOutput<bool?>('forceRestart');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceName = registerOutput<String>('instanceName');
    instanceStorage = registerOutput<int>('instanceStorage');
    instanceType = registerOutput<String>('instanceType');
    masterDbInstanceId = registerOutput<String>('masterDbInstanceId');
    modifyMode = registerOutput<String?>('modifyMode');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    period = registerOutput<int?>('period');
    port = registerOutput<String>('port');
    replicationAcl = registerOutput<String>('replicationAcl');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityIpType = registerOutput<String?>('securityIpType');
    securityIps = registerOutput<List<String>>('securityIps');
    serverCert = registerOutput<String>('serverCert');
    serverKey = registerOutput<String>('serverKey');
    sslEnabled = registerOutput<int>('sslEnabled');
    switchTime = registerOutput<String?>('switchTime');
    tags = registerOutput<Map<String, String>?>('tags');
    targetMinorVersion = registerOutput<String>('targetMinorVersion');
    upgradeDbInstanceKernelVersion = registerOutput<bool?>('upgradeDbInstanceKernelVersion');
    upgradeTime = registerOutput<String?>('upgradeTime');
    vswitchId = registerOutput<String?>('vswitchId');
    whitelistNetworkType = registerOutput<String?>('whitelistNetworkType');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ReadOnlyInstance] resource's state with the given [name] and [id].
  static ReadOnlyInstance get(
    String name,
    pulumi.Input<String> id, {
    ReadOnlyInstanceState? state,
  }) {
    return ReadOnlyInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReadOnlyInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/readOnlyInstance:ReadOnlyInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String>('acl');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    caType = registerOutput<String>('caType');
    clientCaCert = registerOutput<String?>('clientCaCert');
    clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    connectionString = registerOutput<String>('connectionString');
    dbInstanceIpArrayAttribute = registerOutput<String?>('dbInstanceIpArrayAttribute');
    dbInstanceIpArrayName = registerOutput<String?>('dbInstanceIpArrayName');
    dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    direction = registerOutput<String?>('direction');
    effectiveTime = registerOutput<String?>('effectiveTime');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    forceRestart = registerOutput<bool?>('forceRestart');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceName = registerOutput<String>('instanceName');
    instanceStorage = registerOutput<int>('instanceStorage');
    instanceType = registerOutput<String>('instanceType');
    masterDbInstanceId = registerOutput<String>('masterDbInstanceId');
    modifyMode = registerOutput<String?>('modifyMode');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    period = registerOutput<int?>('period');
    port = registerOutput<String>('port');
    replicationAcl = registerOutput<String>('replicationAcl');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityIpType = registerOutput<String?>('securityIpType');
    securityIps = registerOutput<List<String>>('securityIps');
    serverCert = registerOutput<String>('serverCert');
    serverKey = registerOutput<String>('serverKey');
    sslEnabled = registerOutput<int>('sslEnabled');
    switchTime = registerOutput<String?>('switchTime');
    tags = registerOutput<Map<String, String>?>('tags');
    targetMinorVersion = registerOutput<String>('targetMinorVersion');
    upgradeDbInstanceKernelVersion = registerOutput<bool?>('upgradeDbInstanceKernelVersion');
    upgradeTime = registerOutput<String?>('upgradeTime');
    vswitchId = registerOutput<String?>('vswitchId');
    whitelistNetworkType = registerOutput<String?>('whitelistNetworkType');
    zoneId = registerOutput<String>('zoneId');
  }
}
