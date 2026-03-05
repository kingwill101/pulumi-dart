import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_args.dart';
import 'application_scaling_rule_scaling_rule_metric.dart';
import 'application_scaling_rule_scaling_rule_timer.dart';
import 'application_scaling_rule_state.dart';

/// Provides a Serverless App Engine (SAE) Application Scaling Rule resource.
///
/// For information about Serverless App Engine (SAE) Application Scaling Rule and how to use it, see [What is Application Scaling Rule](https://next.api.aliyun.com/api/sae/2019-05-06/CreateApplicationScalingRule).
///
/// &gt; **NOTE:** Available since v1.159.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultNamespace = new alicloud.sae.Namespace("default", {
///     namespaceId: _default.then(_default => `${_default.regions?.[0]?.id}:example${defaultInteger.result}`),
///     namespaceName: name,
///     namespaceDescription: name,
///     enableMicroRegistration: false,
/// });
/// const defaultApplication = new alicloud.sae.Application("default", {
///     appDescription: name,
///     appName: `${name}-${defaultInteger.result}`,
///     namespaceId: defaultNamespace.id,
///     imageUrl: _default.then(_default => `registry-vpc.${_default.regions?.[0]?.id}.aliyuncs.com/sae-demo-image/consumer:1.0`),
///     packageType: "Image",
///     securityGroupId: defaultSecurityGroup.id,
///     vpcId: defaultNetwork.id,
///     vswitchId: defaultSwitch.id,
///     timezone: "Asia/Beijing",
///     replicas: 5,
///     cpu: 500,
///     memory: 2048,
/// });
/// const defaultApplicationScalingRule = new alicloud.sae.ApplicationScalingRule("default", {
///     appId: defaultApplication.id,
///     scalingRuleName: name,
///     scalingRuleEnable: true,
///     scalingRuleType: "mix",
///     minReadyInstances: 3,
///     minReadyInstanceRatio: -1,
///     scalingRuleTimer: {
///         period: "* * *",
///         schedules: [
///             {
///                 atTime: "08:00",
///                 maxReplicas: 10,
///                 minReplicas: 3,
///             },
///             {
///                 atTime: "20:00",
///                 maxReplicas: 50,
///                 minReplicas: 3,
///             },
///         ],
///     },
///     scalingRuleMetric: {
///         maxReplicas: 50,
///         minReplicas: 3,
///         metrics: [
///             {
///                 metricType: "CPU",
///                 metricTargetAverageUtilization: 20,
///             },
///             {
///                 metricType: "MEMORY",
///                 metricTargetAverageUtilization: 30,
///             },
///             {
///                 metricType: "tcpActiveConn",
///                 metricTargetAverageUtilization: 20,
///             },
///         ],
///         scaleUpRules: {
///             step: 10,
///             disabled: false,
///             stabilizationWindowSeconds: 0,
///         },
///         scaleDownRules: {
///             step: 10,
///             disabled: false,
///             stabilizationWindowSeconds: 10,
///         },
///     },
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
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_namespace = alicloud.sae.Namespace("default",
///     namespace_id=f"{default.regions[0].id}:example{default_integer['result']}",
///     namespace_name=name,
///     namespace_description=name,
///     enable_micro_registration=False)
/// default_application = alicloud.sae.Application("default",
///     app_description=name,
///     app_name=f"{name}-{default_integer['result']}",
///     namespace_id=default_namespace.id,
///     image_url=f"registry-vpc.{default.regions[0].id}.aliyuncs.com/sae-demo-image/consumer:1.0",
///     package_type="Image",
///     security_group_id=default_security_group.id,
///     vpc_id=default_network.id,
///     vswitch_id=default_switch.id,
///     timezone="Asia/Beijing",
///     replicas=5,
///     cpu=500,
///     memory=2048)
/// default_application_scaling_rule = alicloud.sae.ApplicationScalingRule("default",
///     app_id=default_application.id,
///     scaling_rule_name=name,
///     scaling_rule_enable=True,
///     scaling_rule_type="mix",
///     min_ready_instances=3,
///     min_ready_instance_ratio=-1,
///     scaling_rule_timer={
///         "period": "* * *",
///         "schedules": [
///             {
///                 "at_time": "08:00",
///                 "max_replicas": 10,
///                 "min_replicas": 3,
///             },
///             {
///                 "at_time": "20:00",
///                 "max_replicas": 50,
///                 "min_replicas": 3,
///             },
///         ],
///     },
///     scaling_rule_metric={
///         "max_replicas": 50,
///         "min_replicas": 3,
///         "metrics": [
///             {
///                 "metric_type": "CPU",
///                 "metric_target_average_utilization": 20,
///             },
///             {
///                 "metric_type": "MEMORY",
///                 "metric_target_average_utilization": 30,
///             },
///             {
///                 "metric_type": "tcpActiveConn",
///                 "metric_target_average_utilization": 20,
///             },
///         ],
///         "scale_up_rules": {
///             "step": 10,
///             "disabled": False,
///             "stabilization_window_seconds": 0,
///         },
///         "scale_down_rules": {
///             "step": 10,
///             "disabled": False,
///             "stabilization_window_seconds": 10,
///         },
///     })
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultNamespace = new AliCloud.Sae.Namespace("default", new()
///     {
///         NamespaceId = @default.Apply(@default => $"{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:example{defaultInteger.Result}"),
///         NamespaceName = name,
///         NamespaceDescription = name,
///         EnableMicroRegistration = false,
///     });
///
///     var defaultApplication = new AliCloud.Sae.Application("default", new()
///     {
///         AppDescription = name,
///         AppName = $"{name}-{defaultInteger.Result}",
///         NamespaceId = defaultNamespace.Id,
///         ImageUrl = @default.Apply(@default => $"registry-vpc.{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}.aliyuncs.com/sae-demo-image/consumer:1.0"),
///         PackageType = "Image",
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VpcId = defaultNetwork.Id,
///         VswitchId = defaultSwitch.Id,
///         Timezone = "Asia/Beijing",
///         Replicas = 5,
///         Cpu = 500,
///         Memory = 2048,
///     });
///
///     var defaultApplicationScalingRule = new AliCloud.Sae.ApplicationScalingRule("default", new()
///     {
///         AppId = defaultApplication.Id,
///         ScalingRuleName = name,
///         ScalingRuleEnable = true,
///         ScalingRuleType = "mix",
///         MinReadyInstances = 3,
///         MinReadyInstanceRatio = -1,
///         ScalingRuleTimer = new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleTimerArgs
///         {
///             Period = "* * *",
///             Schedules = new[]
///             {
///                 new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleTimerScheduleArgs
///                 {
///                     AtTime = "08:00",
///                     MaxReplicas = 10,
///                     MinReplicas = 3,
///                 },
///                 new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleTimerScheduleArgs
///                 {
///                     AtTime = "20:00",
///                     MaxReplicas = 50,
///                     MinReplicas = 3,
///                 },
///             },
///         },
///         ScalingRuleMetric = new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleMetricArgs
///         {
///             MaxReplicas = 50,
///             MinReplicas = 3,
///             Metrics = new[]
///             {
///                 new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleMetricMetricArgs
///                 {
///                     MetricType = "CPU",
///                     MetricTargetAverageUtilization = 20,
///                 },
///                 new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleMetricMetricArgs
///                 {
///                     MetricType = "MEMORY",
///                     MetricTargetAverageUtilization = 30,
///                 },
///                 new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleMetricMetricArgs
///                 {
///                     MetricType = "tcpActiveConn",
///                     MetricTargetAverageUtilization = 20,
///                 },
///             },
///             ScaleUpRules = new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleMetricScaleUpRulesArgs
///             {
///                 Step = 10,
///                 Disabled = false,
///                 StabilizationWindowSeconds = 0,
///             },
///             ScaleDownRules = new AliCloud.Sae.Inputs.ApplicationScalingRuleScalingRuleMetricScaleDownRulesArgs
///             {
///                 Step = 10,
///                 Disabled = false,
///                 StabilizationWindowSeconds = 10,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := sae.NewNamespace(ctx, "default", &sae.NamespaceArgs{
/// 			NamespaceId:             pulumi.Sprintf("%v:example%v", _default.Regions[0].Id, defaultInteger.Result),
/// 			NamespaceName:           pulumi.String(name),
/// 			NamespaceDescription:    pulumi.String(name),
/// 			EnableMicroRegistration: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := sae.NewApplication(ctx, "default", &sae.ApplicationArgs{
/// 			AppDescription:  pulumi.String(name),
/// 			AppName:         pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			NamespaceId:     defaultNamespace.ID(),
/// 			ImageUrl:        pulumi.Sprintf("registry-vpc.%v.aliyuncs.com/sae-demo-image/consumer:1.0", _default.Regions[0].Id),
/// 			PackageType:     pulumi.String("Image"),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			VpcId:           defaultNetwork.ID(),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			Timezone:        pulumi.String("Asia/Beijing"),
/// 			Replicas:        pulumi.Int(5),
/// 			Cpu:             pulumi.Int(500),
/// 			Memory:          pulumi.Int(2048),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sae.NewApplicationScalingRule(ctx, "default", &sae.ApplicationScalingRuleArgs{
/// 			AppId:                 defaultApplication.ID(),
/// 			ScalingRuleName:       pulumi.String(name),
/// 			ScalingRuleEnable:     pulumi.Bool(true),
/// 			ScalingRuleType:       pulumi.String("mix"),
/// 			MinReadyInstances:     pulumi.Int(3),
/// 			MinReadyInstanceRatio: pulumi.Int(-1),
/// 			ScalingRuleTimer: &sae.ApplicationScalingRuleScalingRuleTimerArgs{
/// 				Period: pulumi.String("* * *"),
/// 				Schedules: sae.ApplicationScalingRuleScalingRuleTimerScheduleArray{
/// 					&sae.ApplicationScalingRuleScalingRuleTimerScheduleArgs{
/// 						AtTime:      pulumi.String("08:00"),
/// 						MaxReplicas: pulumi.Int(10),
/// 						MinReplicas: pulumi.Int(3),
/// 					},
/// 					&sae.ApplicationScalingRuleScalingRuleTimerScheduleArgs{
/// 						AtTime:      pulumi.String("20:00"),
/// 						MaxReplicas: pulumi.Int(50),
/// 						MinReplicas: pulumi.Int(3),
/// 					},
/// 				},
/// 			},
/// 			ScalingRuleMetric: &sae.ApplicationScalingRuleScalingRuleMetricArgs{
/// 				MaxReplicas: pulumi.Int(50),
/// 				MinReplicas: pulumi.Int(3),
/// 				Metrics: sae.ApplicationScalingRuleScalingRuleMetricMetricArray{
/// 					&sae.ApplicationScalingRuleScalingRuleMetricMetricArgs{
/// 						MetricType:                     pulumi.String("CPU"),
/// 						MetricTargetAverageUtilization: pulumi.Int(20),
/// 					},
/// 					&sae.ApplicationScalingRuleScalingRuleMetricMetricArgs{
/// 						MetricType:                     pulumi.String("MEMORY"),
/// 						MetricTargetAverageUtilization: pulumi.Int(30),
/// 					},
/// 					&sae.ApplicationScalingRuleScalingRuleMetricMetricArgs{
/// 						MetricType:                     pulumi.String("tcpActiveConn"),
/// 						MetricTargetAverageUtilization: pulumi.Int(20),
/// 					},
/// 				},
/// 				ScaleUpRules: &sae.ApplicationScalingRuleScalingRuleMetricScaleUpRulesArgs{
/// 					Step:                       pulumi.Int(10),
/// 					Disabled:                   pulumi.Bool(false),
/// 					StabilizationWindowSeconds: pulumi.Int(0),
/// 				},
/// 				ScaleDownRules: &sae.ApplicationScalingRuleScalingRuleMetricScaleDownRulesArgs{
/// 					Step:                       pulumi.Int(10),
/// 					Disabled:                   pulumi.Bool(false),
/// 					StabilizationWindowSeconds: pulumi.Int(10),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.Application;
/// import com.pulumi.alicloud.sae.ApplicationArgs;
/// import com.pulumi.alicloud.sae.ApplicationScalingRule;
/// import com.pulumi.alicloud.sae.ApplicationScalingRuleArgs;
/// import com.pulumi.alicloud.sae.inputs.ApplicationScalingRuleScalingRuleTimerArgs;
/// import com.pulumi.alicloud.sae.inputs.ApplicationScalingRuleScalingRuleMetricArgs;
/// import com.pulumi.alicloud.sae.inputs.ApplicationScalingRuleScalingRuleMetricScaleUpRulesArgs;
/// import com.pulumi.alicloud.sae.inputs.ApplicationScalingRuleScalingRuleMetricScaleDownRulesArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespaceId(String.format("%s:example%s", default_.regions()[0].id(),defaultInteger.result()))
///             .namespaceName(name)
///             .namespaceDescription(name)
///             .enableMicroRegistration(false)
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .appDescription(name)
///             .appName(String.format("%s-%s", name,defaultInteger.result()))
///             .namespaceId(defaultNamespace.id())
///             .imageUrl(String.format("registry-vpc.%s.aliyuncs.com/sae-demo-image/consumer:1.0", default_.regions()[0].id()))
///             .packageType("Image")
///             .securityGroupId(defaultSecurityGroup.id())
///             .vpcId(defaultNetwork.id())
///             .vswitchId(defaultSwitch.id())
///             .timezone("Asia/Beijing")
///             .replicas(5)
///             .cpu(500)
///             .memory(2048)
///             .build());
///
///         var defaultApplicationScalingRule = new ApplicationScalingRule("defaultApplicationScalingRule", ApplicationScalingRuleArgs.builder()
///             .appId(defaultApplication.id())
///             .scalingRuleName(name)
///             .scalingRuleEnable(true)
///             .scalingRuleType("mix")
///             .minReadyInstances(3)
///             .minReadyInstanceRatio(-1)
///             .scalingRuleTimer(ApplicationScalingRuleScalingRuleTimerArgs.builder()
///                 .period("* * *")
///                 .schedules(
///                     ApplicationScalingRuleScalingRuleTimerScheduleArgs.builder()
///                         .atTime("08:00")
///                         .maxReplicas(10)
///                         .minReplicas(3)
///                         .build(),
///                     ApplicationScalingRuleScalingRuleTimerScheduleArgs.builder()
///                         .atTime("20:00")
///                         .maxReplicas(50)
///                         .minReplicas(3)
///                         .build())
///                 .build())
///             .scalingRuleMetric(ApplicationScalingRuleScalingRuleMetricArgs.builder()
///                 .maxReplicas(50)
///                 .minReplicas(3)
///                 .metrics(
///                     ApplicationScalingRuleScalingRuleMetricMetricArgs.builder()
///                         .metricType("CPU")
///                         .metricTargetAverageUtilization(20)
///                         .build(),
///                     ApplicationScalingRuleScalingRuleMetricMetricArgs.builder()
///                         .metricType("MEMORY")
///                         .metricTargetAverageUtilization(30)
///                         .build(),
///                     ApplicationScalingRuleScalingRuleMetricMetricArgs.builder()
///                         .metricType("tcpActiveConn")
///                         .metricTargetAverageUtilization(20)
///                         .build())
///                 .scaleUpRules(ApplicationScalingRuleScalingRuleMetricScaleUpRulesArgs.builder()
///                     .step(10)
///                     .disabled(false)
///                     .stabilizationWindowSeconds(0)
///                     .build())
///                 .scaleDownRules(ApplicationScalingRuleScalingRuleMetricScaleDownRulesArgs.builder()
///                     .step(10)
///                     .disabled(false)
///                     .stabilizationWindowSeconds(10)
///                     .build())
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
///     default: tf-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${defaultGetZones.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultNamespace:
///     type: alicloud:sae:Namespace
///     name: default
///     properties:
///       namespaceId: ${default.regions[0].id}:example${defaultInteger.result}
///       namespaceName: ${name}
///       namespaceDescription: ${name}
///       enableMicroRegistration: false
///   defaultApplication:
///     type: alicloud:sae:Application
///     name: default
///     properties:
///       appDescription: ${name}
///       appName: ${name}-${defaultInteger.result}
///       namespaceId: ${defaultNamespace.id}
///       imageUrl: registry-vpc.${default.regions[0].id}.aliyuncs.com/sae-demo-image/consumer:1.0
///       packageType: Image
///       securityGroupId: ${defaultSecurityGroup.id}
///       vpcId: ${defaultNetwork.id}
///       vswitchId: ${defaultSwitch.id}
///       timezone: Asia/Beijing
///       replicas: '5'
///       cpu: '500'
///       memory: '2048'
///   defaultApplicationScalingRule:
///     type: alicloud:sae:ApplicationScalingRule
///     name: default
///     properties:
///       appId: ${defaultApplication.id}
///       scalingRuleName: ${name}
///       scalingRuleEnable: true
///       scalingRuleType: mix
///       minReadyInstances: '3'
///       minReadyInstanceRatio: '-1'
///       scalingRuleTimer:
///         period: '* * *'
///         schedules:
///           - atTime: 08:00
///             maxReplicas: 10
///             minReplicas: 3
///           - atTime: 20:00
///             maxReplicas: 50
///             minReplicas: 3
///       scalingRuleMetric:
///         maxReplicas: 50
///         minReplicas: 3
///         metrics:
///           - metricType: CPU
///             metricTargetAverageUtilization: 20
///           - metricType: MEMORY
///             metricTargetAverageUtilization: 30
///           - metricType: tcpActiveConn
///             metricTargetAverageUtilization: 20
///         scaleUpRules:
///           step: 10
///           disabled: false
///           stabilizationWindowSeconds: 0
///         scaleDownRules:
///           step: 10
///           disabled: false
///           stabilizationWindowSeconds: 10
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless App Engine (SAE) Application Scaling Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/applicationScalingRule:ApplicationScalingRule example <app_id>:<scaling_rule_name>
/// ```
class ApplicationScalingRule extends pulumi.CustomResource {
  /// Application ID.
  late final pulumi.Output<String> appId;
  /// The min ready instance ratio.
  late final pulumi.Output<int?> minReadyInstanceRatio;
  /// The min ready instances.
  late final pulumi.Output<int?> minReadyInstances;
  /// True whether the auto scaling policy is enabled. The value description is as follows: true: enabled state. false: disabled status. Valid values: `false`, `true`.
  late final pulumi.Output<bool> scalingRuleEnable;
  /// Monitor the configuration of the indicator elasticity strategy. See `scaling_rule_metric` below.
  late final pulumi.Output<ApplicationScalingRuleScalingRuleMetric?> scalingRuleMetric;
  /// The name of a custom elastic scaling policy. In the application, the policy name cannot be repeated. It must start with a lowercase letter, and can only contain lowercase letters, numbers, and dashes (-), and no more than 32 characters. After the scaling policy is successfully created, the policy name cannot be modified.
  late final pulumi.Output<String> scalingRuleName;
  /// Configuration of Timing Resilient Policies. See `scaling_rule_timer` below.
  late final pulumi.Output<ApplicationScalingRuleScalingRuleTimer?> scalingRuleTimer;
  /// Flexible strategy type. Valid values: `mix`, `timing` and `metric`.
  late final pulumi.Output<String> scalingRuleType;

  /// Creates a new [ApplicationScalingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationScalingRule]. {@macro pulumi_sae_application_scaling_rule_application_scaling_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationScalingRule(
    String name, {
    ApplicationScalingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/applicationScalingRule:ApplicationScalingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    minReadyInstanceRatio = registerOutput<int?>('minReadyInstanceRatio');
    minReadyInstances = registerOutput<int?>('minReadyInstances');
    scalingRuleEnable = registerOutput<bool>('scalingRuleEnable');
    scalingRuleMetric = registerOutput<ApplicationScalingRuleScalingRuleMetric?>('scalingRuleMetric', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScalingRuleScalingRuleMetric.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingRuleName = registerOutput<String>('scalingRuleName');
    scalingRuleTimer = registerOutput<ApplicationScalingRuleScalingRuleTimer?>('scalingRuleTimer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScalingRuleScalingRuleTimer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingRuleType = registerOutput<String>('scalingRuleType');
  }

  /// Gets an existing [ApplicationScalingRule] resource's state with the given [name] and [id].
  static ApplicationScalingRule get(
    String name,
    pulumi.Input<String> id, {
    ApplicationScalingRuleState? state,
  }) {
    return ApplicationScalingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationScalingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/applicationScalingRule:ApplicationScalingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    minReadyInstanceRatio = registerOutput<int?>('minReadyInstanceRatio');
    minReadyInstances = registerOutput<int?>('minReadyInstances');
    scalingRuleEnable = registerOutput<bool>('scalingRuleEnable');
    scalingRuleMetric = registerOutput<ApplicationScalingRuleScalingRuleMetric?>('scalingRuleMetric', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScalingRuleScalingRuleMetric.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingRuleName = registerOutput<String>('scalingRuleName');
    scalingRuleTimer = registerOutput<ApplicationScalingRuleScalingRuleTimer?>('scalingRuleTimer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScalingRuleScalingRuleTimer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingRuleType = registerOutput<String>('scalingRuleType');
  }
}
