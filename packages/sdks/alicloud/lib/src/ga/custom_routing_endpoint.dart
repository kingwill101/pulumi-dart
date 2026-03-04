import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_args.dart';
import 'custom_routing_endpoint_state.dart';

/// Provides a Global Accelerator (GA) Custom Routing Endpoint resource.
///
/// For information about Global Accelerator (GA) Custom Routing Endpoint and how to use it, see [What is Custom Routing Endpoint](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createcustomroutingendpoints).
///
/// &gt; **NOTE:** Available since v1.197.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultAccelerator = new alicloud.ga.Accelerator("default", {
///     duration: 1,
///     autoUseCoupon: true,
///     spec: "1",
/// });
/// const defaultBandwidthPackage = new alicloud.ga.BandwidthPackage("default", {
///     bandwidth: 100,
///     type: "Basic",
///     bandwidthType: "Basic",
///     paymentType: "PayAsYouGo",
///     billingType: "PayBy95",
///     ratio: 30,
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.ga.BandwidthPackageAttachment("default", {
///     acceleratorId: defaultAccelerator.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultListener = new alicloud.ga.Listener("default", {
///     acceleratorId: defaultBandwidthPackageAttachment.acceleratorId,
///     listenerType: "CustomRouting",
///     portRanges: [{
///         fromPort: 10000,
///         toPort: 16000,
///     }],
/// });
/// const defaultCustomRoutingEndpointGroup = new alicloud.ga.CustomRoutingEndpointGroup("default", {
///     acceleratorId: defaultListener.acceleratorId,
///     listenerId: defaultListener.id,
///     endpointGroupRegion: region,
///     customRoutingEndpointGroupName: "terraform-example",
///     description: "terraform-example",
/// });
/// const defaultCustomRoutingEndpoint = new alicloud.ga.CustomRoutingEndpoint("default", {
///     endpointGroupId: defaultCustomRoutingEndpointGroup.id,
///     endpoint: defaultSwitch.id,
///     type: "PrivateSubNet",
///     trafficToEndpointPolicy: "DenyAll",
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_accelerator = alicloud.ga.Accelerator("default",
///     duration=1,
///     auto_use_coupon=True,
///     spec="1")
/// default_bandwidth_package = alicloud.ga.BandwidthPackage("default",
///     bandwidth=100,
///     type="Basic",
///     bandwidth_type="Basic",
///     payment_type="PayAsYouGo",
///     billing_type="PayBy95",
///     ratio=30)
/// default_bandwidth_package_attachment = alicloud.ga.BandwidthPackageAttachment("default",
///     accelerator_id=default_accelerator.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_listener = alicloud.ga.Listener("default",
///     accelerator_id=default_bandwidth_package_attachment.accelerator_id,
///     listener_type="CustomRouting",
///     port_ranges=[{
///         "from_port": 10000,
///         "to_port": 16000,
///     }])
/// default_custom_routing_endpoint_group = alicloud.ga.CustomRoutingEndpointGroup("default",
///     accelerator_id=default_listener.accelerator_id,
///     listener_id=default_listener.id,
///     endpoint_group_region=region,
///     custom_routing_endpoint_group_name="terraform-example",
///     description="terraform-example")
/// default_custom_routing_endpoint = alicloud.ga.CustomRoutingEndpoint("default",
///     endpoint_group_id=default_custom_routing_endpoint_group.id,
///     endpoint=default_switch.id,
///     type="PrivateSubNet",
///     traffic_to_endpoint_policy="DenyAll")
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultAccelerator = new AliCloud.Ga.Accelerator("default", new()
///     {
///         Duration = 1,
///         AutoUseCoupon = true,
///         Spec = "1",
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
///     var defaultBandwidthPackageAttachment = new AliCloud.Ga.BandwidthPackageAttachment("default", new()
///     {
///         AcceleratorId = defaultAccelerator.Id,
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
///                 ToPort = 16000,
///             },
///         },
///     });
///
///     var defaultCustomRoutingEndpointGroup = new AliCloud.Ga.CustomRoutingEndpointGroup("default", new()
///     {
///         AcceleratorId = defaultListener.AcceleratorId,
///         ListenerId = defaultListener.Id,
///         EndpointGroupRegion = region,
///         CustomRoutingEndpointGroupName = "terraform-example",
///         Description = "terraform-example",
///     });
///
///     var defaultCustomRoutingEndpoint = new AliCloud.Ga.CustomRoutingEndpoint("default", new()
///     {
///         EndpointGroupId = defaultCustomRoutingEndpointGroup.Id,
///         Endpoint = defaultSwitch.Id,
///         Type = "PrivateSubNet",
///         TrafficToEndpointPolicy = "DenyAll",
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccelerator, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("1"),
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
/// 		defaultBandwidthPackageAttachment, err := ga.NewBandwidthPackageAttachment(ctx, "default", &ga.BandwidthPackageAttachmentArgs{
/// 			AcceleratorId:      defaultAccelerator.ID(),
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
/// 					ToPort:   pulumi.Int(16000),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomRoutingEndpointGroup, err := ga.NewCustomRoutingEndpointGroup(ctx, "default", &ga.CustomRoutingEndpointGroupArgs{
/// 			AcceleratorId:                  defaultListener.AcceleratorId,
/// 			ListenerId:                     defaultListener.ID(),
/// 			EndpointGroupRegion:            pulumi.String(region),
/// 			CustomRoutingEndpointGroupName: pulumi.String("terraform-example"),
/// 			Description:                    pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewCustomRoutingEndpoint(ctx, "default", &ga.CustomRoutingEndpointArgs{
/// 			EndpointGroupId:         defaultCustomRoutingEndpointGroup.ID(),
/// 			Endpoint:                defaultSwitch.ID(),
/// 			Type:                    pulumi.String("PrivateSubNet"),
/// 			TrafficToEndpointPolicy: pulumi.String("DenyAll"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ga.Accelerator;
/// import com.pulumi.alicloud.ga.AcceleratorArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackage;
/// import com.pulumi.alicloud.ga.BandwidthPackageArgs;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.ga.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.ga.Listener;
/// import com.pulumi.alicloud.ga.ListenerArgs;
/// import com.pulumi.alicloud.ga.inputs.ListenerPortRangeArgs;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroup;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroupArgs;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpoint;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultAccelerator = new Accelerator("defaultAccelerator", AcceleratorArgs.builder()
///             .duration(1)
///             .autoUseCoupon(true)
///             .spec("1")
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
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .acceleratorId(defaultAccelerator.id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .acceleratorId(defaultBandwidthPackageAttachment.acceleratorId())
///             .listenerType("CustomRouting")
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(10000)
///                 .toPort(16000)
///                 .build())
///             .build());
///
///         var defaultCustomRoutingEndpointGroup = new CustomRoutingEndpointGroup("defaultCustomRoutingEndpointGroup", CustomRoutingEndpointGroupArgs.builder()
///             .acceleratorId(defaultListener.acceleratorId())
///             .listenerId(defaultListener.id())
///             .endpointGroupRegion(region)
///             .customRoutingEndpointGroupName("terraform-example")
///             .description("terraform-example")
///             .build());
///
///         var defaultCustomRoutingEndpoint = new CustomRoutingEndpoint("defaultCustomRoutingEndpoint", CustomRoutingEndpointArgs.builder()
///             .endpointGroupId(defaultCustomRoutingEndpointGroup.id())
///             .endpoint(defaultSwitch.id())
///             .type("PrivateSubNet")
///             .trafficToEndpointPolicy("DenyAll")
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
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultAccelerator:
///     type: alicloud:ga:Accelerator
///     name: default
///     properties:
///       duration: 1
///       autoUseCoupon: true
///       spec: '1'
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
///       acceleratorId: ${defaultAccelerator.id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultListener:
///     type: alicloud:ga:Listener
///     name: default
///     properties:
///       acceleratorId: ${defaultBandwidthPackageAttachment.acceleratorId}
///       listenerType: CustomRouting
///       portRanges:
///         - fromPort: 10000
///           toPort: 16000
///   defaultCustomRoutingEndpointGroup:
///     type: alicloud:ga:CustomRoutingEndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${defaultListener.acceleratorId}
///       listenerId: ${defaultListener.id}
///       endpointGroupRegion: ${region}
///       customRoutingEndpointGroupName: terraform-example
///       description: terraform-example
///   defaultCustomRoutingEndpoint:
///     type: alicloud:ga:CustomRoutingEndpoint
///     name: default
///     properties:
///       endpointGroupId: ${defaultCustomRoutingEndpointGroup.id}
///       endpoint: ${defaultSwitch.id}
///       type: PrivateSubNet
///       trafficToEndpointPolicy: DenyAll
/// variables:
///   default:
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
/// Global Accelerator (GA) Custom Routing Endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/customRoutingEndpoint:CustomRoutingEndpoint example <endpoint_group_id>:<custom_routing_endpoint_id>
/// ```
class CustomRoutingEndpoint extends pulumi.CustomResource {
  /// The ID of the GA instance with which the endpoint is associated.
  late final pulumi.Output<String> acceleratorId;

  /// The ID of the Custom Routing Endpoint.
  late final pulumi.Output<String> customRoutingEndpointId;

  /// The ID of the endpoint (vSwitch).
  late final pulumi.Output<String> endpoint;

  /// The ID of the endpoint group in which to create endpoints.
  late final pulumi.Output<String> endpointGroupId;

  /// The ID of the listener with which the endpoint is associated.
  late final pulumi.Output<String> listenerId;

  /// The status of the Custom Routing Endpoint.
  late final pulumi.Output<String> status;

  /// The access policy of traffic to the endpoint. Default value: `DenyAll`. Valid values:
  /// - `DenyAll`: denies all traffic to the endpoint.
  /// - `AllowAll`: allows all traffic to the endpoint.
  /// - `AllowCustom`: allows traffic only to specified destinations in the endpoint.
  late final pulumi.Output<String> trafficToEndpointPolicy;

  /// The backend service type of the endpoint. Valid values: `PrivateSubNet`.
  late final pulumi.Output<String> type;

  /// Creates a new [CustomRoutingEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRoutingEndpoint]. {@macro pulumi_ga_custom_routing_endpoint_custom_routing_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRoutingEndpoint(
    String name, {
    CustomRoutingEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/customRoutingEndpoint:CustomRoutingEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    customRoutingEndpointId = registerOutput<String>('customRoutingEndpointId');
    endpoint = registerOutput<String>('endpoint');
    endpointGroupId = registerOutput<String>('endpointGroupId');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
    trafficToEndpointPolicy = registerOutput<String>('trafficToEndpointPolicy');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [CustomRoutingEndpoint] resource's state with the given [name] and [id].
  static CustomRoutingEndpoint get(
    String name,
    pulumi.Input<String> id, {
    CustomRoutingEndpointState? state,
  }) {
    return CustomRoutingEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomRoutingEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/customRoutingEndpoint:CustomRoutingEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    customRoutingEndpointId = registerOutput<String>('customRoutingEndpointId');
    endpoint = registerOutput<String>('endpoint');
    endpointGroupId = registerOutput<String>('endpointGroupId');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
    trafficToEndpointPolicy = registerOutput<String>('trafficToEndpointPolicy');
    type = registerOutput<String>('type');
  }
}
