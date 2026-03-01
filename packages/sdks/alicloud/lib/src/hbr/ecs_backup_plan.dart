import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_backup_plan_args.dart';
import 'ecs_backup_plan_state.dart';

/// Provides a HBR Ecs Backup Plan resource.
///
/// For information about HBR Ecs Backup Plan and how to use it, see [What is Ecs Backup Plan](https://www.alibabacloud.com/help/doc-detail/186574.htm).
///
/// > **NOTE:** Available since v1.132.0.
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
/// import * as random from "@pulumi/random";
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const exampleVault = new alicloud.hbr.Vault("example", {vaultName: `terraform-example-${_default.result}`});
/// const exampleEcsBackupPlan = new alicloud.hbr.EcsBackupPlan("example", {
///     ecsBackupPlanName: "terraform-example",
///     instanceId: exampleInstance.id,
///     vaultId: exampleVault.id,
///     retention: "1",
///     schedule: "I|1602673264|PT2H",
///     backupType: "COMPLETE",
///     speedLimit: "0:24:5120",
///     paths: [
///         "/home",
///         "/var",
///     ],
///     exclude: "  [\\\"/home/exclude\\\"]\n",
///     include: "  [\\\"/home/include\\\"]\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
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
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example_vault = alicloud.hbr.Vault("example", vault_name=f"terraform-example-{default['result']}")
/// example_ecs_backup_plan = alicloud.hbr.EcsBackupPlan("example",
///     ecs_backup_plan_name="terraform-example",
///     instance_id=example_instance.id,
///     vault_id=example_vault.id,
///     retention="1",
///     schedule="I|1602673264|PT2H",
///     backup_type="COMPLETE",
///     speed_limit="0:24:5120",
///     paths=[
///         "/home",
///         "/var",
///     ],
///     exclude="  [\\\"/home/exclude\\\"]\n",
///     include="  [\\\"/home/include\\\"]\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var exampleVault = new AliCloud.Hbr.Vault("example", new()
///     {
///         VaultName = $"terraform-example-{@default.Result}",
///     });
///
///     var exampleEcsBackupPlan = new AliCloud.Hbr.EcsBackupPlan("example", new()
///     {
///         EcsBackupPlanName = "terraform-example",
///         InstanceId = exampleInstance.Id,
///         VaultId = exampleVault.Id,
///         Retention = "1",
///         Schedule = "I|1602673264|PT2H",
///         BackupType = "COMPLETE",
///         SpeedLimit = "0:24:5120",
///         Paths = new[]
///         {
///             "/home",
///             "/var",
///         },
///         Exclude = @"  [\""/home/exclude\""]
/// ",
///         Include = @"  [\""/home/include\""]
/// ",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := hbr.NewVault(ctx, "example", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewEcsBackupPlan(ctx, "example", &hbr.EcsBackupPlanArgs{
/// 			EcsBackupPlanName: pulumi.String("terraform-example"),
/// 			InstanceId:        exampleInstance.ID(),
/// 			VaultId:           exampleVault.ID(),
/// 			Retention:         pulumi.String("1"),
/// 			Schedule:          pulumi.String("I|1602673264|PT2H"),
/// 			BackupType:        pulumi.String("COMPLETE"),
/// 			SpeedLimit:        pulumi.String("0:24:5120"),
/// 			Paths: pulumi.StringArray{
/// 				pulumi.String("/home"),
/// 				pulumi.String("/var"),
/// 			},
/// 			Exclude: pulumi.String("  [\\\"/home/exclude\\\"]\n"),
/// 			Include: pulumi.String("  [\\\"/home/include\\\"]\n"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.hbr.EcsBackupPlan;
/// import com.pulumi.alicloud.hbr.EcsBackupPlanArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var exampleEcsBackupPlan = new EcsBackupPlan("exampleEcsBackupPlan", EcsBackupPlanArgs.builder()
///             .ecsBackupPlanName("terraform-example")
///             .instanceId(exampleInstance.id())
///             .vaultId(exampleVault.id())
///             .retention("1")
///             .schedule("I|1602673264|PT2H")
///             .backupType("COMPLETE")
///             .speedLimit("0:24:5120")
///             .paths(
///                 "/home",
///                 "/var")
///             .exclude("""
///   [\"/home/exclude\"]
///             """)
///             .include("""
///   [\"/home/include\"]
///             """)
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
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   exampleVault:
///     type: alicloud:hbr:Vault
///     name: example
///     properties:
///       vaultName: terraform-example-${default.result}
///   exampleEcsBackupPlan:
///     type: alicloud:hbr:EcsBackupPlan
///     name: example
///     properties:
///       ecsBackupPlanName: terraform-example
///       instanceId: ${exampleInstance.id}
///       vaultId: ${exampleVault.id}
///       retention: '1'
///       schedule: I|1602673264|PT2H
///       backupType: COMPLETE
///       speedLimit: 0:24:5120
///       paths:
///         - /home
///         - /var
///       exclude: |2
///           [\"/home/exclude\"]
///       include: |2
///           [\"/home/include\"]
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
/// ## Notice
///
/// **About Backup path rules:**
/// 1. If there is no wildcard `*`, you can enter 8 items of path.
/// 2. When using wildcard `*`, only one item of path can be input, and wildcards like `/*/*` are supported.
/// 3. Each item of path only supports absolute paths, for example starting with `/`, `\`, `C:\`, `D:\`.
///
/// **About Restrictions:**
/// 1. When using `VSS`: multiple paths, UNC paths, wildcards, and excluded files not supported.
/// 2. When using `UNC`: VSS not supported, wildcards not supported, and files to be excluded are not supported.
///
/// **About include/exclude path rules:**
/// 1. Supports up to 8 paths, including paths using wildcards `*`.
/// 2. If the path does not contain `/`, then `*` matches multiple path names or file names, for example `*abc*` will match `/abc/`, `/d/eabcd/`, `/a/abc`; `*.txt` will match all files with an extension `.txt`.
/// 3. If the path contains `/`, each `*` only matches a single-level path or file name. For example, `/a/*/*/` share will match `/a/b/c/share`, but not `/a/d/share`.
/// 4. If the path ends with `/`, it means the folder matches. For example, `*tmp/` will match `/a/b/aaatmp/`, `/tmp/` and so on.
/// 5. The path separator takes Linux system `/` as an example, if it is Windows system, please replace it with `\`.
///
/// ## Import
///
/// HBR Ecs Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/ecsBackupPlan:EcsBackupPlan example <id>
/// ```
class EcsBackupPlan extends pulumi.CustomResource {
  /// Backup type. Valid values: `COMPLETE`.
  late final pulumi.Output<String> backupType;
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  late final pulumi.Output<String?> crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  late final pulumi.Output<String> crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  late final pulumi.Output<int?> crossAccountUserId;
  /// The detail of the backup plan.
  late final pulumi.Output<String?> detail;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  late final pulumi.Output<bool> disabled;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  late final pulumi.Output<String> ecsBackupPlanName;
  /// Exclude path. String of Json list, up to 255 characters. e.g. `"[\"/home/work\"]"`
  late final pulumi.Output<String?> exclude;
  /// Include path. String of Json list, up to 255 characters. e.g. `"[\"/var\"]"`
  late final pulumi.Output<String?> include;
  /// The ID of ECS instance. The ecs backup client must have been installed on the host.
  late final pulumi.Output<String> instanceId;
  /// Windows operating system with application consistency using VSS, e.g: `{\"UseVSS\":false}`.
  late final pulumi.Output<String?> options;
  /// List of backup path. e.g. `["/home", "/var"]`. **Note** If `path` is empty, it means that all directories will be backed up.
  late final pulumi.Output<List<String>?> paths;
  /// Backup retention days, the minimum is 1.
  late final pulumi.Output<String> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  late final pulumi.Output<String> schedule;
  /// Flow control. The format is: `{start}|{end}|{bandwidth}`. Use `|` to separate multiple flow control configurations, multiple flow control configurations not allowed to have overlapping times.
  late final pulumi.Output<String?> speedLimit;
  /// Attribute update_paths has been deprecated in v1.139.0+, and you do not need to set it anymore.
  late final pulumi.Output<bool?> updatePaths;
  /// The ID of Backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [EcsBackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsBackupPlan]. {@macro pulumi_hbr_ecs_backup_plan_ecs_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsBackupPlan(
    String name, {
    EcsBackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/ecsBackupPlan:EcsBackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupType = registerOutput<String>('backupType');
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.detail = registerOutput<String?>('detail');
    this.disabled = registerOutput<bool>('disabled');
    this.ecsBackupPlanName = registerOutput<String>('ecsBackupPlanName');
    this.exclude = registerOutput<String?>('exclude');
    this.include = registerOutput<String?>('include');
    this.instanceId = registerOutput<String>('instanceId');
    this.options = registerOutput<String?>('options');
    this.paths = registerOutput<List<String>?>('paths');
    this.retention = registerOutput<String>('retention');
    this.schedule = registerOutput<String>('schedule');
    this.speedLimit = registerOutput<String?>('speedLimit');
    this.updatePaths = registerOutput<bool?>('updatePaths');
    this.vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [EcsBackupPlan] resource's state with the given [name] and [id].
  static EcsBackupPlan get(
    String name,
    pulumi.Input<String> id, {
    EcsBackupPlanState? state,
  }) {
    return EcsBackupPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsBackupPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/ecsBackupPlan:EcsBackupPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupType = registerOutput<String>('backupType');
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.detail = registerOutput<String?>('detail');
    this.disabled = registerOutput<bool>('disabled');
    this.ecsBackupPlanName = registerOutput<String>('ecsBackupPlanName');
    this.exclude = registerOutput<String?>('exclude');
    this.include = registerOutput<String?>('include');
    this.instanceId = registerOutput<String>('instanceId');
    this.options = registerOutput<String?>('options');
    this.paths = registerOutput<List<String>?>('paths');
    this.retention = registerOutput<String>('retention');
    this.schedule = registerOutput<String>('schedule');
    this.speedLimit = registerOutput<String?>('speedLimit');
    this.updatePaths = registerOutput<bool?>('updatePaths');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
