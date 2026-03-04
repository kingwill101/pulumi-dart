import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_args.dart';
import 'node_group_state.dart';

/// Provides a Star Rocks Node Group resource.
///
///
///
/// For information about Star Rocks Node Group and how to use it, see [What is Node Group](https://next.api.alibabacloud.com/document/starrocks/2022-10-19/CreateNodeGroup).
///
/// &gt; **NOTE:** Available since v1.262.0.
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
/// const defaultq6pcFe = new alicloud.vpc.Network("defaultq6pcFe", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: "example-vpc-487",
/// });
/// const defaultujlpyG = new alicloud.vpc.Switch("defaultujlpyG", {
///     vpcId: defaultq6pcFe.id,
///     zoneId: "cn-hangzhou-i",
///     cidrBlock: "172.16.0.0/24",
///     vswitchName: "sr-example-ng",
/// });
/// const defaultvjnpM0 = new alicloud.starrocks.Instance("defaultvjnpM0", {
///     clusterZoneId: "cn-hangzhou-i",
///     encrypted: false,
///     autoRenew: false,
///     payType: "postPaid",
///     frontendNodeGroups: [{
///         cu: 8,
///         storageSize: 100,
///         storagePerformanceLevel: "pl1",
///         diskNumber: 1,
///         zoneId: "cn-hangzhou-i",
///         specType: "standard",
///         residentNodeNumber: 1,
///     }],
///     instanceName: "t1",
///     vswitches: [{
///         zoneId: "cn-hangzhou-i",
///         vswitchId: defaultujlpyG.id,
///     }],
///     vpcId: defaultq6pcFe.id,
///     version: "3.3",
///     runMode: "shared_data",
///     packageType: "official",
///     ossAccessingRoleName: "AliyunEMRStarRocksAccessingOSSRolecn",
///     adminPassword: "1qaz@QAZ",
///     backendNodeGroups: [{
///         cu: 8,
///         storageSize: 200,
///         zoneId: "cn-hangzhou-i",
///         specType: "standard",
///         residentNodeNumber: 3,
///         diskNumber: 1,
///         storagePerformanceLevel: "pl1",
///     }],
/// });
/// const _default = new alicloud.starrocks.NodeGroup("default", {
///     description: "example_desc",
///     nodeGroupName: "ng_676",
///     instanceId: defaultvjnpM0.id,
///     specType: "standard",
///     storagePerformanceLevel: "pl1",
///     pricingCycle: "1",
///     autoRenew: false,
///     storageSize: 200,
///     duration: 1,
///     payType: "postPaid",
///     cu: 8,
///     diskNumber: 1,
///     residentNodeNumber: 1,
///     localStorageInstanceType: "non_local_storage",
///     promotionOptionNo: "blank",
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
/// defaultq6pc_fe = alicloud.vpc.Network("defaultq6pcFe",
///     cidr_block="172.16.0.0/12",
///     vpc_name="example-vpc-487")
/// defaultujlpy_g = alicloud.vpc.Switch("defaultujlpyG",
///     vpc_id=defaultq6pc_fe.id,
///     zone_id="cn-hangzhou-i",
///     cidr_block="172.16.0.0/24",
///     vswitch_name="sr-example-ng")
/// defaultvjnp_m0 = alicloud.starrocks.Instance("defaultvjnpM0",
///     cluster_zone_id="cn-hangzhou-i",
///     encrypted=False,
///     auto_renew=False,
///     pay_type="postPaid",
///     frontend_node_groups=[{
///         "cu": 8,
///         "storage_size": 100,
///         "storage_performance_level": "pl1",
///         "disk_number": 1,
///         "zone_id": "cn-hangzhou-i",
///         "spec_type": "standard",
///         "resident_node_number": 1,
///     }],
///     instance_name="t1",
///     vswitches=[{
///         "zone_id": "cn-hangzhou-i",
///         "vswitch_id": defaultujlpy_g.id,
///     }],
///     vpc_id=defaultq6pc_fe.id,
///     version="3.3",
///     run_mode="shared_data",
///     package_type="official",
///     oss_accessing_role_name="AliyunEMRStarRocksAccessingOSSRolecn",
///     admin_password="1qaz@QAZ",
///     backend_node_groups=[{
///         "cu": 8,
///         "storage_size": 200,
///         "zone_id": "cn-hangzhou-i",
///         "spec_type": "standard",
///         "resident_node_number": 3,
///         "disk_number": 1,
///         "storage_performance_level": "pl1",
///     }])
/// default = alicloud.starrocks.NodeGroup("default",
///     description="example_desc",
///     node_group_name="ng_676",
///     instance_id=defaultvjnp_m0.id,
///     spec_type="standard",
///     storage_performance_level="pl1",
///     pricing_cycle="1",
///     auto_renew=False,
///     storage_size=200,
///     duration=1,
///     pay_type="postPaid",
///     cu=8,
///     disk_number=1,
///     resident_node_number=1,
///     local_storage_instance_type="non_local_storage",
///     promotion_option_no="blank")
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
///     var defaultq6pcFe = new AliCloud.Vpc.Network("defaultq6pcFe", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = "example-vpc-487",
///     });
///
///     var defaultujlpyG = new AliCloud.Vpc.Switch("defaultujlpyG", new()
///     {
///         VpcId = defaultq6pcFe.Id,
///         ZoneId = "cn-hangzhou-i",
///         CidrBlock = "172.16.0.0/24",
///         VswitchName = "sr-example-ng",
///     });
///
///     var defaultvjnpM0 = new AliCloud.StarRocks.Instance("defaultvjnpM0", new()
///     {
///         ClusterZoneId = "cn-hangzhou-i",
///         Encrypted = false,
///         AutoRenew = false,
///         PayType = "postPaid",
///         FrontendNodeGroups = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceFrontendNodeGroupArgs
///             {
///                 Cu = 8,
///                 StorageSize = 100,
///                 StoragePerformanceLevel = "pl1",
///                 DiskNumber = 1,
///                 ZoneId = "cn-hangzhou-i",
///                 SpecType = "standard",
///                 ResidentNodeNumber = 1,
///             },
///         },
///         InstanceName = "t1",
///         Vswitches = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceVswitchArgs
///             {
///                 ZoneId = "cn-hangzhou-i",
///                 VswitchId = defaultujlpyG.Id,
///             },
///         },
///         VpcId = defaultq6pcFe.Id,
///         Version = "3.3",
///         RunMode = "shared_data",
///         PackageType = "official",
///         OssAccessingRoleName = "AliyunEMRStarRocksAccessingOSSRolecn",
///         AdminPassword = "1qaz@QAZ",
///         BackendNodeGroups = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceBackendNodeGroupArgs
///             {
///                 Cu = 8,
///                 StorageSize = 200,
///                 ZoneId = "cn-hangzhou-i",
///                 SpecType = "standard",
///                 ResidentNodeNumber = 3,
///                 DiskNumber = 1,
///                 StoragePerformanceLevel = "pl1",
///             },
///         },
///     });
///
///     var @default = new AliCloud.StarRocks.NodeGroup("default", new()
///     {
///         Description = "example_desc",
///         NodeGroupName = "ng_676",
///         InstanceId = defaultvjnpM0.Id,
///         SpecType = "standard",
///         StoragePerformanceLevel = "pl1",
///         PricingCycle = "1",
///         AutoRenew = false,
///         StorageSize = 200,
///         Duration = 1,
///         PayType = "postPaid",
///         Cu = 8,
///         DiskNumber = 1,
///         ResidentNodeNumber = 1,
///         LocalStorageInstanceType = "non_local_storage",
///         PromotionOptionNo = "blank",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/starrocks"
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
/// 		defaultq6pcFe, err := vpc.NewNetwork(ctx, "defaultq6pcFe", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String("example-vpc-487"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultujlpyG, err := vpc.NewSwitch(ctx, "defaultujlpyG", &vpc.SwitchArgs{
/// 			VpcId:       defaultq6pcFe.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-i"),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			VswitchName: pulumi.String("sr-example-ng"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultvjnpM0, err := starrocks.NewInstance(ctx, "defaultvjnpM0", &starrocks.InstanceArgs{
/// 			ClusterZoneId: pulumi.String("cn-hangzhou-i"),
/// 			Encrypted:     pulumi.Bool(false),
/// 			AutoRenew:     pulumi.Bool(false),
/// 			PayType:       pulumi.String("postPaid"),
/// 			FrontendNodeGroups: starrocks.InstanceFrontendNodeGroupArray{
/// 				&starrocks.InstanceFrontendNodeGroupArgs{
/// 					Cu:                      pulumi.Int(8),
/// 					StorageSize:             pulumi.Int(100),
/// 					StoragePerformanceLevel: pulumi.String("pl1"),
/// 					DiskNumber:              pulumi.Int(1),
/// 					ZoneId:                  pulumi.String("cn-hangzhou-i"),
/// 					SpecType:                pulumi.String("standard"),
/// 					ResidentNodeNumber:      pulumi.Int(1),
/// 				},
/// 			},
/// 			InstanceName: pulumi.String("t1"),
/// 			Vswitches: starrocks.InstanceVswitchArray{
/// 				&starrocks.InstanceVswitchArgs{
/// 					ZoneId:    pulumi.String("cn-hangzhou-i"),
/// 					VswitchId: defaultujlpyG.ID(),
/// 				},
/// 			},
/// 			VpcId:                defaultq6pcFe.ID(),
/// 			Version:              pulumi.String("3.3"),
/// 			RunMode:              pulumi.String("shared_data"),
/// 			PackageType:          pulumi.String("official"),
/// 			OssAccessingRoleName: pulumi.String("AliyunEMRStarRocksAccessingOSSRolecn"),
/// 			AdminPassword:        pulumi.String("1qaz@QAZ"),
/// 			BackendNodeGroups: starrocks.InstanceBackendNodeGroupArray{
/// 				&starrocks.InstanceBackendNodeGroupArgs{
/// 					Cu:                      pulumi.Int(8),
/// 					StorageSize:             pulumi.Int(200),
/// 					ZoneId:                  pulumi.String("cn-hangzhou-i"),
/// 					SpecType:                pulumi.String("standard"),
/// 					ResidentNodeNumber:      pulumi.Int(3),
/// 					DiskNumber:              pulumi.Int(1),
/// 					StoragePerformanceLevel: pulumi.String("pl1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = starrocks.NewNodeGroup(ctx, "default", &starrocks.NodeGroupArgs{
/// 			Description:              pulumi.String("example_desc"),
/// 			NodeGroupName:            pulumi.String("ng_676"),
/// 			InstanceId:               defaultvjnpM0.ID(),
/// 			SpecType:                 pulumi.String("standard"),
/// 			StoragePerformanceLevel:  pulumi.String("pl1"),
/// 			PricingCycle:             pulumi.String("1"),
/// 			AutoRenew:                pulumi.Bool(false),
/// 			StorageSize:              pulumi.Int(200),
/// 			Duration:                 pulumi.Int(1),
/// 			PayType:                  pulumi.String("postPaid"),
/// 			Cu:                       pulumi.Int(8),
/// 			DiskNumber:               pulumi.Int(1),
/// 			ResidentNodeNumber:       pulumi.Int(1),
/// 			LocalStorageInstanceType: pulumi.String("non_local_storage"),
/// 			PromotionOptionNo:        pulumi.String("blank"),
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
/// import com.pulumi.alicloud.starrocks.Instance;
/// import com.pulumi.alicloud.starrocks.InstanceArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceFrontendNodeGroupArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceVswitchArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceBackendNodeGroupArgs;
/// import com.pulumi.alicloud.starrocks.NodeGroup;
/// import com.pulumi.alicloud.starrocks.NodeGroupArgs;
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
///         var defaultq6pcFe = new Network("defaultq6pcFe", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName("example-vpc-487")
///             .build());
///
///         var defaultujlpyG = new Switch("defaultujlpyG", SwitchArgs.builder()
///             .vpcId(defaultq6pcFe.id())
///             .zoneId("cn-hangzhou-i")
///             .cidrBlock("172.16.0.0/24")
///             .vswitchName("sr-example-ng")
///             .build());
///
///         var defaultvjnpM0 = new Instance("defaultvjnpM0", InstanceArgs.builder()
///             .clusterZoneId("cn-hangzhou-i")
///             .encrypted(false)
///             .autoRenew(false)
///             .payType("postPaid")
///             .frontendNodeGroups(InstanceFrontendNodeGroupArgs.builder()
///                 .cu(8)
///                 .storageSize(100)
///                 .storagePerformanceLevel("pl1")
///                 .diskNumber(1)
///                 .zoneId("cn-hangzhou-i")
///                 .specType("standard")
///                 .residentNodeNumber(1)
///                 .build())
///             .instanceName("t1")
///             .vswitches(InstanceVswitchArgs.builder()
///                 .zoneId("cn-hangzhou-i")
///                 .vswitchId(defaultujlpyG.id())
///                 .build())
///             .vpcId(defaultq6pcFe.id())
///             .version("3.3")
///             .runMode("shared_data")
///             .packageType("official")
///             .ossAccessingRoleName("AliyunEMRStarRocksAccessingOSSRolecn")
///             .adminPassword("1qaz@QAZ")
///             .backendNodeGroups(InstanceBackendNodeGroupArgs.builder()
///                 .cu(8)
///                 .storageSize(200)
///                 .zoneId("cn-hangzhou-i")
///                 .specType("standard")
///                 .residentNodeNumber(3)
///                 .diskNumber(1)
///                 .storagePerformanceLevel("pl1")
///                 .build())
///             .build());
///
///         var default_ = new NodeGroup("default", NodeGroupArgs.builder()
///             .description("example_desc")
///             .nodeGroupName("ng_676")
///             .instanceId(defaultvjnpM0.id())
///             .specType("standard")
///             .storagePerformanceLevel("pl1")
///             .pricingCycle("1")
///             .autoRenew(false)
///             .storageSize(200)
///             .duration(1)
///             .payType("postPaid")
///             .cu(8)
///             .diskNumber(1)
///             .residentNodeNumber(1)
///             .localStorageInstanceType("non_local_storage")
///             .promotionOptionNo("blank")
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
///   defaultq6pcFe:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: example-vpc-487
///   defaultujlpyG:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultq6pcFe.id}
///       zoneId: cn-hangzhou-i
///       cidrBlock: 172.16.0.0/24
///       vswitchName: sr-example-ng
///   defaultvjnpM0:
///     type: alicloud:starrocks:Instance
///     properties:
///       clusterZoneId: cn-hangzhou-i
///       encrypted: false
///       autoRenew: false
///       payType: postPaid
///       frontendNodeGroups:
///         - cu: '8'
///           storageSize: '100'
///           storagePerformanceLevel: pl1
///           diskNumber: '1'
///           zoneId: cn-hangzhou-i
///           specType: standard
///           residentNodeNumber: '1'
///       instanceName: t1
///       vswitches:
///         - zoneId: cn-hangzhou-i
///           vswitchId: ${defaultujlpyG.id}
///       vpcId: ${defaultq6pcFe.id}
///       version: '3.3'
///       runMode: shared_data
///       packageType: official
///       ossAccessingRoleName: AliyunEMRStarRocksAccessingOSSRolecn
///       adminPassword: 1qaz@QAZ
///       backendNodeGroups:
///         - cu: '8'
///           storageSize: '200'
///           zoneId: cn-hangzhou-i
///           specType: standard
///           residentNodeNumber: '3'
///           diskNumber: '1'
///           storagePerformanceLevel: pl1
///   default:
///     type: alicloud:starrocks:NodeGroup
///     properties:
///       description: example_desc
///       nodeGroupName: ng_676
///       instanceId: ${defaultvjnpM0.id}
///       specType: standard
///       storagePerformanceLevel: pl1
///       pricingCycle: '1'
///       autoRenew: false
///       storageSize: '200'
///       duration: '1'
///       payType: postPaid
///       cu: '8'
///       diskNumber: '1'
///       residentNodeNumber: '1'
///       localStorageInstanceType: non_local_storage
///       promotionOptionNo: blank
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Star Rocks Node Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:starrocks/nodeGroup:NodeGroup example <instance_id>:<node_group_id>
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// Whether auto-renewal is enabled.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<bool?> autoRenew;

  /// The creation time of the node group.
  late final pulumi.Output<String> createTime;

  /// Number of CUs. CU (Compute Unit) is the basic unit of service measurement, where 1 CU = 1 vCPU + 4 GiB memory. When SpecType is memory-optimized, 1 CU = 1 vCPU + 8 GiB memory.
  late final pulumi.Output<int?> cu;

  /// Description of node group.
  late final pulumi.Output<String?> description;

  /// Number of disks.
  late final pulumi.Output<int?> diskNumber;

  /// Duration of node group.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> duration;

  /// Whether to restart in fast restart mode. The default is false.
  /// - true: Reboots the compute node in fast restart mode. Restart computing nodes in multiple batches, restart in parallel within a batch, and execute serially between batches;
  /// - false: Restarts the compute node in rolling restart mode.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<bool?> fastMode;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// Node group local SSD instance specification. This value is only relevant when based on ECS instances and SpecType is set to local SSD/large-scale storage.
  late final pulumi.Output<String?> localStorageInstanceType;

  /// The ID of the node group.
  late final pulumi.Output<String> nodeGroupId;

  /// The name of the node group.
  late final pulumi.Output<String?> nodeGroupName;

  /// Payment type:
  /// - PrePaid: Subscription (prepaid).
  /// - PostPaid: Pay-as-you-go (postpaid).
  late final pulumi.Output<String?> payType;

  /// Unit of purchase duration:
  /// - Month
  /// - Year
  ///
  /// This is only applicable when payType is set to PrePaid.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> pricingCycle;
  late final pulumi.Output<String?> promotionOptionNo;

  /// The region ID of the node group.
  late final pulumi.Output<String> regionId;

  /// Number of nodes.
  late final pulumi.Output<int?> residentNodeNumber;

  /// Node group spec types include the following:
  /// - standard: Standard edition.
  /// - localSSD: Local SSD.
  /// - bigData: Large-scale storage.
  /// - ramEnhanced: Memory-enhanced type.
  /// - networkEnhanced: Network-enhanced type.
  late final pulumi.Output<String?> specType;

  /// Node group status, including the following values:_FAILED: Creation failed._CONFIG: Modifying configuration._TIMEZONE: Modifying timezone._SCALING_OUT: Elastic scaling out._SCALING_IN: Elastic scaling in._OUT: Scaling out._IN: Scaling in._UP: Scaling up (upgrading configuration)._DOWN: Scaling down (downgrading configuration)._PUBLIC_NETWORK: Enabling public network._PUBLIC_NETWORK: Disabling public network._AZ: Switching availability zones.
  late final pulumi.Output<String> status;

  /// Performance levels of the cloud disk. Includes the following values:
  /// - pl0: Maximum random read/write IOPS of a single disk is 10,000.
  /// - pl1: Maximum random read/write IOPS of a single disk is 50,000.
  /// - pl2: Maximum random read/write IOPS of a single disk is 100,000.
  /// - pl3: Maximum random read/write IOPS of a single disk is 1,000,000.
  late final pulumi.Output<String?> storagePerformanceLevel;

  /// Storage size, measured in GiB.
  late final pulumi.Output<int?> storageSize;

  /// Creates a new [NodeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroup]. {@macro pulumi_starrocks_node_group_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:starrocks/nodeGroup:NodeGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<String>('createTime');
    cu = registerOutput<int?>('cu');
    description = registerOutput<String?>('description');
    diskNumber = registerOutput<int?>('diskNumber');
    duration = registerOutput<int?>('duration');
    fastMode = registerOutput<bool?>('fastMode');
    instanceId = registerOutput<String>('instanceId');
    localStorageInstanceType = registerOutput<String?>(
      'localStorageInstanceType',
    );
    nodeGroupId = registerOutput<String>('nodeGroupId');
    nodeGroupName = registerOutput<String?>('nodeGroupName');
    payType = registerOutput<String?>('payType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    regionId = registerOutput<String>('regionId');
    residentNodeNumber = registerOutput<int?>('residentNodeNumber');
    specType = registerOutput<String?>('specType');
    status = registerOutput<String>('status');
    storagePerformanceLevel = registerOutput<String?>(
      'storagePerformanceLevel',
    );
    storageSize = registerOutput<int?>('storageSize');
  }

  /// Gets an existing [NodeGroup] resource's state with the given [name] and [id].
  static NodeGroup get(
    String name,
    pulumi.Input<String> id, {
    NodeGroupState? state,
  }) {
    return NodeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:starrocks/nodeGroup:NodeGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<String>('createTime');
    cu = registerOutput<int?>('cu');
    description = registerOutput<String?>('description');
    diskNumber = registerOutput<int?>('diskNumber');
    duration = registerOutput<int?>('duration');
    fastMode = registerOutput<bool?>('fastMode');
    instanceId = registerOutput<String>('instanceId');
    localStorageInstanceType = registerOutput<String?>(
      'localStorageInstanceType',
    );
    nodeGroupId = registerOutput<String>('nodeGroupId');
    nodeGroupName = registerOutput<String?>('nodeGroupName');
    payType = registerOutput<String?>('payType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    regionId = registerOutput<String>('regionId');
    residentNodeNumber = registerOutput<int?>('residentNodeNumber');
    specType = registerOutput<String?>('specType');
    status = registerOutput<String>('status');
    storagePerformanceLevel = registerOutput<String?>(
      'storagePerformanceLevel',
    );
    storageSize = registerOutput<int?>('storageSize');
  }
}
