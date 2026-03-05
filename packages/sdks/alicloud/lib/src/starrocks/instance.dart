import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Star Rocks Instance resource.
///
/// StarRocks resource instance.
///
/// For information about Star Rocks Instance and how to use it, see [What is Instance](https://next.api.alibabacloud.com/document/starrocks/2022-10-19/CreateInstanceV1).
///
/// &gt; **NOTE:** Available since v1.256.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultB21JUD = new alicloud.vpc.Network("defaultB21JUD", {cidrBlock: "172.16.0.0/12"});
/// const default106DkE = new alicloud.vpc.Switch("default106DkE", {
///     vpcId: defaultB21JUD.id,
///     cidrBlock: "172.16.1.0/24",
///     vswitchName: "sr-example",
///     zoneId: "cn-hangzhou-i",
/// });
/// const defaultInstance = new alicloud.starrocks.Instance("default", {
///     instanceName: "create-instance-1",
///     autoRenew: false,
///     frontendNodeGroups: [{
///         cu: 8,
///         storageSize: 100,
///         residentNodeNumber: 3,
///         storagePerformanceLevel: "pl1",
///         specType: "standard",
///         diskNumber: 1,
///         zoneId: "cn-hangzhou-i",
///         localStorageInstanceType: "null",
///     }],
///     vswitches: [{
///         vswitchId: default106DkE.id,
///         zoneId: "cn-hangzhou-i",
///     }],
///     backendNodeGroups: [{
///         cu: 8,
///         storageSize: 100,
///         residentNodeNumber: 3,
///         diskNumber: 1,
///         storagePerformanceLevel: "pl1",
///         specType: "standard",
///         zoneId: "cn-hangzhou-i",
///         localStorageInstanceType: "null",
///     }],
///     clusterZoneId: "cn-hangzhou-i",
///     duration: 1,
///     payType: "postPaid",
///     vpcId: defaultB21JUD.id,
///     version: "3.3",
///     runMode: "shared_data",
///     packageType: "official",
///     adminPassword: "1qaz@QAZ",
///     ossAccessingRoleName: "AliyunEMRStarRocksAccessingOSSRole",
///     pricingCycle: "Month",
///     kmsKeyId: "123",
///     promotionOptionNo: "123",
///     encrypted: false,
///     observerNodeGroups: [{
///         cu: 8,
///         storageSize: 100,
///         storagePerformanceLevel: "pl1",
///         diskNumber: 1,
///         residentNodeNumber: 1,
///         specType: "standard",
///         localStorageInstanceType: "null",
///         zoneId: "cn-hangzhou-h",
///     }],
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_b21_jud = alicloud.vpc.Network("defaultB21JUD", cidr_block="172.16.0.0/12")
/// default106_dk_e = alicloud.vpc.Switch("default106DkE",
///     vpc_id=default_b21_jud.id,
///     cidr_block="172.16.1.0/24",
///     vswitch_name="sr-example",
///     zone_id="cn-hangzhou-i")
/// default_instance = alicloud.starrocks.Instance("default",
///     instance_name="create-instance-1",
///     auto_renew=False,
///     frontend_node_groups=[{
///         "cu": 8,
///         "storage_size": 100,
///         "resident_node_number": 3,
///         "storage_performance_level": "pl1",
///         "spec_type": "standard",
///         "disk_number": 1,
///         "zone_id": "cn-hangzhou-i",
///         "local_storage_instance_type": "null",
///     }],
///     vswitches=[{
///         "vswitch_id": default106_dk_e.id,
///         "zone_id": "cn-hangzhou-i",
///     }],
///     backend_node_groups=[{
///         "cu": 8,
///         "storage_size": 100,
///         "resident_node_number": 3,
///         "disk_number": 1,
///         "storage_performance_level": "pl1",
///         "spec_type": "standard",
///         "zone_id": "cn-hangzhou-i",
///         "local_storage_instance_type": "null",
///     }],
///     cluster_zone_id="cn-hangzhou-i",
///     duration=1,
///     pay_type="postPaid",
///     vpc_id=default_b21_jud.id,
///     version="3.3",
///     run_mode="shared_data",
///     package_type="official",
///     admin_password="1qaz@QAZ",
///     oss_accessing_role_name="AliyunEMRStarRocksAccessingOSSRole",
///     pricing_cycle="Month",
///     kms_key_id="123",
///     promotion_option_no="123",
///     encrypted=False,
///     observer_node_groups=[{
///         "cu": 8,
///         "storage_size": 100,
///         "storage_performance_level": "pl1",
///         "disk_number": 1,
///         "resident_node_number": 1,
///         "spec_type": "standard",
///         "local_storage_instance_type": "null",
///         "zone_id": "cn-hangzhou-h",
///     }])
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultB21JUD = new AliCloud.Vpc.Network("defaultB21JUD", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var default106DkE = new AliCloud.Vpc.Switch("default106DkE", new()
///     {
///         VpcId = defaultB21JUD.Id,
///         CidrBlock = "172.16.1.0/24",
///         VswitchName = "sr-example",
///         ZoneId = "cn-hangzhou-i",
///     });
///
///     var defaultInstance = new AliCloud.StarRocks.Instance("default", new()
///     {
///         InstanceName = "create-instance-1",
///         AutoRenew = false,
///         FrontendNodeGroups = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceFrontendNodeGroupArgs
///             {
///                 Cu = 8,
///                 StorageSize = 100,
///                 ResidentNodeNumber = 3,
///                 StoragePerformanceLevel = "pl1",
///                 SpecType = "standard",
///                 DiskNumber = 1,
///                 ZoneId = "cn-hangzhou-i",
///                 LocalStorageInstanceType = "null",
///             },
///         },
///         Vswitches = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceVswitchArgs
///             {
///                 VswitchId = default106DkE.Id,
///                 ZoneId = "cn-hangzhou-i",
///             },
///         },
///         BackendNodeGroups = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceBackendNodeGroupArgs
///             {
///                 Cu = 8,
///                 StorageSize = 100,
///                 ResidentNodeNumber = 3,
///                 DiskNumber = 1,
///                 StoragePerformanceLevel = "pl1",
///                 SpecType = "standard",
///                 ZoneId = "cn-hangzhou-i",
///                 LocalStorageInstanceType = "null",
///             },
///         },
///         ClusterZoneId = "cn-hangzhou-i",
///         Duration = 1,
///         PayType = "postPaid",
///         VpcId = defaultB21JUD.Id,
///         Version = "3.3",
///         RunMode = "shared_data",
///         PackageType = "official",
///         AdminPassword = "1qaz@QAZ",
///         OssAccessingRoleName = "AliyunEMRStarRocksAccessingOSSRole",
///         PricingCycle = "Month",
///         KmsKeyId = "123",
///         PromotionOptionNo = "123",
///         Encrypted = false,
///         ObserverNodeGroups = new[]
///         {
///             new AliCloud.starRocks.Inputs.InstanceObserverNodeGroupArgs
///             {
///                 Cu = 8,
///                 StorageSize = 100,
///                 StoragePerformanceLevel = "pl1",
///                 DiskNumber = 1,
///                 ResidentNodeNumber = 1,
///                 SpecType = "standard",
///                 LocalStorageInstanceType = "null",
///                 ZoneId = "cn-hangzhou-h",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultB21JUD, err := vpc.NewNetwork(ctx, "defaultB21JUD", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default106DkE, err := vpc.NewSwitch(ctx, "default106DkE", &vpc.SwitchArgs{
/// 			VpcId:       defaultB21JUD.ID(),
/// 			CidrBlock:   pulumi.String("172.16.1.0/24"),
/// 			VswitchName: pulumi.String("sr-example"),
/// 			ZoneId:      pulumi.String("cn-hangzhou-i"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = starrocks.NewInstance(ctx, "default", &starrocks.InstanceArgs{
/// 			InstanceName: pulumi.String("create-instance-1"),
/// 			AutoRenew:    pulumi.Bool(false),
/// 			FrontendNodeGroups: starrocks.InstanceFrontendNodeGroupArray{
/// 				&starrocks.InstanceFrontendNodeGroupArgs{
/// 					Cu:                       pulumi.Int(8),
/// 					StorageSize:              pulumi.Int(100),
/// 					ResidentNodeNumber:       pulumi.Int(3),
/// 					StoragePerformanceLevel:  pulumi.String("pl1"),
/// 					SpecType:                 pulumi.String("standard"),
/// 					DiskNumber:               pulumi.Int(1),
/// 					ZoneId:                   pulumi.String("cn-hangzhou-i"),
/// 					LocalStorageInstanceType: pulumi.String("null"),
/// 				},
/// 			},
/// 			Vswitches: starrocks.InstanceVswitchArray{
/// 				&starrocks.InstanceVswitchArgs{
/// 					VswitchId: default106DkE.ID(),
/// 					ZoneId:    pulumi.String("cn-hangzhou-i"),
/// 				},
/// 			},
/// 			BackendNodeGroups: starrocks.InstanceBackendNodeGroupArray{
/// 				&starrocks.InstanceBackendNodeGroupArgs{
/// 					Cu:                       pulumi.Int(8),
/// 					StorageSize:              pulumi.Int(100),
/// 					ResidentNodeNumber:       pulumi.Int(3),
/// 					DiskNumber:               pulumi.Int(1),
/// 					StoragePerformanceLevel:  pulumi.String("pl1"),
/// 					SpecType:                 pulumi.String("standard"),
/// 					ZoneId:                   pulumi.String("cn-hangzhou-i"),
/// 					LocalStorageInstanceType: pulumi.String("null"),
/// 				},
/// 			},
/// 			ClusterZoneId:        pulumi.String("cn-hangzhou-i"),
/// 			Duration:             pulumi.Int(1),
/// 			PayType:              pulumi.String("postPaid"),
/// 			VpcId:                defaultB21JUD.ID(),
/// 			Version:              pulumi.String("3.3"),
/// 			RunMode:              pulumi.String("shared_data"),
/// 			PackageType:          pulumi.String("official"),
/// 			AdminPassword:        pulumi.String("1qaz@QAZ"),
/// 			OssAccessingRoleName: pulumi.String("AliyunEMRStarRocksAccessingOSSRole"),
/// 			PricingCycle:         pulumi.String("Month"),
/// 			KmsKeyId:             pulumi.String("123"),
/// 			PromotionOptionNo:    pulumi.String("123"),
/// 			Encrypted:            pulumi.Bool(false),
/// 			ObserverNodeGroups: starrocks.InstanceObserverNodeGroupArray{
/// 				&starrocks.InstanceObserverNodeGroupArgs{
/// 					Cu:                       pulumi.Int(8),
/// 					StorageSize:              pulumi.Int(100),
/// 					StoragePerformanceLevel:  pulumi.String("pl1"),
/// 					DiskNumber:               pulumi.Int(1),
/// 					ResidentNodeNumber:       pulumi.Int(1),
/// 					SpecType:                 pulumi.String("standard"),
/// 					LocalStorageInstanceType: pulumi.String("null"),
/// 					ZoneId:                   pulumi.String("cn-hangzhou-h"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.starrocks.Instance;
/// import com.pulumi.alicloud.starrocks.InstanceArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceFrontendNodeGroupArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceVswitchArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceBackendNodeGroupArgs;
/// import com.pulumi.alicloud.starrocks.inputs.InstanceObserverNodeGroupArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultB21JUD = new Network("defaultB21JUD", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var default106DkE = new Switch("default106DkE", SwitchArgs.builder()
///             .vpcId(defaultB21JUD.id())
///             .cidrBlock("172.16.1.0/24")
///             .vswitchName("sr-example")
///             .zoneId("cn-hangzhou-i")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .instanceName("create-instance-1")
///             .autoRenew(false)
///             .frontendNodeGroups(InstanceFrontendNodeGroupArgs.builder()
///                 .cu(8)
///                 .storageSize(100)
///                 .residentNodeNumber(3)
///                 .storagePerformanceLevel("pl1")
///                 .specType("standard")
///                 .diskNumber(1)
///                 .zoneId("cn-hangzhou-i")
///                 .localStorageInstanceType("null")
///                 .build())
///             .vswitches(InstanceVswitchArgs.builder()
///                 .vswitchId(default106DkE.id())
///                 .zoneId("cn-hangzhou-i")
///                 .build())
///             .backendNodeGroups(InstanceBackendNodeGroupArgs.builder()
///                 .cu(8)
///                 .storageSize(100)
///                 .residentNodeNumber(3)
///                 .diskNumber(1)
///                 .storagePerformanceLevel("pl1")
///                 .specType("standard")
///                 .zoneId("cn-hangzhou-i")
///                 .localStorageInstanceType("null")
///                 .build())
///             .clusterZoneId("cn-hangzhou-i")
///             .duration(1)
///             .payType("postPaid")
///             .vpcId(defaultB21JUD.id())
///             .version("3.3")
///             .runMode("shared_data")
///             .packageType("official")
///             .adminPassword("1qaz@QAZ")
///             .ossAccessingRoleName("AliyunEMRStarRocksAccessingOSSRole")
///             .pricingCycle("Month")
///             .kmsKeyId("123")
///             .promotionOptionNo("123")
///             .encrypted(false)
///             .observerNodeGroups(InstanceObserverNodeGroupArgs.builder()
///                 .cu(8)
///                 .storageSize(100)
///                 .storagePerformanceLevel("pl1")
///                 .diskNumber(1)
///                 .residentNodeNumber(1)
///                 .specType("standard")
///                 .localStorageInstanceType("null")
///                 .zoneId("cn-hangzhou-h")
///                 .build())
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
///   defaultB21JUD:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///   default106DkE:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultB21JUD.id}
///       cidrBlock: 172.16.1.0/24
///       vswitchName: sr-example
///       zoneId: cn-hangzhou-i
///   defaultInstance:
///     type: alicloud:starrocks:Instance
///     name: default
///     properties:
///       instanceName: create-instance-1
///       autoRenew: false
///       frontendNodeGroups:
///         - cu: '8'
///           storageSize: '100'
///           residentNodeNumber: '3'
///           storagePerformanceLevel: pl1
///           specType: standard
///           diskNumber: '1'
///           zoneId: cn-hangzhou-i
///           localStorageInstanceType: null
///       vswitches:
///         - vswitchId: ${default106DkE.id}
///           zoneId: cn-hangzhou-i
///       backendNodeGroups:
///         - cu: '8'
///           storageSize: '100'
///           residentNodeNumber: '3'
///           diskNumber: '1'
///           storagePerformanceLevel: pl1
///           specType: standard
///           zoneId: cn-hangzhou-i
///           localStorageInstanceType: null
///       clusterZoneId: cn-hangzhou-i
///       duration: '1'
///       payType: postPaid
///       vpcId: ${defaultB21JUD.id}
///       version: '3.3'
///       runMode: shared_data
///       packageType: official
///       adminPassword: 1qaz@QAZ
///       ossAccessingRoleName: AliyunEMRStarRocksAccessingOSSRole
///       pricingCycle: Month
///       kmsKeyId: '123'
///       promotionOptionNo: '123'
///       encrypted: false
///       observerNodeGroups:
///         - cu: '8'
///           storageSize: '100'
///           storagePerformanceLevel: pl1
///           diskNumber: '1'
///           residentNodeNumber: '1'
///           specType: standard
///           localStorageInstanceType: null
///           zoneId: cn-hangzhou-h
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Star Rocks Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:starrocks/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Password of admin user.
  late final pulumi.Output<String> adminPassword;
  /// Whether to enable automatic renewal. This is only meaningful when payType is set to PrePaid. Disabled by default.
  late final pulumi.Output<bool?> autoRenew;
  /// BackendNodeGroups See `backend_node_groups` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> backendNodeGroups;
  /// ZoneId of instance.
  late final pulumi.Output<String> clusterZoneId;
  /// The creation time of the instance.
  late final pulumi.Output<String> createTime;
  /// Duration of purchase. It is only meaningful when payType is set to PrePaid.
  late final pulumi.Output<int?> duration;
  /// Whether encrypted
  late final pulumi.Output<bool?> encrypted;
  /// FrontendNodeGroups See `frontend_node_groups` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> frontendNodeGroups;
  /// The name of the instance.
  late final pulumi.Output<String> instanceName;
  /// KmsKeyId
  late final pulumi.Output<String?> kmsKeyId;
  /// ObserverNodeGroups See `observer_node_groups` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> observerNodeGroups;
  /// Role name used for password-free access to OSS.
  late final pulumi.Output<String?> ossAccessingRoleName;
  /// The package type of the instance:
  /// - trial
  /// - official
  late final pulumi.Output<String> packageType;
  /// The pay type of the instance:
  /// - prePaid
  /// - postPaid
  late final pulumi.Output<String> payType;
  /// The duration unit for purchasing:
  /// - Month
  /// - Year
  /// This is only meaningful when PayType is set to PrePaid.
  late final pulumi.Output<String?> pricingCycle;
  /// Promotion
  late final pulumi.Output<String?> promotionOptionNo;
  /// The region ID of the instance.
  late final pulumi.Output<String> regionId;
  /// ResourceGroupId
  late final pulumi.Output<String> resourceGroupId;
  /// The run mode of the instance:
  /// - shared_nothing
  /// - shared_data
  /// - lakehouse
  late final pulumi.Output<String> runMode;
  /// The status of the instance.
  late final pulumi.Output<String> status;
  /// Tag list of the instance.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The version of the instance.
  late final pulumi.Output<String> version;
  /// The VPC ID of the instance.
  late final pulumi.Output<String> vpcId;
  /// The VSwitches info of the instance. See `vswitches` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> vswitches;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_starrocks_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:starrocks/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminPassword = registerOutput<String>('adminPassword');
    autoRenew = registerOutput<bool?>('autoRenew');
    backendNodeGroups = registerOutput<List<Map<String, dynamic>>?>('backendNodeGroups');
    clusterZoneId = registerOutput<String>('clusterZoneId');
    createTime = registerOutput<String>('createTime');
    duration = registerOutput<int?>('duration');
    encrypted = registerOutput<bool?>('encrypted');
    frontendNodeGroups = registerOutput<List<Map<String, dynamic>>?>('frontendNodeGroups');
    instanceName = registerOutput<String>('instanceName');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    observerNodeGroups = registerOutput<List<Map<String, dynamic>>?>('observerNodeGroups');
    ossAccessingRoleName = registerOutput<String?>('ossAccessingRoleName');
    packageType = registerOutput<String>('packageType');
    payType = registerOutput<String>('payType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    runMode = registerOutput<String>('runMode');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    vpcId = registerOutput<String>('vpcId');
    vswitches = registerOutput<List<Map<String, dynamic>>?>('vswitches');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:starrocks/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminPassword = registerOutput<String>('adminPassword');
    autoRenew = registerOutput<bool?>('autoRenew');
    backendNodeGroups = registerOutput<List<Map<String, dynamic>>?>('backendNodeGroups');
    clusterZoneId = registerOutput<String>('clusterZoneId');
    createTime = registerOutput<String>('createTime');
    duration = registerOutput<int?>('duration');
    encrypted = registerOutput<bool?>('encrypted');
    frontendNodeGroups = registerOutput<List<Map<String, dynamic>>?>('frontendNodeGroups');
    instanceName = registerOutput<String>('instanceName');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    observerNodeGroups = registerOutput<List<Map<String, dynamic>>?>('observerNodeGroups');
    ossAccessingRoleName = registerOutput<String?>('ossAccessingRoleName');
    packageType = registerOutput<String>('packageType');
    payType = registerOutput<String>('payType');
    pricingCycle = registerOutput<String?>('pricingCycle');
    promotionOptionNo = registerOutput<String?>('promotionOptionNo');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    runMode = registerOutput<String>('runMode');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
    vpcId = registerOutput<String>('vpcId');
    vswitches = registerOutput<List<Map<String, dynamic>>?>('vswitches');
  }
}
