import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_args.dart';
import 'forwarding_rule_rule_action.dart';
import 'forwarding_rule_rule_condition.dart';
import 'forwarding_rule_state.dart';

/// Provides a Global Accelerator (GA) Forwarding Rule resource.
///
/// For information about Global Accelerator (GA) Forwarding Rule and how to use it, see [What is Forwarding Rule](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createforwardingrules).
///
/// > **NOTE:** Available since v1.120.0.
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
/// const region = config.get("region") || "cn-hangzhou";
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = new alicloud.ga.Accelerator("example", {
///     duration: 3,
///     spec: "2",
///     acceleratorName: name,
///     autoUseCoupon: false,
///     description: name,
///     autoRenewDuration: 2,
///     renewalStatus: "AutoRenewal",
/// });
/// const exampleBandwidthPackage = new alicloud.ga.BandwidthPackage("example", {
///     type: "Basic",
///     bandwidth: 20,
///     bandwidthType: "Basic",
///     duration: "1",
///     autoPay: true,
///     paymentType: "Subscription",
///     autoUseCoupon: false,
///     bandwidthPackageName: name,
///     description: name,
/// });
/// const exampleBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("example", {
///     acceleratorId: example.id,
///     bandwidthPackageId: exampleBandwidthPackage.id,
/// });
/// const exampleListener = new alicloud.ga.Listener("example", {
///     acceleratorId: exampleBandwidthPackageAttachment.acceleratorId,
///     clientAffinity: "SOURCE_IP",
///     description: name,
///     name: name,
///     protocol: "HTTP",
///     proxyProtocol: true,
///     portRanges: [{
///         fromPort: 60,
///         toPort: 60,
///     }],
/// });
/// const exampleEipAddress = new alicloud.ecs.EipAddress("example", {
///     bandwidth: "10",
///     internetChargeType: "PayByBandwidth",
/// });
/// const virtual = new alicloud.ga.EndpointGroup("virtual", {
///     acceleratorId: example.id,
///     endpointConfigurations: [{
///         endpoint: exampleEipAddress.ipAddress,
///         type: "PublicIp",
///         weight: 20,
///         enableClientipPreservation: true,
///     }],
///     endpointGroupRegion: _default.then(_default => _default.regions?.[0]?.id),
///     listenerId: exampleListener.id,
///     description: name,
///     endpointGroupType: "virtual",
///     endpointRequestProtocol: "HTTPS",
///     healthCheckIntervalSeconds: 4,
///     healthCheckPath: "/path",
///     name: name,
///     thresholdCount: 4,
///     trafficPercentage: 20,
///     portOverrides: {
///         endpointPort: 80,
///         listenerPort: 60,
///     },
/// });
/// const exampleForwardingRule = new alicloud.ga.ForwardingRule("example", {
///     acceleratorId: example.id,
///     listenerId: exampleListener.id,
///     ruleConditions: [
///         {
///             ruleConditionType: "Path",
///             pathConfig: {
///                 values: ["/testpathconfig"],
///             },
///         },
///         {
///             ruleConditionType: "Host",
///             hostConfigs: [{
///                 values: ["www.test.com"],
///             }],
///         },
///     ],
///     ruleActions: [{
///         order: 40,
///         ruleActionType: "ForwardGroup",
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 endpointGroupId: virtual.id,
///             }],
///         },
///     }],
///     priority: 2,
///     forwardingRuleName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_regions(current=True)
/// example = alicloud.ga.Accelerator("example",
///     duration=3,
///     spec="2",
///     accelerator_name=name,
///     auto_use_coupon=False,
///     description=name,
///     auto_renew_duration=2,
///     renewal_status="AutoRenewal")
/// example_bandwidth_package = alicloud.ga.BandwidthPackage("example",
///     type="Basic",
///     bandwidth=20,
///     bandwidth_type="Basic",
///     duration="1",
///     auto_pay=True,
///     payment_type="Subscription",
///     auto_use_coupon=False,
///     bandwidth_package_name=name,
///     description=name)
/// example_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("example",
///     accelerator_id=example.id,
///     bandwidth_package_id=example_bandwidth_package.id)
/// example_listener = alicloud.ga.Listener("example",
///     accelerator_id=example_bandwidth_package_attachment.accelerator_id,
///     client_affinity="SOURCE_IP",
///     description=name,
///     name=name,
///     protocol="HTTP",
///     proxy_protocol=True,
///     port_ranges=[{
///         "from_port": 60,
///         "to_port": 60,
///     }])
/// example_eip_address = alicloud.ecs.EipAddress("example",
///     bandwidth="10",
///     internet_charge_type="PayByBandwidth")
/// virtual = alicloud.ga.EndpointGroup("virtual",
///     accelerator_id=example.id,
///     endpoint_configurations=[{
///         "endpoint": example_eip_address.ip_address,
///         "type": "PublicIp",
///         "weight": 20,
///         "enable_clientip_preservation": True,
///     }],
///     endpoint_group_region=default.regions[0].id,
///     listener_id=example_listener.id,
///     description=name,
///     endpoint_group_type="virtual",
///     endpoint_request_protocol="HTTPS",
///     health_check_interval_seconds=4,
///     health_check_path="/path",
///     name=name,
///     threshold_count=4,
///     traffic_percentage=20,
///     port_overrides={
///         "endpoint_port": 80,
///         "listener_port": 60,
///     })
/// example_forwarding_rule = alicloud.ga.ForwardingRule("example",
///     accelerator_id=example.id,
///     listener_id=example_listener.id,
///     rule_conditions=[
///         {
///             "rule_condition_type": "Path",
///             "path_config": {
///                 "values": ["/testpathconfig"],
///             },
///         },
///         {
///             "rule_condition_type": "Host",
///             "host_configs": [{
///                 "values": ["www.test.com"],
///             }],
///         },
///     ],
///     rule_actions=[{
///         "order": 40,
///         "rule_action_type": "ForwardGroup",
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "endpoint_group_id": virtual.id,
///             }],
///         },
///     }],
///     priority=2,
///     forwarding_rule_name=name)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = new AliCloud.Ga.Accelerator("example", new()
///     {
///         Duration = 3,
///         Spec = "2",
///         AcceleratorName = name,
///         AutoUseCoupon = false,
///         Description = name,
///         AutoRenewDuration = 2,
///         RenewalStatus = "AutoRenewal",
///     });
///
///     var exampleBandwidthPackage = new AliCloud.Ga.BandwidthPackage("example", new()
///     {
///         Type = "Basic",
///         Bandwidth = 20,
///         BandwidthType = "Basic",
///         Duration = "1",
///         AutoPay = true,
///         PaymentType = "Subscription",
///         AutoUseCoupon = false,
///         BandwidthPackageName = name,
///         Description = name,
///     });
///
///     var exampleBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("example", new()
///     {
///         AcceleratorId = example.Id,
///         BandwidthPackageId = exampleBandwidthPackage.Id,
///     });
///
///     var exampleListener = new AliCloud.Ga.Listener("example", new()
///     {
///         AcceleratorId = exampleBandwidthPackageAttachment.AcceleratorId,
///         ClientAffinity = "SOURCE_IP",
///         Description = name,
///         Name = name,
///         Protocol = "HTTP",
///         ProxyProtocol = true,
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 60,
///                 ToPort = 60,
///             },
///         },
///     });
///
///     var exampleEipAddress = new AliCloud.Ecs.EipAddress("example", new()
///     {
///         Bandwidth = "10",
///         InternetChargeType = "PayByBandwidth",
///     });
///
///     var @virtual = new AliCloud.Ga.EndpointGroup("virtual", new()
///     {
///         AcceleratorId = example.Id,
///         EndpointConfigurations = new[]
///         {
///             new AliCloud.Ga.Inputs.EndpointGroupEndpointConfigurationArgs
///             {
///                 Endpoint = exampleEipAddress.IpAddress,
///                 Type = "PublicIp",
///                 Weight = 20,
///                 EnableClientipPreservation = true,
///             },
///         },
///         EndpointGroupRegion = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         ListenerId = exampleListener.Id,
///         Description = name,
///         EndpointGroupType = "virtual",
///         EndpointRequestProtocol = "HTTPS",
///         HealthCheckIntervalSeconds = 4,
///         HealthCheckPath = "/path",
///         Name = name,
///         ThresholdCount = 4,
///         TrafficPercentage = 20,
///         PortOverrides = new AliCloud.Ga.Inputs.EndpointGroupPortOverridesArgs
///         {
///             EndpointPort = 80,
///             ListenerPort = 60,
///         },
///     });
///
///     var exampleForwardingRule = new AliCloud.Ga.ForwardingRule("example", new()
///     {
///         AcceleratorId = example.Id,
///         ListenerId = exampleListener.Id,
///         RuleConditions = new[]
///         {
///             new AliCloud.Ga.Inputs.ForwardingRuleRuleConditionArgs
///             {
///                 RuleConditionType = "Path",
///                 PathConfig = new AliCloud.Ga.Inputs.ForwardingRuleRuleConditionPathConfigArgs
///                 {
///                     Values = new[]
///                     {
///                         "/testpathconfig",
///                     },
///                 },
///             },
///             new AliCloud.Ga.Inputs.ForwardingRuleRuleConditionArgs
///             {
///                 RuleConditionType = "Host",
///                 HostConfigs = new[]
///                 {
///                     new AliCloud.Ga.Inputs.ForwardingRuleRuleConditionHostConfigArgs
///                     {
///                         Values = new[]
///                         {
///                             "www.test.com",
///                         },
///                     },
///                 },
///             },
///         },
///         RuleActions = new[]
///         {
///             new AliCloud.Ga.Inputs.ForwardingRuleRuleActionArgs
///             {
///                 Order = 40,
///                 RuleActionType = "ForwardGroup",
///                 ForwardGroupConfig = new AliCloud.Ga.Inputs.ForwardingRuleRuleActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Ga.Inputs.ForwardingRuleRuleActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             EndpointGroupId = @virtual.Id,
///                         },
///                     },
///                 },
///             },
///         },
///         Priority = 2,
///         ForwardingRuleName = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ga.NewAccelerator(ctx, "example", &ga.AcceleratorArgs{
/// 			Duration:          pulumi.Int(3),
/// 			Spec:              pulumi.String("2"),
/// 			AcceleratorName:   pulumi.String(name),
/// 			AutoUseCoupon:     pulumi.Bool(false),
/// 			Description:       pulumi.String(name),
/// 			AutoRenewDuration: pulumi.Int(2),
/// 			RenewalStatus:     pulumi.String("AutoRenewal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "example", &ga.BandwidthPackageArgs{
/// 			Type:                 pulumi.String("Basic"),
/// 			Bandwidth:            pulumi.Int(20),
/// 			BandwidthType:        pulumi.String("Basic"),
/// 			Duration:             pulumi.String("1"),
/// 			AutoPay:              pulumi.Bool(true),
/// 			PaymentType:          pulumi.String("Subscription"),
/// 			AutoUseCoupon:        pulumi.Bool(false),
/// 			BandwidthPackageName: pulumi.String(name),
/// 			Description:          pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "example", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      example.ID(),
/// 			BandwidthPackageId: exampleBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleListener, err := ga.NewListener(ctx, "example", &ga.ListenerArgs{
/// 			AcceleratorId:  exampleBandwidthPackageAttachment.AcceleratorId,
/// 			ClientAffinity: pulumi.String("SOURCE_IP"),
/// 			Description:    pulumi.String(name),
/// 			Name:           pulumi.String(name),
/// 			Protocol:       pulumi.String("HTTP"),
/// 			ProxyProtocol:  pulumi.Bool(true),
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(60),
/// 					ToPort:   pulumi.Int(60),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEipAddress, err := ecs.NewEipAddress(ctx, "example", &ecs.EipAddressArgs{
/// 			Bandwidth:          pulumi.String("10"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		virtual, err := ga.NewEndpointGroup(ctx, "virtual", &ga.EndpointGroupArgs{
/// 			AcceleratorId: example.ID(),
/// 			EndpointConfigurations: ga.EndpointGroupEndpointConfigurationArray{
/// 				&ga.EndpointGroupEndpointConfigurationArgs{
/// 					Endpoint:                   exampleEipAddress.IpAddress,
/// 					Type:                       pulumi.String("PublicIp"),
/// 					Weight:                     pulumi.Int(20),
/// 					EnableClientipPreservation: pulumi.Bool(true),
/// 				},
/// 			},
/// 			EndpointGroupRegion:        pulumi.String(_default.Regions[0].Id),
/// 			ListenerId:                 exampleListener.ID(),
/// 			Description:                pulumi.String(name),
/// 			EndpointGroupType:          pulumi.String("virtual"),
/// 			EndpointRequestProtocol:    pulumi.String("HTTPS"),
/// 			HealthCheckIntervalSeconds: pulumi.Int(4),
/// 			HealthCheckPath:            pulumi.String("/path"),
/// 			Name:                       pulumi.String(name),
/// 			ThresholdCount:             pulumi.Int(4),
/// 			TrafficPercentage:          pulumi.Int(20),
/// 			PortOverrides: &ga.EndpointGroupPortOverridesArgs{
/// 				EndpointPort: pulumi.Int(80),
/// 				ListenerPort: pulumi.Int(60),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewForwardingRule(ctx, "example", &ga.ForwardingRuleArgs{
/// 			AcceleratorId: example.ID(),
/// 			ListenerId:    exampleListener.ID(),
/// 			RuleConditions: ga.ForwardingRuleRuleConditionArray{
/// 				&ga.ForwardingRuleRuleConditionArgs{
/// 					RuleConditionType: pulumi.String("Path"),
/// 					PathConfig: &ga.ForwardingRuleRuleConditionPathConfigArgs{
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("/testpathconfig"),
/// 						},
/// 					},
/// 				},
/// 				&ga.ForwardingRuleRuleConditionArgs{
/// 					RuleConditionType: pulumi.String("Host"),
/// 					HostConfigs: ga.ForwardingRuleRuleConditionHostConfigArray{
/// 						&ga.ForwardingRuleRuleConditionHostConfigArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("www.test.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RuleActions: ga.ForwardingRuleRuleActionArray{
/// 				&ga.ForwardingRuleRuleActionArgs{
/// 					Order:          pulumi.Int(40),
/// 					RuleActionType: pulumi.String("ForwardGroup"),
/// 					ForwardGroupConfig: &ga.ForwardingRuleRuleActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: ga.ForwardingRuleRuleActionForwardGroupConfigServerGroupTupleArray{
/// 							&ga.ForwardingRuleRuleActionForwardGroupConfigServerGroupTupleArgs{
/// 								EndpointGroupId: virtual.ID(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Priority:           pulumi.Int(2),
/// 			ForwardingRuleName: pulumi.String(name),
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
/// import com.pulumi.alicloud.ga.Accelerator;
/// import com.pulumi.alicloud.ga.AcceleratorArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ga.EndpointGroup;
/// import com.pulumi.alicloud.ga.EndpointGroupArgs;
/// import com.pulumi.alicloud.ga.inputs.EndpointGroupEndpointConfigurationArgs;
/// import com.pulumi.alicloud.ga.inputs.EndpointGroupPortOverridesArgs;
/// import com.pulumi.alicloud.ga.ForwardingRule;
/// import com.pulumi.alicloud.ga.ForwardingRuleArgs;
/// import com.pulumi.alicloud.ga.inputs.ForwardingRuleRuleConditionArgs;
/// import com.pulumi.alicloud.ga.inputs.ForwardingRuleRuleConditionPathConfigArgs;
/// import com.pulumi.alicloud.ga.inputs.ForwardingRuleRuleActionArgs;
/// import com.pulumi.alicloud.ga.inputs.ForwardingRuleRuleActionForwardGroupConfigArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var example = new Accelerator("example", AcceleratorArgs.builder()
///             .duration(3)
///             .spec("2")
///             .acceleratorName(name)
///             .autoUseCoupon(false)
///             .description(name)
///             .autoRenewDuration(2)
///             .renewalStatus("AutoRenewal")
///             .build());
///
///         var exampleBandwidthPackage = new BandwidthPackage("exampleBandwidthPackage", BandwidthPackageArgs.builder()
///             .type("Basic")
///             .bandwidth(20)
///             .bandwidthType("Basic")
///             .duration("1")
///             .autoPay(true)
///             .paymentType("Subscription")
///             .autoUseCoupon(false)
///             .bandwidthPackageName(name)
///             .description(name)
///             .build());
///
///         var exampleBandwidthPackageAttachment = new BandwidthPackageAttachment("exampleBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(example.id())
///             .bandwidthPackageId(exampleBandwidthPackage.id())
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .acceleratorId(exampleBandwidthPackageAttachment.acceleratorId())
///             .clientAffinity("SOURCE_IP")
///             .description(name)
///             .name(name)
///             .protocol("HTTP")
///             .proxyProtocol(true)
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(60)
///                 .toPort(60)
///                 .build())
///             .build());
///
///         var exampleEipAddress = new EipAddress("exampleEipAddress", EipAddressArgs.builder()
///             .bandwidth("10")
///             .internetChargeType("PayByBandwidth")
///             .build());
///
///         var virtual = new EndpointGroup("virtual", EndpointGroupArgs.builder()
///             .acceleratorId(example.id())
///             .endpointConfigurations(EndpointGroupEndpointConfigurationArgs.builder()
///                 .endpoint(exampleEipAddress.ipAddress())
///                 .type("PublicIp")
///                 .weight(20)
///                 .enableClientipPreservation(true)
///                 .build())
///             .endpointGroupRegion(default_.regions()[0].id())
///             .listenerId(exampleListener.id())
///             .description(name)
///             .endpointGroupType("virtual")
///             .endpointRequestProtocol("HTTPS")
///             .healthCheckIntervalSeconds(4)
///             .healthCheckPath("/path")
///             .name(name)
///             .thresholdCount(4)
///             .trafficPercentage(20)
///             .portOverrides(EndpointGroupPortOverridesArgs.builder()
///                 .endpointPort(80)
///                 .listenerPort(60)
///                 .build())
///             .build());
///
///         var exampleForwardingRule = new ForwardingRule("exampleForwardingRule", ForwardingRuleArgs.builder()
///             .acceleratorId(example.id())
///             .listenerId(exampleListener.id())
///             .ruleConditions(
///                 ForwardingRuleRuleConditionArgs.builder()
///                     .ruleConditionType("Path")
///                     .pathConfig(ForwardingRuleRuleConditionPathConfigArgs.builder()
///                         .values("/testpathconfig")
///                         .build())
///                     .build(),
///                 ForwardingRuleRuleConditionArgs.builder()
///                     .ruleConditionType("Host")
///                     .hostConfigs(ForwardingRuleRuleConditionHostConfigArgs.builder()
///                         .values("www.test.com")
///                         .build())
///                     .build())
///             .ruleActions(ForwardingRuleRuleActionArgs.builder()
///                 .order(40)
///                 .ruleActionType("ForwardGroup")
///                 .forwardGroupConfig(ForwardingRuleRuleActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(ForwardingRuleRuleActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .endpointGroupId(virtual.id())
///                         .build())
///                     .build())
///                 .build())
///             .priority(2)
///             .forwardingRuleName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-hangzhou
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   example:
///     type: alicloud:ga:Accelerator
///     properties:
///       duration: 3
///       spec: '2'
///       acceleratorName: ${name}
///       autoUseCoupon: false
///       description: ${name}
///       autoRenewDuration: '2'
///       renewalStatus: AutoRenewal
///   exampleBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: example
///     properties:
///       type: Basic
///       bandwidth: 20
///       bandwidthType: Basic
///       duration: 1
///       autoPay: true
///       paymentType: Subscription
///       autoUseCoupon: false
///       bandwidthPackageName: ${name}
///       description: ${name}
///   exampleBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: example
///     properties:
///       acceleratorId: ${example.id}
///       bandwidthPackageId: ${exampleBandwidthPackage.id}
///   exampleListener:
///     type: alicloud:ga:Listener
///     name: example
///     properties:
///       acceleratorId: ${exampleBandwidthPackageAttachment.acceleratorId}
///       clientAffinity: SOURCE_IP
///       description: ${name}
///       name: ${name}
///       protocol: HTTP
///       proxyProtocol: true
///       portRanges:
///         - fromPort: 60
///           toPort: 60
///   exampleEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: example
///     properties:
///       bandwidth: '10'
///       internetChargeType: PayByBandwidth
///   virtual:
///     type: alicloud:ga:EndpointGroup
///     properties:
///       acceleratorId: ${example.id}
///       endpointConfigurations:
///         - endpoint: ${exampleEipAddress.ipAddress}
///           type: PublicIp
///           weight: '20'
///           enableClientipPreservation: true
///       endpointGroupRegion: ${default.regions[0].id}
///       listenerId: ${exampleListener.id}
///       description: ${name}
///       endpointGroupType: virtual
///       endpointRequestProtocol: HTTPS
///       healthCheckIntervalSeconds: 4
///       healthCheckPath: /path
///       name: ${name}
///       thresholdCount: 4
///       trafficPercentage: 20
///       portOverrides:
///         endpointPort: 80
///         listenerPort: 60
///   exampleForwardingRule:
///     type: alicloud:ga:ForwardingRule
///     name: example
///     properties:
///       acceleratorId: ${example.id}
///       listenerId: ${exampleListener.id}
///       ruleConditions:
///         - ruleConditionType: Path
///           pathConfig:
///             values:
///               - /testpathconfig
///         - ruleConditionType: Host
///           hostConfigs:
///             - values:
///                 - www.test.com
///       ruleActions:
///         - order: '40'
///           ruleActionType: ForwardGroup
///           forwardGroupConfig:
///             serverGroupTuples:
///               - endpointGroupId: ${virtual.id}
///       priority: 2
///       forwardingRuleName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Forwarding Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/forwardingRule:ForwardingRule example <accelerator_id>:<listener_id>:<forwarding_rule_id>
/// ```
class ForwardingRule extends pulumi.CustomResource {
  /// The ID of the Global Accelerator instance.
  late final pulumi.Output<String> acceleratorId;
  /// The ID of the Forwarding Rule.
  late final pulumi.Output<String> forwardingRuleId;
  /// Forwarding policy name. The length of the name is 2-128 English or Chinese characters. It must start with uppercase and lowercase letters or Chinese characters. It can contain numbers, half width period (.), underscores (_) And dash (-).
  late final pulumi.Output<String?> forwardingRuleName;
  /// The status of the Forwarding Rule.
  late final pulumi.Output<String> forwardingRuleStatus;
  /// The ID of the listener.
  late final pulumi.Output<String> listenerId;
  /// Forwarding policy priority.
  late final pulumi.Output<int> priority;
  /// Forward action. See `rule_actions` below.
  late final pulumi.Output<List<ForwardingRuleRuleAction>> ruleActions;
  /// Forwarding condition list. See `rule_conditions` below.
  late final pulumi.Output<List<ForwardingRuleRuleCondition>> ruleConditions;

  /// Creates a new [ForwardingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ForwardingRule]. {@macro pulumi_ga_forwarding_rule_forwarding_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ForwardingRule(
    String name, {
    ForwardingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/forwardingRule:ForwardingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.forwardingRuleId = registerOutput<String>('forwardingRuleId');
    this.forwardingRuleName = registerOutput<String?>('forwardingRuleName');
    this.forwardingRuleStatus = registerOutput<String>('forwardingRuleStatus');
    this.listenerId = registerOutput<String>('listenerId');
    this.priority = registerOutput<int>('priority');
    this.ruleActions = registerOutput<List<ForwardingRuleRuleAction>>('ruleActions');
    this.ruleConditions = registerOutput<List<ForwardingRuleRuleCondition>>('ruleConditions');
  }

  /// Gets an existing [ForwardingRule] resource's state with the given [name] and [id].
  static ForwardingRule get(
    String name,
    pulumi.Input<String> id, {
    ForwardingRuleState? state,
  }) {
    return ForwardingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ForwardingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/forwardingRule:ForwardingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.forwardingRuleId = registerOutput<String>('forwardingRuleId');
    this.forwardingRuleName = registerOutput<String?>('forwardingRuleName');
    this.forwardingRuleStatus = registerOutput<String>('forwardingRuleStatus');
    this.listenerId = registerOutput<String>('listenerId');
    this.priority = registerOutput<int>('priority');
    this.ruleActions = registerOutput<List<ForwardingRuleRuleAction>>('ruleActions');
    this.ruleConditions = registerOutput<List<ForwardingRuleRuleCondition>>('ruleConditions');
  }
}
