import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_traffic_policy_args.dart';
import 'custom_routing_endpoint_traffic_policy_port_range.dart';
import 'custom_routing_endpoint_traffic_policy_state.dart';

/// Provides a Global Accelerator (GA) Custom Routing Endpoint Traffic Policy resource.
///
/// For information about Global Accelerator (GA) Custom Routing Endpoint Traffic Policy and how to use it, see [What is Custom Routing Endpoint Traffic Policy](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createcustomroutingendpointtrafficpolicies).
///
/// > **NOTE:** Available since v1.197.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({});
/// const defaultGetAccelerators = alicloud.ga.getAccelerators({
///     status: "active",
///     bandwidthBillingType: "BandwidthPackage",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.ids?.[0]),
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
/// });
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: defaultGetAccelerators.then(defaultGetAccelerators => defaultGetAccelerators.accelerators?.[1]?.id),
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultListener = new alicloud.ga.Listener("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     listenerType: "CustomRouting",
///     portRanges: [{
///         fromPort: 10000,
///         toPort: 26000,
///     }],
/// });
/// const defaultCustomRoutingEndpointGroup = new alicloud.ga.CustomRoutingEndpointGroup("default", {
///     acceleratorId: defaultListener.acceleratorId,
///     listenerId: defaultListener.id,
///     endpointGroupRegion: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///     customRoutingEndpointGroupName: name,
///     description: name,
/// });
/// const defaultCustomRoutingEndpointGroupDestination = new alicloud.ga.CustomRoutingEndpointGroupDestination("default", {
///     endpointGroupId: defaultCustomRoutingEndpointGroup.id,
///     protocols: ["TCP"],
///     fromPort: 1,
///     toPort: 10,
/// });
/// const defaultCustomRoutingEndpoint = new alicloud.ga.CustomRoutingEndpoint("default", {
///     endpointGroupId: defaultCustomRoutingEndpointGroupDestination.endpointGroupId,
///     endpoint: defaultSwitch.id,
///     type: "PrivateSubNet",
///     trafficToEndpointPolicy: "AllowAll",
/// });
/// const defaultCustomRoutingEndpointTrafficPolicy = new alicloud.ga.CustomRoutingEndpointTrafficPolicy("default", {
///     endpointId: defaultCustomRoutingEndpoint.customRoutingEndpointId,
///     address: "192.168.192.2",
///     portRanges: [{
///         fromPort: 1,
///         toPort: 2,
///     }],
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
///     name = "tf-example"
/// default = alicloud.get_zones()
/// default_get_accelerators = alicloud.ga.get_accelerators(status="active",
///     bandwidth_billing_type="BandwidthPackage")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.ids[0])
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30)
/// default_get_regions = alicloud.get_regions(current=True)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default_get_accelerators.accelerators[1].id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_listener = alicloud.ga.Listener("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     listener_type="CustomRouting",
///     port_ranges=[{
///         "from_port": 10000,
///         "to_port": 26000,
///     }])
/// default_custom_routing_endpoint_group = alicloud.ga.CustomRoutingEndpointGroup("default",
///     accelerator_id=default_listener.accelerator_id,
///     listener_id=default_listener.id,
///     endpoint_group_region=default_get_regions.regions[0].id,
///     custom_routing_endpoint_group_name=name,
///     description=name)
/// default_custom_routing_endpoint_group_destination = alicloud.ga.CustomRoutingEndpointGroupDestination("default",
///     endpoint_group_id=default_custom_routing_endpoint_group.id,
///     protocols=["TCP"],
///     from_port=1,
///     to_port=10)
/// default_custom_routing_endpoint = alicloud.ga.CustomRoutingEndpoint("default",
///     endpoint_group_id=default_custom_routing_endpoint_group_destination.endpoint_group_id,
///     endpoint=default_switch.id,
///     type="PrivateSubNet",
///     traffic_to_endpoint_policy="AllowAll")
/// default_custom_routing_endpoint_traffic_policy = alicloud.ga.CustomRoutingEndpointTrafficPolicy("default",
///     endpoint_id=default_custom_routing_endpoint.custom_routing_endpoint_id,
///     address="192.168.192.2",
///     port_ranges=[{
///         "from_port": 1,
///         "to_port": 2,
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultGetAccelerators = AliCloud.Ga.GetAccelerators.Invoke(new()
///     {
///         Status = "active",
///         BandwidthBillingType = "BandwidthPackage",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Ga.BandwidthPackage("default", new()
///     {
///         Bandwidth = 100,
///         Type = "Basic",
///         BandwidthType = "Basic",
///         PaymentType = "PayAsYouGo",
///         BillingType = "PayBy95",
///         Ratio = 30,
///     });
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = defaultGetAccelerators.Apply(getAcceleratorsResult => getAcceleratorsResult.Accelerators[1]?.Id),
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var defaultListener = new AliCloud.Ga.Listener("default", new()
///     {
///         AcceleratorId = defaultBandwidthPackageAttachment.AcceleratorId,
///         ListenerType = "CustomRouting",
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 10000,
///                 ToPort = 26000,
///             },
///         },
///     });
///
///     var defaultCustomRoutingEndpointGroup = new AliCloud.Ga.CustomRoutingEndpointGroup("default", new()
///     {
///         AcceleratorId = defaultListener.AcceleratorId,
///         ListenerId = defaultListener.Id,
///         EndpointGroupRegion = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         CustomRoutingEndpointGroupName = name,
///         Description = name,
///     });
///
///     var defaultCustomRoutingEndpointGroupDestination = new AliCloud.Ga.CustomRoutingEndpointGroupDestination("default", new()
///     {
///         EndpointGroupId = defaultCustomRoutingEndpointGroup.Id,
///         Protocols = new[]
///         {
///             "TCP",
///         },
///         FromPort = 1,
///         ToPort = 10,
///     });
///
///     var defaultCustomRoutingEndpoint = new AliCloud.Ga.CustomRoutingEndpoint("default", new()
///     {
///         EndpointGroupId = defaultCustomRoutingEndpointGroupDestination.EndpointGroupId,
///         Endpoint = defaultSwitch.Id,
///         Type = "PrivateSubNet",
///         TrafficToEndpointPolicy = "AllowAll",
///     });
///
///     var defaultCustomRoutingEndpointTrafficPolicy = new AliCloud.Ga.CustomRoutingEndpointTrafficPolicy("default", new()
///     {
///         EndpointId = defaultCustomRoutingEndpoint.CustomRoutingEndpointId,
///         Address = "192.168.192.2",
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.CustomRoutingEndpointTrafficPolicyPortRangeArgs
///             {
///                 FromPort = 1,
///                 ToPort = 2,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetAccelerators, err := ga.GetAccelerators(ctx, &ga.GetAcceleratorsArgs{
/// 			Status:               pulumi.StringRef("active"),
/// 			BandwidthBillingType: pulumi.StringRef("BandwidthPackage"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("192.168.192.0/24"),
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := ga.NewBandwidthPackage(ctx, "default", &ga.BandwidthPackageArgs{
/// 			Bandwidth:     pulumi.Int(100),
/// 			Type:          pulumi.String("Basic"),
/// 			BandwidthType: pulumi.String("Basic"),
/// 			PaymentType:   pulumi.String("PayAsYouGo"),
/// 			BillingType:   pulumi.String("PayBy95"),
/// 			Ratio:         pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      pulumi.String(defaultGetAccelerators.Accelerators[1].Id),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultListener, err := ga.NewListener(ctx, "default", &ga.ListenerArgs{
/// 			AcceleratorId: defaultBandwidthPackageAttachment.AcceleratorId,
/// 			ListenerType:  pulumi.String("CustomRouting"),
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(10000),
/// 					ToPort:   pulumi.Int(26000),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomRoutingEndpointGroup, err := ga.NewCustomRoutingEndpointGroup(ctx, "default", &ga.CustomRoutingEndpointGroupArgs{
/// 			AcceleratorId:                  defaultListener.AcceleratorId,
/// 			ListenerId:                     defaultListener.ID(),
/// 			EndpointGroupRegion:            pulumi.String(defaultGetRegions.Regions[0].Id),
/// 			CustomRoutingEndpointGroupName: pulumi.String(name),
/// 			Description:                    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomRoutingEndpointGroupDestination, err := ga.NewCustomRoutingEndpointGroupDestination(ctx, "default", &ga.CustomRoutingEndpointGroupDestinationArgs{
/// 			EndpointGroupId: defaultCustomRoutingEndpointGroup.ID(),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("TCP"),
/// 			},
/// 			FromPort: pulumi.Int(1),
/// 			ToPort:   pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomRoutingEndpoint, err := ga.NewCustomRoutingEndpoint(ctx, "default", &ga.CustomRoutingEndpointArgs{
/// 			EndpointGroupId:         defaultCustomRoutingEndpointGroupDestination.EndpointGroupId,
/// 			Endpoint:                defaultSwitch.ID(),
/// 			Type:                    pulumi.String("PrivateSubNet"),
/// 			TrafficToEndpointPolicy: pulumi.String("AllowAll"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewCustomRoutingEndpointTrafficPolicy(ctx, "default", &ga.CustomRoutingEndpointTrafficPolicyArgs{
/// 			EndpointId: defaultCustomRoutingEndpoint.CustomRoutingEndpointId,
/// 			Address:    pulumi.String("192.168.192.2"),
/// 			PortRanges: ga.CustomRoutingEndpointTrafficPolicyPortRangeArray{
/// 				&ga.CustomRoutingEndpointTrafficPolicyPortRangeArgs{
/// 					FromPort: pulumi.Int(1),
/// 					ToPort:   pulumi.Int(2),
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ga.GaFunctions;
/// import com.pulumi.alicloud.ga.inputs.GetAcceleratorsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroup;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroupArgs;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroupDestination;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroupDestinationArgs;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpoint;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointArgs;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointTrafficPolicy;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointTrafficPolicyArgs;
/// import com.pulumi.alicloud.ga.inputs.CustomRoutingEndpointTrafficPolicyPortRangeArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetAccelerators = GaFunctions.getAccelerators(GetAcceleratorsArgs.builder()
///             .status("active")
///             .bandwidthBillingType("BandwidthPackage")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(default_.ids()[0])
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(100)
///             .type("Basic")
///             .bandwidthType("Basic")
///             .paymentType("PayAsYouGo")
///             .billingType("PayBy95")
///             .ratio(30)
///             .build());
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(defaultGetAccelerators.accelerators()[1].id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .listenerType("CustomRouting")
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(10000)
///                 .toPort(26000)
///                 .build())
///             .build());
///
///         var defaultCustomRoutingEndpointGroup = new CustomRoutingEndpointGroup("defaultCustomRoutingEndpointGroup", CustomRoutingEndpointGroupArgs.builder()
///             .acceleratorId(defaultListener.acceleratorId())
///             .listenerId(defaultListener.id())
///             .endpointGroupRegion(defaultGetRegions.regions()[0].id())
///             .customRoutingEndpointGroupName(name)
///             .description(name)
///             .build());
///
///         var defaultCustomRoutingEndpointGroupDestination = new CustomRoutingEndpointGroupDestination("defaultCustomRoutingEndpointGroupDestination", CustomRoutingEndpointGroupDestinationArgs.builder()
///             .endpointGroupId(defaultCustomRoutingEndpointGroup.id())
///             .protocols("TCP")
///             .fromPort(1)
///             .toPort(10)
///             .build());
///
///         var defaultCustomRoutingEndpoint = new CustomRoutingEndpoint("defaultCustomRoutingEndpoint", CustomRoutingEndpointArgs.builder()
///             .endpointGroupId(defaultCustomRoutingEndpointGroupDestination.endpointGroupId())
///             .endpoint(defaultSwitch.id())
///             .type("PrivateSubNet")
///             .trafficToEndpointPolicy("AllowAll")
///             .build());
///
///         var defaultCustomRoutingEndpointTrafficPolicy = new CustomRoutingEndpointTrafficPolicy("defaultCustomRoutingEndpointTrafficPolicy", CustomRoutingEndpointTrafficPolicyArgs.builder()
///             .endpointId(defaultCustomRoutingEndpoint.customRoutingEndpointId())
///             .address("192.168.192.2")
///             .portRanges(CustomRoutingEndpointTrafficPolicyPortRangeArgs.builder()
///                 .fromPort(1)
///                 .toPort(2)
///                 .build())
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
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.192.0/24
///       zoneId: ${default.ids[0]}
///   defaultBandwidthPackage:
///     type: alicloud:ga:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 100
///       type: Basic
///       bandwidthType: Basic
///       paymentType: PayAsYouGo
///       billingType: PayBy95
///       ratio: 30
///   defaultBandwidthPackageAttachment:
///     type: alicloud:ga:BandwidthPackageAttachment
///     name: default
///     properties:
///       acceleratorId: ${defaultGetAccelerators.accelerators[1].id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultListener:
///     type: alicloud:ga:Listener
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       listenerType: CustomRouting
///       portRanges:
///         - fromPort: 10000
///           toPort: 26000
///   defaultCustomRoutingEndpointGroup:
///     type: alicloud:ga:CustomRoutingEndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${defaultListener.acceleratorId}
///       listenerId: ${defaultListener.id}
///       endpointGroupRegion: ${defaultGetRegions.regions[0].id}
///       customRoutingEndpointGroupName: ${name}
///       description: ${name}
///   defaultCustomRoutingEndpointGroupDestination:
///     type: alicloud:ga:CustomRoutingEndpointGroupDestination
///     name: default
///     properties:
///       endpointGroupId: ${defaultCustomRoutingEndpointGroup.id}
///       protocols:
///         - TCP
///       fromPort: 1
///       toPort: 10
///   defaultCustomRoutingEndpoint:
///     type: alicloud:ga:CustomRoutingEndpoint
///     name: default
///     properties:
///       endpointGroupId: ${defaultCustomRoutingEndpointGroupDestination.endpointGroupId}
///       endpoint: ${defaultSwitch.id}
///       type: PrivateSubNet
///       trafficToEndpointPolicy: AllowAll
///   defaultCustomRoutingEndpointTrafficPolicy:
///     type: alicloud:ga:CustomRoutingEndpointTrafficPolicy
///     name: default
///     properties:
///       endpointId: ${defaultCustomRoutingEndpoint.customRoutingEndpointId}
///       address: 192.168.192.2
///       portRanges:
///         - fromPort: 1
///           toPort: 2
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
///   defaultGetAccelerators:
///     fn::invoke:
///       function: alicloud:ga:getAccelerators
///       arguments:
///         status: active
///         bandwidthBillingType: BandwidthPackage
///   defaultGetRegions:
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
/// Global Accelerator (GA) Custom Routing Endpoint Traffic Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/customRoutingEndpointTrafficPolicy:CustomRoutingEndpointTrafficPolicy example <endpoint_id>:<custom_routing_endpoint_traffic_policy_id>
/// ```
class CustomRoutingEndpointTrafficPolicy extends pulumi.CustomResource {
  /// The ID of the GA instance.
  late final pulumi.Output<String> acceleratorId;
  /// The IP address of the destination to which traffic is allowed.
  late final pulumi.Output<String> address;
  /// The ID of the Custom Routing Endpoint Traffic Policy.
  late final pulumi.Output<String> customRoutingEndpointTrafficPolicyId;
  /// The ID of the endpoint group.
  late final pulumi.Output<String> endpointGroupId;
  /// The ID of the Custom Routing Endpoint.
  late final pulumi.Output<String> endpointId;
  /// The ID of the listener.
  late final pulumi.Output<String> listenerId;
  /// Port rangeSee the following. See `port_ranges` below.
  late final pulumi.Output<List<CustomRoutingEndpointTrafficPolicyPortRange>?> portRanges;
  /// The status of the Custom Routing Endpoint Traffic Policy.
  late final pulumi.Output<String> status;

  /// Creates a new [CustomRoutingEndpointTrafficPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRoutingEndpointTrafficPolicy]. {@macro pulumi_ga_custom_routing_endpoint_traffic_policy_custom_routing_endpoint_traffic_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRoutingEndpointTrafficPolicy(
    String name, {
    CustomRoutingEndpointTrafficPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/customRoutingEndpointTrafficPolicy:CustomRoutingEndpointTrafficPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.address = registerOutput<String>('address');
    this.customRoutingEndpointTrafficPolicyId = registerOutput<String>('customRoutingEndpointTrafficPolicyId');
    this.endpointGroupId = registerOutput<String>('endpointGroupId');
    this.endpointId = registerOutput<String>('endpointId');
    this.listenerId = registerOutput<String>('listenerId');
    this.portRanges = registerOutput<List<CustomRoutingEndpointTrafficPolicyPortRange>?>('portRanges');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [CustomRoutingEndpointTrafficPolicy] resource's state with the given [name] and [id].
  static CustomRoutingEndpointTrafficPolicy get(
    String name,
    pulumi.Input<String> id, {
    CustomRoutingEndpointTrafficPolicyState? state,
  }) {
    return CustomRoutingEndpointTrafficPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomRoutingEndpointTrafficPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/customRoutingEndpointTrafficPolicy:CustomRoutingEndpointTrafficPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.address = registerOutput<String>('address');
    this.customRoutingEndpointTrafficPolicyId = registerOutput<String>('customRoutingEndpointTrafficPolicyId');
    this.endpointGroupId = registerOutput<String>('endpointGroupId');
    this.endpointId = registerOutput<String>('endpointId');
    this.listenerId = registerOutput<String>('listenerId');
    this.portRanges = registerOutput<List<CustomRoutingEndpointTrafficPolicyPortRange>?>('portRanges');
    this.status = registerOutput<String>('status');
  }
}
