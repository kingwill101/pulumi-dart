import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_log_args.dart';
import 'access_log_state.dart';

/// Provides a Global Accelerator (GA) Access Log resource.
///
/// For information about Global Accelerator (GA) Access Log and how to use it, see [What is Access Log](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-attachlogstoretoendpointgroup).
///
/// &gt; **NOTE:** Available since v1.187.0.
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
/// const region = config.get("region") || "cn-hangzhou";
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultProject = new alicloud.log.Project("default", {name: `terraform-example-${_default.result}`});
/// const defaultStore = new alicloud.log.Store("default", {
///     project: defaultProject.name,
///     name: "terraform-example",
/// });
/// const defaultAccelerator = new alicloud.ga.Accelerator("default", {
///     duration: 1,
///     autoUseCoupon: true,
///     spec: "2",
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
///     clientAffinity: "SOURCE_IP",
///     protocol: "HTTP",
///     name: "terraform-example",
///     portRanges: [{
///         fromPort: 70,
///         toPort: 70,
///     }],
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {
///     bandwidth: "10",
///     internetChargeType: "PayByBandwidth",
///     addressName: "terraform-example",
/// });
/// const defaultEndpointGroup = new alicloud.ga.EndpointGroup("default", {
///     acceleratorId: defaultListener.acceleratorId,
///     endpointConfigurations: [{
///         endpoint: defaultEipAddress.ipAddress,
///         type: "PublicIp",
///         weight: 20,
///     }],
///     endpointGroupRegion: region,
///     listenerId: defaultListener.id,
/// });
/// const defaultAccessLog = new alicloud.ga.AccessLog("default", {
///     acceleratorId: defaultAccelerator.id,
///     listenerId: defaultListener.id,
///     endpointGroupId: defaultEndpointGroup.id,
///     slsProjectName: defaultProject.name,
///     slsLogStoreName: defaultStore.name,
///     slsRegionId: region,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_project = alicloud.log.Project("default", name=f"terraform-example-{default['result']}")
/// default_store = alicloud.log.Store("default",
///     project=default_project.name,
///     name="terraform-example")
/// default_accelerator = alicloud.ga.Accelerator("default",
///     duration=1,
///     auto_use_coupon=True,
///     spec="2")
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
///     client_affinity="SOURCE_IP",
///     protocol="HTTP",
///     name="terraform-example",
///     port_ranges=[{
///         "from_port": 70,
///         "to_port": 70,
///     }])
/// default_eip_address = alicloud.ecs.EipAddress("default",
///     bandwidth="10",
///     internet_charge_type="PayByBandwidth",
///     address_name="terraform-example")
/// default_endpoint_group = alicloud.ga.EndpointGroup("default",
///     accelerator_id=default_listener.accelerator_id,
///     endpoint_configurations=[{
///         "endpoint": default_eip_address.ip_address,
///         "type": "PublicIp",
///         "weight": 20,
///     }],
///     endpoint_group_region=region,
///     listener_id=default_listener.id)
/// default_access_log = alicloud.ga.AccessLog("default",
///     accelerator_id=default_accelerator.id,
///     listener_id=default_listener.id,
///     endpoint_group_id=default_endpoint_group.id,
///     sls_project_name=default_project.name,
///     sls_log_store_name=default_store.name,
///     sls_region_id=region)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         Name = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         Project = defaultProject.Name,
///         Name = "terraform-example",
///     });
///
///     var defaultAccelerator = new AliCloud.Ga.Accelerator("default", new()
///     {
///         Duration = 1,
///         AutoUseCoupon = true,
///         Spec = "2",
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
///         ClientAffinity = "SOURCE_IP",
///         Protocol = "HTTP",
///         Name = "terraform-example",
///         PortRanges = new[]
///         {
///             new AliCloud.Ga.Inputs.ListenerPortRangeArgs
///             {
///                 FromPort = 70,
///                 ToPort = 70,
///             },
///         },
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         Bandwidth = "10",
///         InternetChargeType = "PayByBandwidth",
///         AddressName = "terraform-example",
///     });
///
///     var defaultEndpointGroup = new AliCloud.Ga.EndpointGroup("default", new()
///     {
///         AcceleratorId = defaultListener.AcceleratorId,
///         EndpointConfigurations = new[]
///         {
///             new AliCloud.Ga.Inputs.EndpointGroupEndpointConfigurationArgs
///             {
///                 Endpoint = defaultEipAddress.IpAddress,
///                 Type = "PublicIp",
///                 Weight = 20,
///             },
///         },
///         EndpointGroupRegion = region,
///         ListenerId = defaultListener.Id,
///     });
///
///     var defaultAccessLog = new AliCloud.Ga.AccessLog("default", new()
///     {
///         AcceleratorId = defaultAccelerator.Id,
///         ListenerId = defaultListener.Id,
///         EndpointGroupId = defaultEndpointGroup.Id,
///         SlsProjectName = defaultProject.Name,
///         SlsLogStoreName = defaultStore.Name,
///         SlsRegionId = region,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// 			Name: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// 			Project: defaultProject.Name,
/// 			Name:    pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccelerator, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("2"),
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
/// 			AcceleratorId:  defaultBandwidthPackageAttachment.AcceleratorId,
/// 			ClientAffinity: pulumi.String("SOURCE_IP"),
/// 			Protocol:       pulumi.String("HTTP"),
/// 			Name:           pulumi.String("terraform-example"),
/// 			PortRanges: ga.ListenerPortRangeArray{
/// 				&ga.ListenerPortRangeArgs{
/// 					FromPort: pulumi.Int(70),
/// 					ToPort:   pulumi.Int(70),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			Bandwidth:          pulumi.String("10"),
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			AddressName:        pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEndpointGroup, err := ga.NewEndpointGroup(ctx, "default", &ga.EndpointGroupArgs{
/// 			AcceleratorId: defaultListener.AcceleratorId,
/// 			EndpointConfigurations: ga.EndpointGroupEndpointConfigurationArray{
/// 				&ga.EndpointGroupEndpointConfigurationArgs{
/// 					Endpoint: defaultEipAddress.IpAddress,
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
/// 		_, err = ga.NewAccessLog(ctx, "default", &ga.AccessLogArgs{
/// 			AcceleratorId:   defaultAccelerator.ID(),
/// 			ListenerId:      defaultListener.ID(),
/// 			EndpointGroupId: defaultEndpointGroup.ID(),
/// 			SlsProjectName:  defaultProject.Name,
/// 			SlsLogStoreName: defaultStore.Name,
/// 			SlsRegionId:     pulumi.String(region),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
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
/// import com.pulumi.alicloud.ga.AccessLog;
/// import com.pulumi.alicloud.ga.AccessLogArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .name(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .project(defaultProject.name())
///             .name("terraform-example")
///             .build());
///
///         var defaultAccelerator = new Accelerator("defaultAccelerator", AcceleratorArgs.builder()
///             .duration(1)
///             .autoUseCoupon(true)
///             .spec("2")
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
///             .clientAffinity("SOURCE_IP")
///             .protocol("HTTP")
///             .name("terraform-example")
///             .portRanges(ListenerPortRangeArgs.builder()
///                 .fromPort(70)
///                 .toPort(70)
///                 .build())
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .bandwidth("10")
///             .internetChargeType("PayByBandwidth")
///             .addressName("terraform-example")
///             .build());
///
///         var defaultEndpointGroup = new EndpointGroup("defaultEndpointGroup", EndpointGroupArgs.builder()
///             .acceleratorId(defaultListener.acceleratorId())
///             .endpointConfigurations(EndpointGroupEndpointConfigurationArgs.builder()
///                 .endpoint(defaultEipAddress.ipAddress())
///                 .type("PublicIp")
///                 .weight(20)
///                 .build())
///             .endpointGroupRegion(region)
///             .listenerId(defaultListener.id())
///             .build());
///
///         var defaultAccessLog = new AccessLog("defaultAccessLog", AccessLogArgs.builder()
///             .acceleratorId(defaultAccelerator.id())
///             .listenerId(defaultListener.id())
///             .endpointGroupId(defaultEndpointGroup.id())
///             .slsProjectName(defaultProject.name())
///             .slsLogStoreName(defaultStore.name())
///             .slsRegionId(region)
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
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       name: terraform-example-${default.result}
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       project: ${defaultProject.name}
///       name: terraform-example
///   defaultAccelerator:
///     type: alicloud:ga:Accelerator
///     name: default
///     properties:
///       duration: 1
///       autoUseCoupon: true
///       spec: '2'
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
///       clientAffinity: SOURCE_IP
///       protocol: HTTP
///       name: terraform-example
///       portRanges:
///         - fromPort: 70
///           toPort: 70
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       bandwidth: '10'
///       internetChargeType: PayByBandwidth
///       addressName: terraform-example
///   defaultEndpointGroup:
///     type: alicloud:ga:EndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${defaultListener.acceleratorId}
///       endpointConfigurations:
///         - endpoint: ${defaultEipAddress.ipAddress}
///           type: PublicIp
///           weight: 20
///       endpointGroupRegion: ${region}
///       listenerId: ${defaultListener.id}
///   defaultAccessLog:
///     type: alicloud:ga:AccessLog
///     name: default
///     properties:
///       acceleratorId: ${defaultAccelerator.id}
///       listenerId: ${defaultListener.id}
///       endpointGroupId: ${defaultEndpointGroup.id}
///       slsProjectName: ${defaultProject.name}
///       slsLogStoreName: ${defaultStore.name}
///       slsRegionId: ${region}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global Accelerator (GA) Access Log can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/accessLog:AccessLog example <accelerator_id>:<listener_id>:<endpoint_group_id>
/// ```
class AccessLog extends pulumi.CustomResource {
  /// The ID of the global acceleration instance.
  late final pulumi.Output<String> acceleratorId;
  /// The ID of the endpoint group instance.
  late final pulumi.Output<String> endpointGroupId;
  /// The ID of the listener.
  late final pulumi.Output<String> listenerId;
  /// The name of the Log Store.
  late final pulumi.Output<String> slsLogStoreName;
  /// The name of the Log Service project.
  late final pulumi.Output<String> slsProjectName;
  /// The region ID of the Log Service project.
  late final pulumi.Output<String> slsRegionId;
  /// Whether access log is enabled.
  late final pulumi.Output<String> status;

  /// Creates a new [AccessLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessLog]. {@macro pulumi_ga_access_log_access_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessLog(
    String name, {
    AccessLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/accessLog:AccessLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    endpointGroupId = registerOutput<String>('endpointGroupId');
    listenerId = registerOutput<String>('listenerId');
    slsLogStoreName = registerOutput<String>('slsLogStoreName');
    slsProjectName = registerOutput<String>('slsProjectName');
    slsRegionId = registerOutput<String>('slsRegionId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AccessLog] resource's state with the given [name] and [id].
  static AccessLog get(
    String name,
    pulumi.Input<String> id, {
    AccessLogState? state,
  }) {
    return AccessLog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessLog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/accessLog:AccessLog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorId = registerOutput<String>('acceleratorId');
    endpointGroupId = registerOutput<String>('endpointGroupId');
    listenerId = registerOutput<String>('listenerId');
    slsLogStoreName = registerOutput<String>('slsLogStoreName');
    slsProjectName = registerOutput<String>('slsProjectName');
    slsRegionId = registerOutput<String>('slsRegionId');
    status = registerOutput<String>('status');
  }
}
