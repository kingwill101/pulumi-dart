import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alarms_args.dart';
import 'get_alarms_result.dart';
import 'get_lifecycle_hooks_args.dart';
import 'get_lifecycle_hooks_result.dart';
import 'get_notifications_args.dart';
import 'get_notifications_result.dart';
import 'get_scaling_configurations_args.dart';
import 'get_scaling_configurations_result.dart';
import 'get_scaling_groups_args.dart';
import 'get_scaling_groups_result.dart';
import 'get_scaling_rules_args.dart';
import 'get_scaling_rules_result.dart';
import 'get_scheduled_tasks_args.dart';
import 'get_scheduled_tasks_result.dart';

/// This data source provides available alarm resources.
///
/// &gt; **NOTE** Available in 1.72.0+
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_alarms_get_alarms_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlarmsResult> getAlarms(
  GetAlarmsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getAlarms:getAlarms',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlarmsResult.fromMap(result);
}

/// This data source provides available lifecycle hook resources.
///
/// &gt; **NOTE:** Available in 1.72.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ds = alicloud.ess.getLifecycleHooks({
///     scalingGroupId: "scaling_group_id",
///     nameRegex: "lifecyclehook_name",
/// });
/// export const firstLifecycleHook = ds.then(ds => ds.hooks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ds = alicloud.ess.get_lifecycle_hooks(scaling_group_id="scaling_group_id",
///     name_regex="lifecyclehook_name")
/// pulumi.export("firstLifecycleHook", ds.hooks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = AliCloud.Ess.GetLifecycleHooks.Invoke(new()
///     {
///         ScalingGroupId = "scaling_group_id",
///         NameRegex = "lifecyclehook_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstLifecycleHook"] = ds.Apply(getLifecycleHooksResult => getLifecycleHooksResult.Hooks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ds, err := ess.GetLifecycleHooks(ctx, &ess.GetLifecycleHooksArgs{
/// 			ScalingGroupId: pulumi.StringRef("scaling_group_id"),
/// 			NameRegex:      pulumi.StringRef("lifecyclehook_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstLifecycleHook", ds.Hooks[0].Id)
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
/// import com.pulumi.alicloud.ess.EssFunctions;
/// import com.pulumi.alicloud.ess.inputs.GetLifecycleHooksArgs;
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
///         final var ds = EssFunctions.getLifecycleHooks(GetLifecycleHooksArgs.builder()
///             .scalingGroupId("scaling_group_id")
///             .nameRegex("lifecyclehook_name")
///             .build());
///
///         ctx.export("firstLifecycleHook", ds.hooks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: alicloud:ess:getLifecycleHooks
///       arguments:
///         scalingGroupId: scaling_group_id
///         nameRegex: lifecyclehook_name
/// outputs:
///   firstLifecycleHook: ${ds.hooks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_lifecycle_hooks_get_lifecycle_hooks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLifecycleHooksResult> getLifecycleHooks(
  GetLifecycleHooksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getLifecycleHooks:getLifecycleHooks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLifecycleHooksResult.fromMap(result);
}

/// This data source provides available notification resources.
///
/// &gt; **NOTE:** Available in 1.72.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ds = alicloud.ess.getNotifications({
///     scalingGroupId: "scaling_group_id",
/// });
/// export const firstNotification = ds.then(ds => ds.notifications?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ds = alicloud.ess.get_notifications(scaling_group_id="scaling_group_id")
/// pulumi.export("firstNotification", ds.notifications[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = AliCloud.Ess.GetNotifications.Invoke(new()
///     {
///         ScalingGroupId = "scaling_group_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstNotification"] = ds.Apply(getNotificationsResult => getNotificationsResult.Notifications[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ds, err := ess.GetNotifications(ctx, &ess.GetNotificationsArgs{
/// 			ScalingGroupId: "scaling_group_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstNotification", ds.Notifications[0].Id)
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
/// import com.pulumi.alicloud.ess.EssFunctions;
/// import com.pulumi.alicloud.ess.inputs.GetNotificationsArgs;
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
///         final var ds = EssFunctions.getNotifications(GetNotificationsArgs.builder()
///             .scalingGroupId("scaling_group_id")
///             .build());
///
///         ctx.export("firstNotification", ds.notifications()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: alicloud:ess:getNotifications
///       arguments:
///         scalingGroupId: scaling_group_id
/// outputs:
///   firstNotification: ${ds.notifications[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_notifications_get_notifications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationsResult> getNotifications(
  GetNotificationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getNotifications:getNotifications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationsResult.fromMap(result);
}

/// This data source provides available scaling configuration resources.
///
/// &gt; **NOTE:** Available since v1.240.0
///
/// ## Example Usage
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
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 2,
///     memorySize: 4,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
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
/// const defaultSecurityGroupRule = new alicloud.ecs.SecurityGroupRule("default", {
///     type: "ingress",
///     ipProtocol: "tcp",
///     nicType: "intranet",
///     policy: "accept",
///     portRange: "22/22",
///     priority: 1,
///     securityGroupId: defaultSecurityGroup.id,
///     cidrIp: "172.16.0.0/24",
/// });
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultSwitch.id],
/// });
/// const defaultScalingConfiguration = new alicloud.ess.ScalingConfiguration("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroupId: defaultSecurityGroup.id,
///     forceDelete: true,
///     active: true,
///     scalingConfigurationName: "scaling_configuration_name",
/// });
/// const scalingconfigurationsDs = alicloud.ess.getScalingConfigurationsOutput({
///     scalingGroupId: defaultScalingGroup.id,
///     ids: [defaultScalingConfiguration.id],
///     nameRegex: "scaling_configuration_name",
/// });
/// export const firstScalingConfiguration = scalingconfigurationsDs.apply(scalingconfigurationsDs => scalingconfigurationsDs.configurations?.[0]?.id);
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
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=2,
///     memory_size=4)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
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
/// default_security_group_rule = alicloud.ecs.SecurityGroupRule("default",
///     type="ingress",
///     ip_protocol="tcp",
///     nic_type="intranet",
///     policy="accept",
///     port_range="22/22",
///     priority=1,
///     security_group_id=default_security_group.id,
///     cidr_ip="172.16.0.0/24")
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_switch.id])
/// default_scaling_configuration = alicloud.ess.ScalingConfiguration("default",
///     scaling_group_id=default_scaling_group.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_group_id=default_security_group.id,
///     force_delete=True,
///     active=True,
///     scaling_configuration_name="scaling_configuration_name")
/// scalingconfigurations_ds = alicloud.ess.get_scaling_configurations_output(scaling_group_id=default_scaling_group.id,
///     ids=[default_scaling_configuration.id],
///     name_regex="scaling_configuration_name")
/// pulumi.export("firstScalingConfiguration", scalingconfigurations_ds.configurations[0].id)
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
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 2,
///         MemorySize = 4,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
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
///     var defaultSecurityGroupRule = new AliCloud.Ecs.SecurityGroupRule("default", new()
///     {
///         Type = "ingress",
///         IpProtocol = "tcp",
///         NicType = "intranet",
///         Policy = "accept",
///         PortRange = "22/22",
///         Priority = 1,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         CidrIp = "172.16.0.0/24",
///     });
///
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
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
///     });
///
///     var defaultScalingConfiguration = new AliCloud.Ess.ScalingConfiguration("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ForceDelete = true,
///         Active = true,
///         ScalingConfigurationName = "scaling_configuration_name",
///     });
///
///     var scalingconfigurationsDs = AliCloud.Ess.GetScalingConfigurations.Invoke(new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         Ids = new[]
///         {
///             defaultScalingConfiguration.Id,
///         },
///         NameRegex = "scaling_configuration_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstScalingConfiguration"] = scalingconfigurationsDs.Apply(getScalingConfigurationsResult => getScalingConfigurationsResult.Configurations[0]?.Id),
///     };
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
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(2),
/// 			MemorySize:       pulumi.Float64Ref(4),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
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
/// 		_, err = ecs.NewSecurityGroupRule(ctx, "default", &ecs.SecurityGroupRuleArgs{
/// 			Type:            pulumi.String("ingress"),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			NicType:         pulumi.String("intranet"),
/// 			Policy:          pulumi.String("accept"),
/// 			PortRange:       pulumi.String("22/22"),
/// 			Priority:        pulumi.Int(1),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			CidrIp:          pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingConfiguration, err := ess.NewScalingConfiguration(ctx, "default", &ess.ScalingConfigurationArgs{
/// 			ScalingGroupId:           defaultScalingGroup.ID(),
/// 			ImageId:                  pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:             pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroupId:          defaultSecurityGroup.ID(),
/// 			ForceDelete:              pulumi.Bool(true),
/// 			Active:                   pulumi.Bool(true),
/// 			ScalingConfigurationName: pulumi.String("scaling_configuration_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		scalingconfigurationsDs := ess.GetScalingConfigurationsOutput(ctx, ess.GetScalingConfigurationsOutputArgs{
/// 			ScalingGroupId: defaultScalingGroup.ID(),
/// 			Ids: pulumi.StringArray{
/// 				defaultScalingConfiguration.ID(),
/// 			},
/// 			NameRegex: pulumi.String("scaling_configuration_name"),
/// 		}, nil)
/// 		ctx.Export("firstScalingConfiguration", scalingconfigurationsDs.ApplyT(func(scalingconfigurationsDs ess.GetScalingConfigurationsResult) (*string, error) {
/// 			return &scalingconfigurationsDs.Configurations[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.ScalingConfiguration;
/// import com.pulumi.alicloud.ess.ScalingConfigurationArgs;
/// import com.pulumi.alicloud.ess.EssFunctions;
/// import com.pulumi.alicloud.ess.inputs.GetScalingConfigurationsArgs;
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
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(2)
///             .memorySize(4)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
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
///         var defaultSecurityGroupRule = new SecurityGroupRule("defaultSecurityGroupRule", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .ipProtocol("tcp")
///             .nicType("intranet")
///             .policy("accept")
///             .portRange("22/22")
///             .priority(1)
///             .securityGroupId(defaultSecurityGroup.id())
///             .cidrIp("172.16.0.0/24")
///             .build());
///
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .build());
///
///         var defaultScalingConfiguration = new ScalingConfiguration("defaultScalingConfiguration", ScalingConfigurationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .forceDelete(true)
///             .active(true)
///             .scalingConfigurationName("scaling_configuration_name")
///             .build());
///
///         final var scalingconfigurationsDs = EssFunctions.getScalingConfigurations(GetScalingConfigurationsArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .ids(defaultScalingConfiguration.id())
///             .nameRegex("scaling_configuration_name")
///             .build());
///
///         ctx.export("firstScalingConfiguration", scalingconfigurationsDs.applyValue(_scalingconfigurationsDs -> _scalingconfigurationsDs.configurations()[0].id()));
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
///   defaultSecurityGroupRule:
///     type: alicloud:ecs:SecurityGroupRule
///     name: default
///     properties:
///       type: ingress
///       ipProtocol: tcp
///       nicType: intranet
///       policy: accept
///       portRange: 22/22
///       priority: 1
///       securityGroupId: ${defaultSecurityGroup.id}
///       cidrIp: 172.16.0.0/24
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 1
///       maxSize: 1
///       scalingGroupName: ${myName}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///   defaultScalingConfiguration:
///     type: alicloud:ess:ScalingConfiguration
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroupId: ${defaultSecurityGroup.id}
///       forceDelete: true
///       active: true
///       scalingConfigurationName: scaling_configuration_name
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 2
///         memorySize: 4
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   scalingconfigurationsDs:
///     fn::invoke:
///       function: alicloud:ess:getScalingConfigurations
///       arguments:
///         scalingGroupId: ${defaultScalingGroup.id}
///         ids:
///           - ${defaultScalingConfiguration.id}
///         nameRegex: scaling_configuration_name
/// outputs:
///   firstScalingConfiguration: ${scalingconfigurationsDs.configurations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_scaling_configurations_get_scaling_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScalingConfigurationsResult> getScalingConfigurations(
  GetScalingConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getScalingConfigurations:getScalingConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScalingConfigurationsResult.fromMap(result);
}

/// This data source provides available scaling group resources.
///
/// &gt; **NOTE:** Available since v1.39.0
///
/// ## Example Usage
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
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultSwitch.id],
/// });
/// const scalinggroupsDs = alicloud.ess.getScalingGroupsOutput({
///     ids: [defaultScalingGroup.id],
///     nameRegex: myName,
/// });
/// export const firstScalingGroup = scalinggroupsDs.apply(scalinggroupsDs => scalinggroupsDs.groups?.[0]?.id);
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
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_switch.id])
/// scalinggroups_ds = alicloud.ess.get_scaling_groups_output(ids=[default_scaling_group.id],
///     name_regex=my_name)
/// pulumi.export("firstScalingGroup", scalinggroups_ds.groups[0].id)
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
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
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
///     });
///
///     var scalinggroupsDs = AliCloud.Ess.GetScalingGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultScalingGroup.Id,
///         },
///         NameRegex = myName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstScalingGroup"] = scalinggroupsDs.Apply(getScalingGroupsResult => getScalingGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		scalinggroupsDs := ess.GetScalingGroupsOutput(ctx, ess.GetScalingGroupsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultScalingGroup.ID(),
/// 			},
/// 			NameRegex: pulumi.String(myName),
/// 		}, nil)
/// 		ctx.Export("firstScalingGroup", scalinggroupsDs.ApplyT(func(scalinggroupsDs ess.GetScalingGroupsResult) (*string, error) {
/// 			return &scalinggroupsDs.Groups[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.EssFunctions;
/// import com.pulumi.alicloud.ess.inputs.GetScalingGroupsArgs;
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
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .build());
///
///         final var scalinggroupsDs = EssFunctions.getScalingGroups(GetScalingGroupsArgs.builder()
///             .ids(defaultScalingGroup.id())
///             .nameRegex(myName)
///             .build());
///
///         ctx.export("firstScalingGroup", scalinggroupsDs.applyValue(_scalinggroupsDs -> _scalinggroupsDs.groups()[0].id()));
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
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 1
///       maxSize: 1
///       scalingGroupName: ${myName}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   scalinggroupsDs:
///     fn::invoke:
///       function: alicloud:ess:getScalingGroups
///       arguments:
///         ids:
///           - ${defaultScalingGroup.id}
///         nameRegex: ${myName}
/// outputs:
///   firstScalingGroup: ${scalinggroupsDs.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_scaling_groups_get_scaling_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScalingGroupsResult> getScalingGroups(
  GetScalingGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getScalingGroups:getScalingGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScalingGroupsResult.fromMap(result);
}

/// This data source provides available scaling rule resources.
///
/// &gt; **NOTE:** Available since v1.39.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-ex";
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
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultSwitch.id],
/// });
/// const defaultScalingRule = new alicloud.ess.ScalingRule("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     scalingRuleName: myName,
///     adjustmentType: "PercentChangeInCapacity",
///     adjustmentValue: 1,
/// });
/// const scalingrulesDs = alicloud.ess.getScalingRulesOutput({
///     scalingGroupId: defaultScalingGroup.id,
///     ids: [defaultScalingRule.id],
///     nameRegex: myName,
/// });
/// export const firstScalingRule = scalingrulesDs.apply(scalingrulesDs => scalingrulesDs.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-ex"
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
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_switch.id])
/// default_scaling_rule = alicloud.ess.ScalingRule("default",
///     scaling_group_id=default_scaling_group.id,
///     scaling_rule_name=my_name,
///     adjustment_type="PercentChangeInCapacity",
///     adjustment_value=1)
/// scalingrules_ds = alicloud.ess.get_scaling_rules_output(scaling_group_id=default_scaling_group.id,
///     ids=[default_scaling_rule.id],
///     name_regex=my_name)
/// pulumi.export("firstScalingRule", scalingrules_ds.rules[0].id)
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
///     var name = config.Get("name") ?? "terraform-ex";
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
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
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
///     });
///
///     var defaultScalingRule = new AliCloud.Ess.ScalingRule("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         ScalingRuleName = myName,
///         AdjustmentType = "PercentChangeInCapacity",
///         AdjustmentValue = 1,
///     });
///
///     var scalingrulesDs = AliCloud.Ess.GetScalingRules.Invoke(new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         Ids = new[]
///         {
///             defaultScalingRule.Id,
///         },
///         NameRegex = myName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstScalingRule"] = scalingrulesDs.Apply(getScalingRulesResult => getScalingRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		name := "terraform-ex"
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
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingRule, err := ess.NewScalingRule(ctx, "default", &ess.ScalingRuleArgs{
/// 			ScalingGroupId:  defaultScalingGroup.ID(),
/// 			ScalingRuleName: pulumi.String(myName),
/// 			AdjustmentType:  pulumi.String("PercentChangeInCapacity"),
/// 			AdjustmentValue: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		scalingrulesDs := ess.GetScalingRulesOutput(ctx, ess.GetScalingRulesOutputArgs{
/// 			ScalingGroupId: defaultScalingGroup.ID(),
/// 			Ids: pulumi.StringArray{
/// 				defaultScalingRule.ID(),
/// 			},
/// 			NameRegex: pulumi.String(myName),
/// 		}, nil)
/// 		ctx.Export("firstScalingRule", scalingrulesDs.ApplyT(func(scalingrulesDs ess.GetScalingRulesResult) (*string, error) {
/// 			return &scalingrulesDs.Rules[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.ScalingRule;
/// import com.pulumi.alicloud.ess.ScalingRuleArgs;
/// import com.pulumi.alicloud.ess.EssFunctions;
/// import com.pulumi.alicloud.ess.inputs.GetScalingRulesArgs;
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
///         final var name = config.get("name").orElse("terraform-ex");
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
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .build());
///
///         var defaultScalingRule = new ScalingRule("defaultScalingRule", ScalingRuleArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .scalingRuleName(myName)
///             .adjustmentType("PercentChangeInCapacity")
///             .adjustmentValue(1)
///             .build());
///
///         final var scalingrulesDs = EssFunctions.getScalingRules(GetScalingRulesArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .ids(defaultScalingRule.id())
///             .nameRegex(myName)
///             .build());
///
///         ctx.export("firstScalingRule", scalingrulesDs.applyValue(_scalingrulesDs -> _scalingrulesDs.rules()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-ex
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
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 1
///       maxSize: 1
///       scalingGroupName: ${myName}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///   defaultScalingRule:
///     type: alicloud:ess:ScalingRule
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       scalingRuleName: ${myName}
///       adjustmentType: PercentChangeInCapacity
///       adjustmentValue: 1
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   scalingrulesDs:
///     fn::invoke:
///       function: alicloud:ess:getScalingRules
///       arguments:
///         scalingGroupId: ${defaultScalingGroup.id}
///         ids:
///           - ${defaultScalingRule.id}
///         nameRegex: ${myName}
/// outputs:
///   firstScalingRule: ${scalingrulesDs.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_scaling_rules_get_scaling_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScalingRulesResult> getScalingRules(
  GetScalingRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getScalingRules:getScalingRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScalingRulesResult.fromMap(result);
}

/// This data source provides available scheduled task resources.
///
/// &gt; **NOTE:** Available in 1.72.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ds = alicloud.ess.getScheduledTasks({
///     scheduledTaskId: "scheduled_task_id",
///     nameRegex: "scheduled_task_name",
/// });
/// export const firstScheduledTask = ds.then(ds => ds.tasks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ds = alicloud.ess.get_scheduled_tasks(scheduled_task_id="scheduled_task_id",
///     name_regex="scheduled_task_name")
/// pulumi.export("firstScheduledTask", ds.tasks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ds = AliCloud.Ess.GetScheduledTasks.Invoke(new()
///     {
///         ScheduledTaskId = "scheduled_task_id",
///         NameRegex = "scheduled_task_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstScheduledTask"] = ds.Apply(getScheduledTasksResult => getScheduledTasksResult.Tasks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ds, err := ess.GetScheduledTasks(ctx, &ess.GetScheduledTasksArgs{
/// 			ScheduledTaskId: pulumi.StringRef("scheduled_task_id"),
/// 			NameRegex:       pulumi.StringRef("scheduled_task_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstScheduledTask", ds.Tasks[0].Id)
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
/// import com.pulumi.alicloud.ess.EssFunctions;
/// import com.pulumi.alicloud.ess.inputs.GetScheduledTasksArgs;
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
///         final var ds = EssFunctions.getScheduledTasks(GetScheduledTasksArgs.builder()
///             .scheduledTaskId("scheduled_task_id")
///             .nameRegex("scheduled_task_name")
///             .build());
///
///         ctx.export("firstScheduledTask", ds.tasks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ds:
///     fn::invoke:
///       function: alicloud:ess:getScheduledTasks
///       arguments:
///         scheduledTaskId: scheduled_task_id
///         nameRegex: scheduled_task_name
/// outputs:
///   firstScheduledTask: ${ds.tasks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ess_get_scheduled_tasks_get_scheduled_tasks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledTasksResult> getScheduledTasks(
  GetScheduledTasksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ess/getScheduledTasks:getScheduledTasks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledTasksResult.fromMap(result);
}
