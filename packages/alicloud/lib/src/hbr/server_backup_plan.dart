import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_backup_plan_args.dart';
import 'server_backup_plan_detail.dart';

/// Provides a Hybrid Backup Recovery (HBR) Server Backup Plan resource.
///
/// For information about Hybrid Backup Recovery (HBR) Server Backup Plan and how to use it, see [What is Server Backup Plan](https://www.alibabacloud.com/help/doc-detail/211140.htm).
///
/// > **NOTE:** Available since v1.142.0.
///
/// > **NOTE:** Deprecated since v1.249.0.
///
/// > **DEPRECATED:** This resource has been deprecated from version `1.249.0`. Please use new resource alicloud.hbr.Policy and alicloud_hbr_policy_binding.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const exampleGetInstanceTypes = example.then(example => alicloud.ecs.getInstanceTypes({
///     availabilityZone: example.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const exampleGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[0]?.id),
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: "terraform-example",
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.ecs.Instance("example", {
///     imageId: exampleGetImages.then(exampleGetImages => exampleGetImages.images?.[0]?.id),
///     instanceType: exampleGetInstanceTypes.then(exampleGetInstanceTypes => exampleGetInstanceTypes.instanceTypes?.[0]?.id),
///     availabilityZone: example.then(example => example.zones?.[0]?.id),
///     securityGroups: [exampleSecurityGroup.id],
///     instanceName: "terraform-example",
///     internetChargeType: "PayByBandwidth",
///     vswitchId: exampleSwitch.id,
/// });
/// const exampleServerBackupPlan = new alicloud.hbr.ServerBackupPlan("example", {
///     ecsServerBackupPlanName: "terraform-example",
///     instanceId: exampleInstance.id,
///     schedule: "I|1602673264|PT2H",
///     retention: 1,
///     details: [{
///         appConsistent: true,
///         snapshotGroup: true,
///     }],
///     disabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.get_zones(available_resource_creation="Instance")
/// example_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=example.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// example_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[0].id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name="terraform-example",
///     vpc_id=example_network.id)
/// example_instance = alicloud.ecs.Instance("example",
///     image_id=example_get_images.images[0].id,
///     instance_type=example_get_instance_types.instance_types[0].id,
///     availability_zone=example.zones[0].id,
///     security_groups=[example_security_group.id],
///     instance_name="terraform-example",
///     internet_charge_type="PayByBandwidth",
///     vswitch_id=example_switch.id)
/// example_server_backup_plan = alicloud.hbr.ServerBackupPlan("example",
///     ecs_server_backup_plan_name="terraform-example",
///     instance_id=example_instance.id,
///     schedule="I|1602673264|PT2H",
///     retention=1,
///     details=[{
///         "app_consistent": True,
///         "snapshot_group": True,
///     }],
///     disabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var exampleGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var exampleGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = "terraform-example",
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Ecs.Instance("example", new()
///     {
///         ImageId = exampleGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = exampleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         SecurityGroups = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         InstanceName = "terraform-example",
///         InternetChargeType = "PayByBandwidth",
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var exampleServerBackupPlan = new AliCloud.Hbr.ServerBackupPlan("example", new()
///     {
///         EcsServerBackupPlanName = "terraform-example",
///         InstanceId = exampleInstance.Id,
///         Schedule = "I|1602673264|PT2H",
///         Retention = 1,
///         Details = new[]
///         {
///             new AliCloud.Hbr.Inputs.ServerBackupPlanDetailArgs
///             {
///                 AppConsistent = true,
///                 SnapshotGroup = true,
///             },
///         },
///         Disabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(example.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("terraform-example"),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := ecs.NewInstance(ctx, "example", &ecs.InstanceArgs{
/// 			ImageId:          pulumi.String(exampleGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(exampleGetInstanceTypes.InstanceTypes[0].Id),
/// 			AvailabilityZone: pulumi.String(example.Zones[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			InstanceName:       pulumi.String("terraform-example"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			VswitchId:          exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewServerBackupPlan(ctx, "example", &hbr.ServerBackupPlanArgs{
/// 			EcsServerBackupPlanName: pulumi.String("terraform-example"),
/// 			InstanceId:              exampleInstance.ID(),
/// 			Schedule:                pulumi.String("I|1602673264|PT2H"),
/// 			Retention:               pulumi.Int(1),
/// 			Details: hbr.ServerBackupPlanDetailArray{
/// 				&hbr.ServerBackupPlanDetailArgs{
/// 					AppConsistent: pulumi.Bool(true),
/// 					SnapshotGroup: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Disabled: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.hbr.ServerBackupPlan;
/// import com.pulumi.alicloud.hbr.ServerBackupPlanArgs;
/// import com.pulumi.alicloud.hbr.inputs.ServerBackupPlanDetailArgs;
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
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var exampleGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(example.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var exampleGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[0].id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name("terraform-example")
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .imageId(exampleGetImages.images()[0].id())
///             .instanceType(exampleGetInstanceTypes.instanceTypes()[0].id())
///             .availabilityZone(example.zones()[0].id())
///             .securityGroups(exampleSecurityGroup.id())
///             .instanceName("terraform-example")
///             .internetChargeType("PayByBandwidth")
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var exampleServerBackupPlan = new ServerBackupPlan("exampleServerBackupPlan", ServerBackupPlanArgs.builder()
///             .ecsServerBackupPlanName("terraform-example")
///             .instanceId(exampleInstance.id())
///             .schedule("I|1602673264|PT2H")
///             .retention(1)
///             .details(ServerBackupPlanDetailArgs.builder()
///                 .appConsistent(true)
///                 .snapshotGroup(true)
///                 .build())
///             .disabled(false)
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
///       cidrBlock: 172.17.3.0/24
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[0].id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: terraform-example
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:ecs:Instance
///     name: example
///     properties:
///       imageId: ${exampleGetImages.images[0].id}
///       instanceType: ${exampleGetInstanceTypes.instanceTypes[0].id}
///       availabilityZone: ${example.zones[0].id}
///       securityGroups:
///         - ${exampleSecurityGroup.id}
///       instanceName: terraform-example
///       internetChargeType: PayByBandwidth
///       vswitchId: ${exampleSwitch.id}
///   exampleServerBackupPlan:
///     type: alicloud:hbr:ServerBackupPlan
///     name: example
///     properties:
///       ecsServerBackupPlanName: terraform-example
///       instanceId: ${exampleInstance.id}
///       schedule: I|1602673264|PT2H
///       retention: 1
///       details:
///         - appConsistent: true
///           snapshotGroup: true
///       disabled: false
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   exampleGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${example.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   exampleGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Server Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/serverBackupPlan:ServerBackupPlan example <id>
/// ```
class ServerBackupPlan extends pulumi.CustomResource {
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  late final pulumi.Output<String?> crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  late final pulumi.Output<String> crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  late final pulumi.Output<int?> crossAccountUserId;
  /// ECS server backup plan details.
  late final pulumi.Output<List<ServerBackupPlanDetail>> details;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  late final pulumi.Output<bool> disabled;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  late final pulumi.Output<String> ecsServerBackupPlanName;
  /// The ID of ECS instance.
  late final pulumi.Output<String> instanceId;
  /// Backup retention days, the minimum is 1.
  late final pulumi.Output<int> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`
  /// * `startTime` Backup start time, UNIX time, in seconds.
  late final pulumi.Output<String> schedule;

  /// Creates a new [ServerBackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerBackupPlan]. {@macro pulumi_hbr_server_backup_plan_server_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerBackupPlan(
    String name, {
    ServerBackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/serverBackupPlan:ServerBackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.details = registerOutput<List<ServerBackupPlanDetail>>('details');
    this.disabled = registerOutput<bool>('disabled');
    this.ecsServerBackupPlanName = registerOutput<String>('ecsServerBackupPlanName');
    this.instanceId = registerOutput<String>('instanceId');
    this.retention = registerOutput<int>('retention');
    this.schedule = registerOutput<String>('schedule');
  }
}
