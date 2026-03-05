import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_group_args.dart';
import 'endpoint_group_port_overrides.dart';
import 'endpoint_group_state.dart';

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
///     portRanges: [{
///         fromPort: 60,
///         toPort: 70,
///     }],
///     clientAffinity: "SOURCE_IP",
///     protocol: "UDP",
///     name: "terraform-example",
/// });
/// const defaultEipAddress: alicloud.ecs.EipAddress[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultEipAddress.push(new alicloud.ecs.EipAddress(`default-${range.value}`, {
///         bandwidth: "10",
///         internetChargeType: "PayByBandwidth",
///         addressName: "terraform-example",
///     }));
/// }
/// const defaultEndpointGroup = new alicloud.ga.EndpointGroup("default", {
///     acceleratorId: _default.id,
///     endpointConfigurations: [
///         {
///             endpoint: defaultEipAddress[0].ipAddress,
///             type: "PublicIp",
///             weight: 20,
///         },
///         {
///             endpoint: defaultEipAddress[1].ipAddress,
///             type: "PublicIp",
///             weight: 20,
///         },
///     ],
///     endpointGroupRegion: region,
///     listenerId: defaultListener.id,
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
///     port_ranges=[{
///         "from_port": 60,
///         "to_port": 70,
///     }],
///     client_affinity="SOURCE_IP",
///     protocol="UDP",
///     name="terraform-example")
/// default_eip_address = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_eip_address.append(alicloud.ecs.EipAddress(f"default-{range['value']}",
///         bandwidth="10",
///         internet_charge_type="PayByBandwidth",
///         address_name="terraform-example"))
/// default_endpoint_group = alicloud.ga.EndpointGroup("default",
///     accelerator_id=default.id,
///     endpoint_configurations=[
///         {
///             "endpoint": default_eip_address[0].ip_address,
///             "type": "PublicIp",
///             "weight": 20,
///         },
///         {
///             "endpoint": default_eip_address[1].ip_address,
///             "type": "PublicIp",
///             "weight": 20,
///         },
///     ],
///     endpoint_group_region=region,
///     listener_id=default_listener.id)
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
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 60,
///                 ToPort = 70,
///             },
///         },
///         ClientAffinity = "SOURCE_IP",
///         Protocol = "UDP",
///         Name = "terraform-example",
///     });
///
///     var defaultEipAddress = new List<AliCloud.Ecs.EipAddress>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultEipAddress.Add(new AliCloud.Ecs.EipAddress($"default-{range.Value}", new()
///         {
///             Bandwidth = "10",
///             InternetChargeType = "PayByBandwidth",
///             AddressName = "terraform-example",
///         }));
///     }
///     var defaultEndpointGroup = new AliCloud.Ga.EndpointGroup("default", new()
///     {
///         AcceleratorId = @default.Id,
///         EndpointConfigurations = new[]
///         {
///             new AliCloud.Ga.Inputs.EndpointGroupEndpointConfigurationArgs
///             {
///                 Endpoint = defaultEipAddress[0].IpAddress,
///                 Type = "PublicIp",
///                 Weight = 20,
///             },
///             new AliCloud.Ga.Inputs.EndpointGroupEndpointConfigurationArgs
///             {
///                 Endpoint = defaultEipAddress[1].IpAddress,
///                 Type = "PublicIp",
///                 Weight = 20,
///             },
///         },
///         EndpointGroupRegion = region,
///         ListenerId = defaultListener.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(60),
/// 					ToPort:   pulumi.Int(70),
/// 				},
/// 			},
/// 			ClientAffinity: pulumi.String("SOURCE_IP"),
/// 			Protocol:       pulumi.String("UDP"),
/// 			Name:           pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultEipAddress []*ecs.EipAddress
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewEipAddress(ctx, fmt.Sprintf("default-%v", key0), &ecs.EipAddressArgs{
/// 				Bandwidth:          pulumi.String("10"),
/// 				InternetChargeType: pulumi.String("PayByBandwidth"),
/// 				AddressName:        pulumi.String("terraform-example"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultEipAddress = append(defaultEipAddress, __res)
/// 		}
/// 		_, err = ga.NewEndpointGroup(ctx, "default", &ga.EndpointGroupArgs{
/// 			AcceleratorId: _default.ID(),
/// 			EndpointConfigurations: ga.EndpointGroupEndpointConfigurationArray{
/// 				&ga.EndpointGroupEndpointConfigurationArgs{
/// 					Endpoint: defaultEipAddress[0].IpAddress,
/// 					Type:     pulumi.String("PublicIp"),
/// 					Weight:   pulumi.Int(20),
/// 				},
/// 				&ga.EndpointGroupEndpointConfigurationArgs{
/// 					Endpoint: defaultEipAddress[1].IpAddress,
/// 					Type:     pulumi.String("PublicIp"),
/// 					Weight:   pulumi.Int(20),
/// 				},
/// 			},
/// 			EndpointGroupRegion: pulumi.String(region),
/// 			ListenerId:          defaultListener.ID(),
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
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ga.EndpointGroup;
/// import com.pulumi.alicloud.ga.EndpointGroupArgs;
/// import com.pulumi.alicloud.ga.inputs.EndpointGroupEndpointConfigurationArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(60)
///                 .toPort(70)
///                 .build())
///             .clientAffinity("SOURCE_IP")
///             .protocol("UDP")
///             .name("terraform-example")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new EipAddress("defaultEipAddress-" + i, EipAddressArgs.builder()
///                 .bandwidth("10")
///                 .internetChargeType("PayByBandwidth")
///                 .addressName("terraform-example")
///                 .build());
///
///
/// }
///         var defaultEndpointGroup = new EndpointGroup("defaultEndpointGroup", EndpointGroupArgs.builder()
///             .acceleratorId(default_.id())
///             .endpointConfigurations(
///                 EndpointGroupEndpointConfigurationArgs.builder()
///                     .endpoint(defaultEipAddress[0].ipAddress())
///                     .type("PublicIp")
///                     .weight(20)
///                     .build(),
///                 EndpointGroupEndpointConfigurationArgs.builder()
///                     .endpoint(defaultEipAddress[1].ipAddress())
///                     .type("PublicIp")
///                     .weight(20)
///                     .build())
///             .endpointGroupRegion(region)
///             .listenerId(defaultListener.id())
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
///       portRanges:
///         - fromPort: 60
///           toPort: 70
///       clientAffinity: SOURCE_IP
///       protocol: UDP
///       name: terraform-example
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       bandwidth: '10'
///       internetChargeType: PayByBandwidth
///       addressName: terraform-example
///     options: {}
///   defaultEndpointGroup:
///     type: alicloud:ga:EndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${default.id}
///       endpointConfigurations:
///         - endpoint: ${defaultEipAddress[0].ipAddress}
///           type: PublicIp
///           weight: '20'
///         - endpoint: ${defaultEipAddress[1].ipAddress}
///           type: PublicIp
///           weight: '20'
///       endpointGroupRegion: ${region}
///       listenerId: ${defaultListener.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Endpoint Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/endpointGroup:EndpointGroup example <id>
/// ```
class EndpointGroup extends pulumi.CustomResource {
  /// The ID of the Global Accelerator instance to which the endpoint group will be added.
  late final pulumi.Output<String> acceleratorId;
  /// The description of the endpoint group.
  late final pulumi.Output<String?> description;
  /// The endpointConfigurations of the endpoint group. See `endpoint_configurations` below.
  late final pulumi.Output<List<Map<String, dynamic>>> endpointConfigurations;
  /// (Available since v1.213.0) The active endpoint IP addresses of the endpoint group. `endpoint_group_ip_list` will change with the growth of network traffic. You can run `pulumi up` to query the latest CIDR blocks and IP addresses.
  late final pulumi.Output<List<String>> endpointGroupIpLists;
  /// The ID of the region where the endpoint group is deployed.
  late final pulumi.Output<String> endpointGroupRegion;
  /// The endpoint group type. Default value: `default`. Valid values: `default`, `virtual`.
  /// &gt; **NOTE:** Currently, only `HTTP` or `HTTPS` protocol listener can directly create a `virtual` Endpoint Group. If it is `TCP` protocol listener, and you want to create a `virtual` Endpoint Group, please ensure that the `default` Endpoint Group has been created.
  late final pulumi.Output<String> endpointGroupType;
  /// The backend service protocol of the endpoint that is associated with the intelligent routing listener. Valid values: `HTTP1.1`, `HTTP2`.
  /// &gt; **NOTE:** `endpoint_protocol_version` is valid only when `endpoint_request_protocol` is set to `HTTPS`.
  late final pulumi.Output<String> endpointProtocolVersion;
  /// The protocol that is used by the backend server. Valid values: `HTTP`, `HTTPS`.
  /// &gt; **NOTE:** `endpoint_request_protocol` can be specified only if the listener that is associated with the endpoint group uses `HTTP` or `HTTPS`. For the listener of `HTTP` protocol, `endpoint_request_protocol` can only be set to `HTTP`.
  late final pulumi.Output<String> endpointRequestProtocol;
  /// Specifies whether to enable the health check feature. Valid values:
  late final pulumi.Output<bool?> healthCheckEnabled;
  /// The interval between two consecutive health checks. Unit: seconds.
  late final pulumi.Output<int?> healthCheckIntervalSeconds;
  /// The path specified as the destination of the targets for health checks.
  late final pulumi.Output<String?> healthCheckPath;
  /// The port that is used for health checks.
  late final pulumi.Output<int?> healthCheckPort;
  /// The protocol that is used to connect to the targets for health checks. Valid values:
  /// - `TCP` or `tcp`: TCP protocol.
  /// - `HTTP` or `http`: HTTP protocol.
  /// - `HTTPS` or `https`: HTTPS protocol.
  /// &gt; **NOTE:** From version 1.223.0, `health_check_protocol` can be set to `TCP`, `HTTP`, `HTTPS`.
  late final pulumi.Output<String?> healthCheckProtocol;
  /// The ID of the listener that is associated with the endpoint group.
  late final pulumi.Output<String> listenerId;
  /// The name of the endpoint group.
  late final pulumi.Output<String> name;
  /// Mapping between listening port and forwarding port of boarding point. See `port_overrides` below.
  /// &gt; **NOTE:** Port mapping is only supported when creating terminal node group for listening instance of HTTP or HTTPS protocol. The listening port in the port map must be consistent with the listening port of the current listening instance.
  late final pulumi.Output<EndpointGroupPortOverrides?> portOverrides;
  /// The status of the endpoint group.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The number of consecutive failed heath checks that must occur before the endpoint is deemed unhealthy. Default value: `3`.
  late final pulumi.Output<int> thresholdCount;
  /// The weight of the endpoint group when the corresponding listener is associated with multiple endpoint groups.
  late final pulumi.Output<int?> trafficPercentage;

  /// Creates a new [EndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointGroup]. {@macro pulumi_ga_endpoint_group_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointGroup(
    String name, {
    EndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/endpointGroup:EndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    description = registerOutput<String?>('description');
    endpointConfigurations = registerOutput<List<Map<String, dynamic>>>('endpointConfigurations');
    endpointGroupIpLists = registerOutput<List<String>>('endpointGroupIpLists');
    endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    endpointGroupType = registerOutput<String>('endpointGroupType');
    endpointProtocolVersion = registerOutput<String>('endpointProtocolVersion');
    endpointRequestProtocol = registerOutput<String>('endpointRequestProtocol');
    healthCheckEnabled = registerOutput<bool?>('healthCheckEnabled');
    healthCheckIntervalSeconds = registerOutput<int?>('healthCheckIntervalSeconds');
    healthCheckPath = registerOutput<String?>('healthCheckPath');
    healthCheckPort = registerOutput<int?>('healthCheckPort');
    healthCheckProtocol = registerOutput<String?>('healthCheckProtocol');
    listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    portOverrides = registerOutput<EndpointGroupPortOverrides?>('portOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointGroupPortOverrides.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    thresholdCount = registerOutput<int>('thresholdCount');
    trafficPercentage = registerOutput<int?>('trafficPercentage');
  }

  /// Gets an existing [EndpointGroup] resource's state with the given [name] and [id].
  static EndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    EndpointGroupState? state,
  }) {
    return EndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/endpointGroup:EndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    description = registerOutput<String?>('description');
    endpointConfigurations = registerOutput<List<Map<String, dynamic>>>('endpointConfigurations');
    endpointGroupIpLists = registerOutput<List<String>>('endpointGroupIpLists');
    endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    endpointGroupType = registerOutput<String>('endpointGroupType');
    endpointProtocolVersion = registerOutput<String>('endpointProtocolVersion');
    endpointRequestProtocol = registerOutput<String>('endpointRequestProtocol');
    healthCheckEnabled = registerOutput<bool?>('healthCheckEnabled');
    healthCheckIntervalSeconds = registerOutput<int?>('healthCheckIntervalSeconds');
    healthCheckPath = registerOutput<String?>('healthCheckPath');
    healthCheckPort = registerOutput<int?>('healthCheckPort');
    healthCheckProtocol = registerOutput<String?>('healthCheckProtocol');
    listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    portOverrides = registerOutput<EndpointGroupPortOverrides?>('portOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointGroupPortOverrides.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    thresholdCount = registerOutput<int>('thresholdCount');
    trafficPercentage = registerOutput<int?>('trafficPercentage');
  }
}
