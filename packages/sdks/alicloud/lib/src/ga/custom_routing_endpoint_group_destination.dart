import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_routing_endpoint_group_destination_args.dart';
import 'custom_routing_endpoint_group_destination_state.dart';

/// Provides a Global Accelerator (GA) Custom Routing Endpoint Group Destination resource.
///
/// For information about Global Accelerator (GA) Custom Routing Endpoint Group Destination and how to use it, see [What is Custom Routing Endpoint Group Destination](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createcustomroutingendpointgroupdestinations).
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
/// const _default = new alicloud.ga.Accelerator("default", {
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
///     acceleratorId: _default.id,
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
/// const defaultCustomRoutingEndpointGroupDestination = new alicloud.ga.CustomRoutingEndpointGroupDestination("default", {
///     endpointGroupId: defaultCustomRoutingEndpointGroup.id,
///     protocols: ["TCP"],
///     fromPort: 1,
///     toPort: 2,
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
/// default = alicloud.ga.Accelerator("default",
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
///     accelerator_id=default.id,
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
/// default_custom_routing_endpoint_group_destination = alicloud.ga.CustomRoutingEndpointGroupDestination("default",
///     endpoint_group_id=default_custom_routing_endpoint_group.id,
///     protocols=["TCP"],
///     from_port=1,
///     to_port=2)
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
///     var @default = new AliCloud.Ga.Accelerator("default", new()
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
///         AcceleratorId = @default.Id,
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
///     var defaultCustomRoutingEndpointGroupDestination = new AliCloud.Ga.CustomRoutingEndpointGroupDestination("default", new()
///     {
///         EndpointGroupId = defaultCustomRoutingEndpointGroup.Id,
///         Protocols = new[]
///         {
///             "TCP",
///         },
///         FromPort = 1,
///         ToPort = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_default, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
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
/// 			AcceleratorId:      _default.ID(),
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
/// 		_, err = ga.NewCustomRoutingEndpointGroupDestination(ctx, "default", &ga.CustomRoutingEndpointGroupDestinationArgs{
/// 			EndpointGroupId: defaultCustomRoutingEndpointGroup.ID(),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("TCP"),
/// 			},
/// 			FromPort: pulumi.Int(1),
/// 			ToPort:   pulumi.Int(2),
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
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroupDestination;
/// import com.pulumi.alicloud.ga.CustomRoutingEndpointGroupDestinationArgs;
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
///         var default_ = new Accelerator("default", AcceleratorArgs.builder()
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
///             .acceleratorId(default_.id())
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
///         var defaultCustomRoutingEndpointGroupDestination = new CustomRoutingEndpointGroupDestination("defaultCustomRoutingEndpointGroupDestination", CustomRoutingEndpointGroupDestinationArgs.builder()
///             .endpointGroupId(defaultCustomRoutingEndpointGroup.id())
///             .protocols("TCP")
///             .fromPort(1)
///             .toPort(2)
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
///   default:
///     type: alicloud:ga:Accelerator
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
///       acceleratorId: ${default.id}
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
///   defaultCustomRoutingEndpointGroupDestination:
///     type: alicloud:ga:CustomRoutingEndpointGroupDestination
///     name: default
///     properties:
///       endpointGroupId: ${defaultCustomRoutingEndpointGroup.id}
///       protocols:
///         - TCP
///       fromPort: 1
///       toPort: 2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Custom Routing Endpoint Group Destination can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/customRoutingEndpointGroupDestination:CustomRoutingEndpointGroupDestination example <endpoint_group_id>:<custom_routing_endpoint_group_destination_id>
/// ```
class CustomRoutingEndpointGroupDestination extends pulumi.CustomResource {
  /// The ID of the GA instance.
  late final pulumi.Output<String> acceleratorId;
  /// The ID of the Custom Routing Endpoint Group Destination.
  late final pulumi.Output<String> customRoutingEndpointGroupDestinationId;
  /// The ID of the endpoint group.
  late final pulumi.Output<String> endpointGroupId;
  /// The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  late final pulumi.Output<int> fromPort;
  /// The ID of the listener.
  late final pulumi.Output<String> listenerId;
  /// The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  late final pulumi.Output<List<String>> protocols;
  /// The status of the Custom Routing Endpoint Group Destination.
  late final pulumi.Output<String> status;
  /// The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  late final pulumi.Output<int> toPort;

  /// Creates a new [CustomRoutingEndpointGroupDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomRoutingEndpointGroupDestination]. {@macro pulumi_ga_custom_routing_endpoint_group_destination_custom_routing_endpoint_group_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomRoutingEndpointGroupDestination(
    String name, {
    CustomRoutingEndpointGroupDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/customRoutingEndpointGroupDestination:CustomRoutingEndpointGroupDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.customRoutingEndpointGroupDestinationId = registerOutput<String>('customRoutingEndpointGroupDestinationId');
    this.endpointGroupId = registerOutput<String>('endpointGroupId');
    this.fromPort = registerOutput<int>('fromPort');
    this.listenerId = registerOutput<String>('listenerId');
    this.protocols = registerOutput<List<String>>('protocols');
    this.status = registerOutput<String>('status');
    this.toPort = registerOutput<int>('toPort');
  }

  /// Gets an existing [CustomRoutingEndpointGroupDestination] resource's state with the given [name] and [id].
  static CustomRoutingEndpointGroupDestination get(
    String name,
    pulumi.Input<String> id, {
    CustomRoutingEndpointGroupDestinationState? state,
  }) {
    return CustomRoutingEndpointGroupDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomRoutingEndpointGroupDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/customRoutingEndpointGroupDestination:CustomRoutingEndpointGroupDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.customRoutingEndpointGroupDestinationId = registerOutput<String>('customRoutingEndpointGroupDestinationId');
    this.endpointGroupId = registerOutput<String>('endpointGroupId');
    this.fromPort = registerOutput<int>('fromPort');
    this.listenerId = registerOutput<String>('listenerId');
    this.protocols = registerOutput<List<String>>('protocols');
    this.status = registerOutput<String>('status');
    this.toPort = registerOutput<int>('toPort');
  }
}
