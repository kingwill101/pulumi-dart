import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_acr_registry_info.dart';
import 'eci_scaling_configuration_args.dart';
import 'eci_scaling_configuration_container.dart';
import 'eci_scaling_configuration_dns_config_option.dart';
import 'eci_scaling_configuration_host_alias.dart';
import 'eci_scaling_configuration_image_registry_credential.dart';
import 'eci_scaling_configuration_init_container.dart';
import 'eci_scaling_configuration_security_context_sysctl.dart';
import 'eci_scaling_configuration_volume.dart';

/// Provides a ESS eci scaling configuration resource.
///
/// For information about ess eci scaling configuration, see [CreateEciScalingConfiguration](https://www.alibabacloud.com/help/en/auto-scaling/latest/create-eci-scaling-configuration).
///
/// > **NOTE:** Available since v1.164.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const myName = `${name}-${defaultInteger.result}`;
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: myName,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: myName,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: myName,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 0,
///     maxSize: 1,
///     scalingGroupName: myName,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultSwitch.id],
///     groupType: "ECI",
/// });
/// const defaultEciScalingConfiguration = new alicloud.ess.EciScalingConfiguration("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     cpu: 2,
///     memory: 4,
///     securityGroupId: defaultSecurityGroup.id,
///     forceDelete: true,
///     active: true,
///     containerGroupName: "container-group-1649839595174",
///     containers: [{
///         name: "container-1",
///         image: "registry-vpc.cn-hangzhou.aliyuncs.com/eci_open/alpine:3.5",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// my_name = f"{name}-{default_integer['result']}"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=my_name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=my_name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=my_name,
///     vpc_id=default_network.id)
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=0,
///     max_size=1,
///     scaling_group_name=my_name,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_switch.id],
///     group_type="ECI")
/// default_eci_scaling_configuration = alicloud.ess.EciScalingConfiguration("default",
///     scaling_group_id=default_scaling_group.id,
///     cpu=2,
///     memory=4,
///     security_group_id=default_security_group.id,
///     force_delete=True,
///     active=True,
///     container_group_name="container-group-1649839595174",
///     containers=[{
///         "name": "container-1",
///         "image": "registry-vpc.cn-hangzhou.aliyuncs.com/eci_open/alpine:3.5",
///     }])
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var myName = $"{name}-{defaultInteger.Result}";
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = myName,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = myName,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = myName,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 0,
///         MaxSize = 1,
///         ScalingGroupName = myName,
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         GroupType = "ECI",
///     });
///
///     var defaultEciScalingConfiguration = new AliCloud.Ess.EciScalingConfiguration("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         Cpu = 2,
///         Memory = 4,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ForceDelete = true,
///         Active = true,
///         ContainerGroupName = "container-group-1649839595174",
///         Containers = new[]
///         {
///             new AliCloud.Ess.Inputs.EciScalingConfigurationContainerArgs
///             {
///                 Name = "container-1",
///                 Image = "registry-vpc.cn-hangzhou.aliyuncs.com/eci_open/alpine:3.5",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myName := fmt.Sprintf("%v-%v", name, defaultInteger.Result)
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(myName),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(myName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(myName),
/// 			VpcId:             defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(0),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			GroupType: pulumi.String("ECI"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewEciScalingConfiguration(ctx, "default", &ess.EciScalingConfigurationArgs{
/// 			ScalingGroupId:     defaultScalingGroup.ID(),
/// 			Cpu:                pulumi.Float64(2),
/// 			Memory:             pulumi.Float64(4),
/// 			SecurityGroupId:    defaultSecurityGroup.ID(),
/// 			ForceDelete:        pulumi.Bool(true),
/// 			Active:             pulumi.Bool(true),
/// 			ContainerGroupName: pulumi.String("container-group-1649839595174"),
/// 			Containers: ess.EciScalingConfigurationContainerArray{
/// 				&ess.EciScalingConfigurationContainerArgs{
/// 					Name:  pulumi.String("container-1"),
/// 					Image: pulumi.String("registry-vpc.cn-hangzhou.aliyuncs.com/eci_open/alpine:3.5"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.EciScalingConfiguration;
/// import com.pulumi.alicloud.ess.EciScalingConfigurationArgs;
/// import com.pulumi.alicloud.ess.inputs.EciScalingConfigurationContainerArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var myName = String.format("%s-%s", name,defaultInteger.result());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(myName)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(myName)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(myName)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(0)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .groupType("ECI")
///             .build());
///
///         var defaultEciScalingConfiguration = new EciScalingConfiguration("defaultEciScalingConfiguration", EciScalingConfigurationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .cpu(2.0)
///             .memory(4.0)
///             .securityGroupId(defaultSecurityGroup.id())
///             .forceDelete(true)
///             .active(true)
///             .containerGroupName("container-group-1649839595174")
///             .containers(EciScalingConfigurationContainerArgs.builder()
///                 .name("container-1")
///                 .image("registry-vpc.cn-hangzhou.aliyuncs.com/eci_open/alpine:3.5")
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${myName}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${myName}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       securityGroupName: ${myName}
///       vpcId: ${defaultNetwork.id}
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 0
///       maxSize: 1
///       scalingGroupName: ${myName}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///       groupType: ECI
///   defaultEciScalingConfiguration:
///     type: alicloud:ess:EciScalingConfiguration
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       cpu: 2
///       memory: 4
///       securityGroupId: ${defaultSecurityGroup.id}
///       forceDelete: true
///       active: true
///       containerGroupName: container-group-1649839595174
///       containers:
///         - name: container-1
///           image: registry-vpc.cn-hangzhou.aliyuncs.com/eci_open/alpine:3.5
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESS eci scaling configuration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/eciScalingConfiguration:EciScalingConfiguration example asc-abc123456
/// ```
class EciScalingConfiguration extends pulumi.CustomResource {
  /// Information about the Container Registry Enterprise Edition instance. See `acr_registry_infos` below for details.
  late final pulumi.Output<List<EciScalingConfigurationAcrRegistryInfo>?> acrRegistryInfos;
  /// Whether active current eci scaling configuration in the specified scaling group. Note that only
  /// one configuration can be active. Default to `false`.
  late final pulumi.Output<bool?> active;
  /// The duration in seconds relative to the startTime that the job may be active before the system tries to terminate it.
  late final pulumi.Output<int?> activeDeadlineSeconds;
  /// Whether create eip automatically.
  late final pulumi.Output<bool?> autoCreateEip;
  /// Whether to automatically match the image cache.
  late final pulumi.Output<bool?> autoMatchImageCache;
  /// The name series of the elastic container instances created from the scaling configuration. If you want to use an ordered instance name, specify the value for this parameter in the following format: name_prefix(AUTO_INCREMENT)[begin_number,bits]name_suffix.
  /// name_prefix: the prefix of the hostname.
  /// (AUTO_INCREMENT): the sort method. This is a static field.
  /// begin_number: the start value of the sequential values. Valid values: 0 to 999999.
  /// bits: the number of digits in sequential values. Valid values: 1 to 6. If the number of digits in the specified begin_number value is greater than the value of the bits field, the bits field is automatically set to 6.
  /// name_suffix: the suffix of the hostname. This field is optional.
  late final pulumi.Output<String?> containerGroupName;
  /// The list of containers. See `containers` below for details.
  late final pulumi.Output<List<EciScalingConfigurationContainer>?> containers;
  /// Indicates whether the Cost Optimization feature is enabled. Valid values: true,false.
  late final pulumi.Output<bool?> costOptimization;
  /// The amount of CPU resources allocated to the container group.
  late final pulumi.Output<double?> cpu;
  /// The number of physical CPU cores. You can specify this parameter for only specific instance types.
  late final pulumi.Output<int?> cpuOptionsCore;
  /// The number of threads per core. You can specify this parameter for only specific instance types. If you set this parameter to 1, Hyper-Threading is disabled.
  late final pulumi.Output<int?> cpuOptionsThreadsPerCore;
  /// The description of data disk N. Valid values of N: 1 to 16. The description must be 2 to
  /// 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> description;
  /// The options. Each option is a name-value pair. The value in the name-value pair is optional.   See `dns_config_options` below for
  /// details.
  late final pulumi.Output<List<EciScalingConfigurationDnsConfigOption>?> dnsConfigOptions;
  /// dns policy of contain group.
  late final pulumi.Output<String?> dnsPolicy;
  /// egress bandwidth.
  late final pulumi.Output<int?> egressBandwidth;
  /// Eip bandwidth.
  late final pulumi.Output<int?> eipBandwidth;
  /// Enable sls log service.
  late final pulumi.Output<bool?> enableSls;
  /// The size of ephemeral storage.
  late final pulumi.Output<int?> ephemeralStorage;
  /// The eci scaling configuration will be deleted forcibly with deleting its scaling group.
  /// Default to false.
  late final pulumi.Output<bool?> forceDelete;
  /// HostAliases. See `host_aliases` below.
  late final pulumi.Output<List<EciScalingConfigurationHostAlias>?> hostAliases;
  /// Hostname of an ECI instance.
  late final pulumi.Output<String?> hostName;
  /// The image registry credential.   See `image_registry_credentials` below for
  /// details.
  late final pulumi.Output<List<EciScalingConfigurationImageRegistryCredential>?> imageRegistryCredentials;
  /// The ID of image cache.
  late final pulumi.Output<String?> imageSnapshotId;
  /// Ingress bandwidth.
  late final pulumi.Output<int?> ingressBandwidth;
  /// The list of initContainers. See `init_containers` below for details.
  late final pulumi.Output<List<EciScalingConfigurationInitContainer>?> initContainers;
  /// The level of the instance family, which is used to filter instance types that meet the specified criteria. This parameter takes effect only if you set CostOptimization to true. Valid values: EntryLevel, EnterpriseLevel, CreditEntryLevel.
  late final pulumi.Output<String?> instanceFamilyLevel;
  /// The specified ECS instance types. You can specify up to five ECS instance types.
  late final pulumi.Output<List<String>?> instanceTypes;
  /// Number of IPv6 addresses.
  late final pulumi.Output<int?> ipv6AddressCount;
  /// The weight of an ECI instance attached to the Server Group.
  late final pulumi.Output<int?> loadBalancerWeight;
  /// The amount of memory resources allocated to the container group.
  late final pulumi.Output<double?> memory;
  /// Specifies whether to overwrite the data. Valid values: true, false.
  late final pulumi.Output<bool?> override;
  /// The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  late final pulumi.Output<String?> ramRoleName;
  /// ID of resource group.
  late final pulumi.Output<String?> resourceGroupId;
  /// The restart policy of the container group. Default to `Always`.
  late final pulumi.Output<String?> restartPolicy;
  /// Name shown for the scheduled task. which must contain 2-64 characters (
  /// English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number,
  /// underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is
  /// EciScalingConfigurationId.
  late final pulumi.Output<String> scalingConfigurationName;
  /// ID of the scaling group of a eci scaling configuration.
  late final pulumi.Output<String> scalingGroupId;
  /// The system information about the security context in which the elastic container instance is run.   See `security_context_sysctls` below for
  /// details.
  late final pulumi.Output<List<EciScalingConfigurationSecurityContextSysctl>?> securityContextSysctls;
  /// ID of the security group used to create new instance. It is conflict
  /// with `security_group_ids`.
  late final pulumi.Output<String?> securityGroupId;
  /// The maximum price hourly for spot instance.
  late final pulumi.Output<double?> spotPriceLimit;
  /// The spot strategy for a Pay-As-You-Go instance. Valid values: `NoSpot`, `SpotAsPriceGo`
  /// , `SpotWithPriceLimit`.
  late final pulumi.Output<String?> spotStrategy;
  /// A mapping of tags to assign to the resource. It will be applied for ECI instances finally.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "http://", or "https://". It cannot
  /// be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "http://", or "https://" It can be
  /// a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The program's buffering time before closing.
  late final pulumi.Output<int?> terminationGracePeriodSeconds;
  /// The list of volumes. See `volumes` below for details.
  late final pulumi.Output<List<EciScalingConfigurationVolume>?> volumes;

  /// Creates a new [EciScalingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EciScalingConfiguration]. {@macro pulumi_ess_eci_scaling_configuration_eci_scaling_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EciScalingConfiguration(
    String name, {
    EciScalingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/eciScalingConfiguration:EciScalingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acrRegistryInfos = registerOutput<List<EciScalingConfigurationAcrRegistryInfo>?>('acrRegistryInfos');
    this.active = registerOutput<bool?>('active');
    this.activeDeadlineSeconds = registerOutput<int?>('activeDeadlineSeconds');
    this.autoCreateEip = registerOutput<bool?>('autoCreateEip');
    this.autoMatchImageCache = registerOutput<bool?>('autoMatchImageCache');
    this.containerGroupName = registerOutput<String?>('containerGroupName');
    this.containers = registerOutput<List<EciScalingConfigurationContainer>?>('containers');
    this.costOptimization = registerOutput<bool?>('costOptimization');
    this.cpu = registerOutput<double?>('cpu');
    this.cpuOptionsCore = registerOutput<int?>('cpuOptionsCore');
    this.cpuOptionsThreadsPerCore = registerOutput<int?>('cpuOptionsThreadsPerCore');
    this.description = registerOutput<String?>('description');
    this.dnsConfigOptions = registerOutput<List<EciScalingConfigurationDnsConfigOption>?>('dnsConfigOptions');
    this.dnsPolicy = registerOutput<String?>('dnsPolicy');
    this.egressBandwidth = registerOutput<int?>('egressBandwidth');
    this.eipBandwidth = registerOutput<int?>('eipBandwidth');
    this.enableSls = registerOutput<bool?>('enableSls');
    this.ephemeralStorage = registerOutput<int?>('ephemeralStorage');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.hostAliases = registerOutput<List<EciScalingConfigurationHostAlias>?>('hostAliases');
    this.hostName = registerOutput<String?>('hostName');
    this.imageRegistryCredentials = registerOutput<List<EciScalingConfigurationImageRegistryCredential>?>('imageRegistryCredentials');
    this.imageSnapshotId = registerOutput<String?>('imageSnapshotId');
    this.ingressBandwidth = registerOutput<int?>('ingressBandwidth');
    this.initContainers = registerOutput<List<EciScalingConfigurationInitContainer>?>('initContainers');
    this.instanceFamilyLevel = registerOutput<String?>('instanceFamilyLevel');
    this.instanceTypes = registerOutput<List<String>?>('instanceTypes');
    this.ipv6AddressCount = registerOutput<int?>('ipv6AddressCount');
    this.loadBalancerWeight = registerOutput<int?>('loadBalancerWeight');
    this.memory = registerOutput<double?>('memory');
    this.override = registerOutput<bool?>('override');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.restartPolicy = registerOutput<String?>('restartPolicy');
    this.scalingConfigurationName = registerOutput<String>('scalingConfigurationName');
    this.scalingGroupId = registerOutput<String>('scalingGroupId');
    this.securityContextSysctls = registerOutput<List<EciScalingConfigurationSecurityContextSysctl>?>('securityContextSysctls');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.spotPriceLimit = registerOutput<double?>('spotPriceLimit');
    this.spotStrategy = registerOutput<String?>('spotStrategy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.terminationGracePeriodSeconds = registerOutput<int?>('terminationGracePeriodSeconds');
    this.volumes = registerOutput<List<EciScalingConfigurationVolume>?>('volumes');
  }
}
