import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_v2_args.dart';
import 'instance_v2_engine_list.dart';
import 'instance_v2_state.dart';
import 'instance_v2_white_ip_list.dart';

/// Provides a Lindorm Instance V2 resource.
///
/// Cloud-native multi-model database.
///
/// For information about Lindorm Instance V2 and how to use it, see [What is Instance V2](https://next.api.alibabacloud.com/document/hitsdb/2020-06-15/CreateLindormV2Instance).
///
/// > **NOTE:** Available since v1.260.0.
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
/// const defaultR8vXlP = new alicloud.vpc.Network("defaultR8vXlP", {cidrBlock: "172.16.0.0/16"});
/// const default9umuzwH = new alicloud.vpc.Switch("default9umuzwH", {
///     vpcId: defaultR8vXlP.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "172.16.0.0/24",
/// });
/// const defaultgOFAo3L = new alicloud.vpc.Switch("defaultgOFAo3L", {
///     vpcId: defaultR8vXlP.id,
///     zoneId: "cn-beijing-l",
///     cidrBlock: "172.16.1.0/24",
/// });
/// const defaultTAbr2pJ = new alicloud.vpc.Switch("defaultTAbr2pJ", {
///     vpcId: defaultR8vXlP.id,
///     zoneId: "cn-beijing-j",
///     cidrBlock: "172.16.2.0/24",
/// });
/// const _default = new alicloud.lindorm.InstanceV2("default", {
///     standbyZoneId: "cn-beijing-l",
///     engineLists: [{
///         engineType: "TABLE",
///         nodeGroups: [{
///             nodeCount: 4,
///             nodeSpec: "lindorm.g.2xlarge",
///             resourceGroupName: "cx-mz-rg",
///         }],
///     }],
///     cloudStorageSize: 400,
///     primaryZoneId: "cn-beijing-h",
///     zoneId: "cn-beijing-h",
///     cloudStorageType: "PerformanceStorage",
///     archVersion: "2.0",
///     vswitchId: default9umuzwH.id,
///     standbyVswitchId: defaultgOFAo3L.id,
///     primaryVswitchId: default9umuzwH.id,
///     arbiterVswitchId: defaultTAbr2pJ.id,
///     vpcId: defaultR8vXlP.id,
///     instanceAlias: "preTest-MZ",
///     paymentType: "POSTPAY",
///     arbiterZoneId: "cn-beijing-j",
///     autoRenewal: false,
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
/// default_r8v_xl_p = alicloud.vpc.Network("defaultR8vXlP", cidr_block="172.16.0.0/16")
/// default9umuzw_h = alicloud.vpc.Switch("default9umuzwH",
///     vpc_id=default_r8v_xl_p.id,
///     zone_id="cn-beijing-h",
///     cidr_block="172.16.0.0/24")
/// defaultg_of_ao3_l = alicloud.vpc.Switch("defaultgOFAo3L",
///     vpc_id=default_r8v_xl_p.id,
///     zone_id="cn-beijing-l",
///     cidr_block="172.16.1.0/24")
/// default_t_abr2p_j = alicloud.vpc.Switch("defaultTAbr2pJ",
///     vpc_id=default_r8v_xl_p.id,
///     zone_id="cn-beijing-j",
///     cidr_block="172.16.2.0/24")
/// default = alicloud.lindorm.InstanceV2("default",
///     standby_zone_id="cn-beijing-l",
///     engine_lists=[{
///         "engine_type": "TABLE",
///         "node_groups": [{
///             "node_count": 4,
///             "node_spec": "lindorm.g.2xlarge",
///             "resource_group_name": "cx-mz-rg",
///         }],
///     }],
///     cloud_storage_size=400,
///     primary_zone_id="cn-beijing-h",
///     zone_id="cn-beijing-h",
///     cloud_storage_type="PerformanceStorage",
///     arch_version="2.0",
///     vswitch_id=default9umuzw_h.id,
///     standby_vswitch_id=defaultg_of_ao3_l.id,
///     primary_vswitch_id=default9umuzw_h.id,
///     arbiter_vswitch_id=default_t_abr2p_j.id,
///     vpc_id=default_r8v_xl_p.id,
///     instance_alias="preTest-MZ",
///     payment_type="POSTPAY",
///     arbiter_zone_id="cn-beijing-j",
///     auto_renewal=False)
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
///     var defaultR8vXlP = new AliCloud.Vpc.Network("defaultR8vXlP", new()
///     {
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var default9umuzwH = new AliCloud.Vpc.Switch("default9umuzwH", new()
///     {
///         VpcId = defaultR8vXlP.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "172.16.0.0/24",
///     });
///
///     var defaultgOFAo3L = new AliCloud.Vpc.Switch("defaultgOFAo3L", new()
///     {
///         VpcId = defaultR8vXlP.Id,
///         ZoneId = "cn-beijing-l",
///         CidrBlock = "172.16.1.0/24",
///     });
///
///     var defaultTAbr2pJ = new AliCloud.Vpc.Switch("defaultTAbr2pJ", new()
///     {
///         VpcId = defaultR8vXlP.Id,
///         ZoneId = "cn-beijing-j",
///         CidrBlock = "172.16.2.0/24",
///     });
///
///     var @default = new AliCloud.Lindorm.InstanceV2("default", new()
///     {
///         StandbyZoneId = "cn-beijing-l",
///         EngineLists = new[]
///         {
///             new AliCloud.Lindorm.Inputs.InstanceV2EngineListArgs
///             {
///                 EngineType = "TABLE",
///                 NodeGroups = new[]
///                 {
///                     new AliCloud.Lindorm.Inputs.InstanceV2EngineListNodeGroupArgs
///                     {
///                         NodeCount = 4,
///                         NodeSpec = "lindorm.g.2xlarge",
///                         ResourceGroupName = "cx-mz-rg",
///                     },
///                 },
///             },
///         },
///         CloudStorageSize = 400,
///         PrimaryZoneId = "cn-beijing-h",
///         ZoneId = "cn-beijing-h",
///         CloudStorageType = "PerformanceStorage",
///         ArchVersion = "2.0",
///         VswitchId = default9umuzwH.Id,
///         StandbyVswitchId = defaultgOFAo3L.Id,
///         PrimaryVswitchId = default9umuzwH.Id,
///         ArbiterVswitchId = defaultTAbr2pJ.Id,
///         VpcId = defaultR8vXlP.Id,
///         InstanceAlias = "preTest-MZ",
///         PaymentType = "POSTPAY",
///         ArbiterZoneId = "cn-beijing-j",
///         AutoRenewal = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/lindorm"
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
/// 		defaultR8vXlP, err := vpc.NewNetwork(ctx, "defaultR8vXlP", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default9umuzwH, err := vpc.NewSwitch(ctx, "default9umuzwH", &vpc.SwitchArgs{
/// 			VpcId:     defaultR8vXlP.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultgOFAo3L, err := vpc.NewSwitch(ctx, "defaultgOFAo3L", &vpc.SwitchArgs{
/// 			VpcId:     defaultR8vXlP.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-l"),
/// 			CidrBlock: pulumi.String("172.16.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTAbr2pJ, err := vpc.NewSwitch(ctx, "defaultTAbr2pJ", &vpc.SwitchArgs{
/// 			VpcId:     defaultR8vXlP.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-j"),
/// 			CidrBlock: pulumi.String("172.16.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lindorm.NewInstanceV2(ctx, "default", &lindorm.InstanceV2Args{
/// 			StandbyZoneId: pulumi.String("cn-beijing-l"),
/// 			EngineLists: lindorm.InstanceV2EngineListArray{
/// 				&lindorm.InstanceV2EngineListArgs{
/// 					EngineType: pulumi.String("TABLE"),
/// 					NodeGroups: lindorm.InstanceV2EngineListNodeGroupArray{
/// 						&lindorm.InstanceV2EngineListNodeGroupArgs{
/// 							NodeCount:         pulumi.Int(4),
/// 							NodeSpec:          pulumi.String("lindorm.g.2xlarge"),
/// 							ResourceGroupName: pulumi.String("cx-mz-rg"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			CloudStorageSize: pulumi.Int(400),
/// 			PrimaryZoneId:    pulumi.String("cn-beijing-h"),
/// 			ZoneId:           pulumi.String("cn-beijing-h"),
/// 			CloudStorageType: pulumi.String("PerformanceStorage"),
/// 			ArchVersion:      pulumi.String("2.0"),
/// 			VswitchId:        default9umuzwH.ID(),
/// 			StandbyVswitchId: defaultgOFAo3L.ID(),
/// 			PrimaryVswitchId: default9umuzwH.ID(),
/// 			ArbiterVswitchId: defaultTAbr2pJ.ID(),
/// 			VpcId:            defaultR8vXlP.ID(),
/// 			InstanceAlias:    pulumi.String("preTest-MZ"),
/// 			PaymentType:      pulumi.String("POSTPAY"),
/// 			ArbiterZoneId:    pulumi.String("cn-beijing-j"),
/// 			AutoRenewal:      pulumi.Bool(false),
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
/// import com.pulumi.alicloud.lindorm.InstanceV2;
/// import com.pulumi.alicloud.lindorm.InstanceV2Args;
/// import com.pulumi.alicloud.lindorm.inputs.InstanceV2EngineListArgs;
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
///         var defaultR8vXlP = new Network("defaultR8vXlP", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var default9umuzwH = new Switch("default9umuzwH", SwitchArgs.builder()
///             .vpcId(defaultR8vXlP.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("172.16.0.0/24")
///             .build());
///
///         var defaultgOFAo3L = new Switch("defaultgOFAo3L", SwitchArgs.builder()
///             .vpcId(defaultR8vXlP.id())
///             .zoneId("cn-beijing-l")
///             .cidrBlock("172.16.1.0/24")
///             .build());
///
///         var defaultTAbr2pJ = new Switch("defaultTAbr2pJ", SwitchArgs.builder()
///             .vpcId(defaultR8vXlP.id())
///             .zoneId("cn-beijing-j")
///             .cidrBlock("172.16.2.0/24")
///             .build());
///
///         var default_ = new InstanceV2("default", InstanceV2Args.builder()
///             .standbyZoneId("cn-beijing-l")
///             .engineLists(InstanceV2EngineListArgs.builder()
///                 .engineType("TABLE")
///                 .nodeGroups(InstanceV2EngineListNodeGroupArgs.builder()
///                     .nodeCount(4)
///                     .nodeSpec("lindorm.g.2xlarge")
///                     .resourceGroupName("cx-mz-rg")
///                     .build())
///                 .build())
///             .cloudStorageSize(400)
///             .primaryZoneId("cn-beijing-h")
///             .zoneId("cn-beijing-h")
///             .cloudStorageType("PerformanceStorage")
///             .archVersion("2.0")
///             .vswitchId(default9umuzwH.id())
///             .standbyVswitchId(defaultgOFAo3L.id())
///             .primaryVswitchId(default9umuzwH.id())
///             .arbiterVswitchId(defaultTAbr2pJ.id())
///             .vpcId(defaultR8vXlP.id())
///             .instanceAlias("preTest-MZ")
///             .paymentType("POSTPAY")
///             .arbiterZoneId("cn-beijing-j")
///             .autoRenewal(false)
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
///   defaultR8vXlP:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/16
///   default9umuzwH:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultR8vXlP.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 172.16.0.0/24
///   defaultgOFAo3L:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultR8vXlP.id}
///       zoneId: cn-beijing-l
///       cidrBlock: 172.16.1.0/24
///   defaultTAbr2pJ:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultR8vXlP.id}
///       zoneId: cn-beijing-j
///       cidrBlock: 172.16.2.0/24
///   default:
///     type: alicloud:lindorm:InstanceV2
///     properties:
///       standbyZoneId: cn-beijing-l
///       engineLists:
///         - engineType: TABLE
///           nodeGroups:
///             - nodeCount: '4'
///               nodeSpec: lindorm.g.2xlarge
///               resourceGroupName: cx-mz-rg
///       cloudStorageSize: '400'
///       primaryZoneId: cn-beijing-h
///       zoneId: cn-beijing-h
///       cloudStorageType: PerformanceStorage
///       archVersion: '2.0'
///       vswitchId: ${default9umuzwH.id}
///       standbyVswitchId: ${defaultgOFAo3L.id}
///       primaryVswitchId: ${default9umuzwH.id}
///       arbiterVswitchId: ${defaultTAbr2pJ.id}
///       vpcId: ${defaultR8vXlP.id}
///       instanceAlias: preTest-MZ
///       paymentType: POSTPAY
///       arbiterZoneId: cn-beijing-j
///       autoRenewal: false
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Lindorm Instance V2 can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:lindorm/instanceV2:InstanceV2 example <id>
/// ```
class InstanceV2 extends pulumi.CustomResource {
  /// Coordination Zone VswitchId
  late final pulumi.Output<String?> arbiterVswitchId;
  /// Coordination Zone ZoneId
  late final pulumi.Output<String?> arbiterZoneId;
  /// Deployment Scenario
  ///
  /// Enumeration value:
  /// - **1.0**: Single Zone
  /// - **2.0**: Multi-AZ Basic Edition
  /// - **3.0**: Multi-AZ High Availability Edition
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String> archVersion;
  /// Automatic renewal duration. Unit: Month.
  ///
  /// Value range: `1` to `12`.
  ///
  /// > **NOTE:**  This item takes effect only when `AutoRenewal` is `true`.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> autoRenewDuration;
  /// Whether the instance is automatically renewed. Enumerated values:
  late final pulumi.Output<bool?> autoRenewal;
  /// The Sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  ///
  /// > **NOTE:**  Cloud storage capacity in GB
  late final pulumi.Output<int?> cloudStorageSize;
  /// Cloud storage type, the sales page storage type supports cloud storage and local sites. If you select cloud storage, this parameter is required.
  ///
  /// Enumeration value:
  /// - `StandardStorage`: Standard cloud storage
  /// - **Performance storage**: Performance-based cloud storage
  /// - **Capacity Storage**: Capacity-based cloud storage
  late final pulumi.Output<String?> cloudStorageType;
  /// Whether to enable deletion protection
  late final pulumi.Output<String> deletionProtection;
  /// The specified duration when the resource is purchased. Only the subscription instances are valid.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> duration;
  /// Engine List See `engine_list` below.
  late final pulumi.Output<List<InstanceV2EngineList>> engineLists;
  /// Instance name
  late final pulumi.Output<String> instanceAlias;
  /// Resource attribute fields representing payment types
  ///
  /// Enumeration value:
  /// - `PREPAY`: Prepaid mode
  /// - `POSTPAY`: Postpay mode
  late final pulumi.Output<String> paymentType;
  /// Purchase duration unit: Month, Year
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> pricingCycle;
  /// Primary zone VswitchId
  late final pulumi.Output<String?> primaryVswitchId;
  /// Primary zone ZoneID
  late final pulumi.Output<String?> primaryZoneId;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// Standby zone VswitchId
  late final pulumi.Output<String?> standbyVswitchId;
  /// Standby zone ZoneID
  late final pulumi.Output<String?> standbyZoneId;
  /// VpcId
  late final pulumi.Output<String> vpcId;
  /// VswitchId
  late final pulumi.Output<String> vswitchId;
  /// Instance whitelist list See `white_ip_list` below.
  late final pulumi.Output<List<InstanceV2WhiteIpList>> whiteIpLists;
  /// The zone ID  of the resource
  late final pulumi.Output<String> zoneId;

  /// Creates a new [InstanceV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceV2]. {@macro pulumi_lindorm_instance_v2_instance_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceV2(
    String name, {
    InstanceV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:lindorm/instanceV2:InstanceV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arbiterVswitchId = registerOutput<String?>('arbiterVswitchId');
    this.arbiterZoneId = registerOutput<String?>('arbiterZoneId');
    this.archVersion = registerOutput<String>('archVersion');
    this.autoRenewDuration = registerOutput<String?>('autoRenewDuration');
    this.autoRenewal = registerOutput<bool?>('autoRenewal');
    this.cloudStorageSize = registerOutput<int?>('cloudStorageSize');
    this.cloudStorageType = registerOutput<String?>('cloudStorageType');
    this.deletionProtection = registerOutput<String>('deletionProtection');
    this.duration = registerOutput<int?>('duration');
    this.engineLists = registerOutput<List<InstanceV2EngineList>>('engineLists');
    this.instanceAlias = registerOutput<String>('instanceAlias');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.primaryVswitchId = registerOutput<String?>('primaryVswitchId');
    this.primaryZoneId = registerOutput<String?>('primaryZoneId');
    this.regionId = registerOutput<String>('regionId');
    this.standbyVswitchId = registerOutput<String?>('standbyVswitchId');
    this.standbyZoneId = registerOutput<String?>('standbyZoneId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.whiteIpLists = registerOutput<List<InstanceV2WhiteIpList>>('whiteIpLists');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [InstanceV2] resource's state with the given [name] and [id].
  static InstanceV2 get(
    String name,
    pulumi.Input<String> id, {
    InstanceV2State? state,
  }) {
    return InstanceV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:lindorm/instanceV2:InstanceV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arbiterVswitchId = registerOutput<String?>('arbiterVswitchId');
    this.arbiterZoneId = registerOutput<String?>('arbiterZoneId');
    this.archVersion = registerOutput<String>('archVersion');
    this.autoRenewDuration = registerOutput<String?>('autoRenewDuration');
    this.autoRenewal = registerOutput<bool?>('autoRenewal');
    this.cloudStorageSize = registerOutput<int?>('cloudStorageSize');
    this.cloudStorageType = registerOutput<String?>('cloudStorageType');
    this.deletionProtection = registerOutput<String>('deletionProtection');
    this.duration = registerOutput<int?>('duration');
    this.engineLists = registerOutput<List<InstanceV2EngineList>>('engineLists');
    this.instanceAlias = registerOutput<String>('instanceAlias');
    this.paymentType = registerOutput<String>('paymentType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.primaryVswitchId = registerOutput<String?>('primaryVswitchId');
    this.primaryZoneId = registerOutput<String?>('primaryZoneId');
    this.regionId = registerOutput<String>('regionId');
    this.standbyVswitchId = registerOutput<String?>('standbyVswitchId');
    this.standbyZoneId = registerOutput<String?>('standbyZoneId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.whiteIpLists = registerOutput<List<InstanceV2WhiteIpList>>('whiteIpLists');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
