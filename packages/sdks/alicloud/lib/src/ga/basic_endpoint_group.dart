import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_endpoint_group_args.dart';
import 'basic_endpoint_group_state.dart';

/// Provides a Global Accelerator (GA) Basic Endpoint Group resource.
///
/// For information about Global Accelerator (GA) Basic Endpoint Group and how to use it, see [What is Basic Endpoint Group](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createbasicendpointgroup).
///
/// > **NOTE:** Available since v1.194.0.
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
/// const endpointGroupRegion = config.get("endpointGroupRegion") || "cn-beijing";
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
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: "terraform-example",
///     vswitchId: defaultSwitch.id,
///     loadBalancerSpec: "slb.s2.small",
///     addressType: "intranet",
/// });
/// const defaultBasicAccelerator = new alicloud.ga.BasicAccelerator("default", {
///     duration: 1,
///     basicAcceleratorName: "terraform-example",
///     description: "terraform-example",
///     bandwidthBillingType: "CDT",
///     autoUseCoupon: "true",
///     autoPay: true,
/// });
/// const defaultBasicEndpointGroup = new alicloud.ga.BasicEndpointGroup("default", {
///     acceleratorId: defaultBasicAccelerator.id,
///     endpointGroupRegion: endpointGroupRegion,
///     endpointType: "SLB",
///     endpointAddress: defaultApplicationLoadBalancer.id,
///     endpointSubAddress: "192.168.0.1",
///     basicEndpointGroupName: "terraform-example",
///     description: "terraform-example",
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
/// endpoint_group_region = config.get("endpointGroupRegion")
/// if endpoint_group_region is None:
///     endpoint_group_region = "cn-beijing"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name="terraform-example",
///     vswitch_id=default_switch.id,
///     load_balancer_spec="slb.s2.small",
///     address_type="intranet")
/// default_basic_accelerator = alicloud.ga.BasicAccelerator("default",
///     duration=1,
///     basic_accelerator_name="terraform-example",
///     description="terraform-example",
///     bandwidth_billing_type="CDT",
///     auto_use_coupon="true",
///     auto_pay=True)
/// default_basic_endpoint_group = alicloud.ga.BasicEndpointGroup("default",
///     accelerator_id=default_basic_accelerator.id,
///     endpoint_group_region=endpoint_group_region,
///     endpoint_type="SLB",
///     endpoint_address=default_application_load_balancer.id,
///     endpoint_sub_address="192.168.0.1",
///     basic_endpoint_group_name="terraform-example",
///     description="terraform-example")
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
///     var endpointGroupRegion = config.Get("endpointGroupRegion") ?? "cn-beijing";
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
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = "terraform-example",
///         VswitchId = defaultSwitch.Id,
///         LoadBalancerSpec = "slb.s2.small",
///         AddressType = "intranet",
///     });
///
///     var defaultBasicAccelerator = new AliCloud.Ga.BasicAccelerator("default", new()
///     {
///         Duration = 1,
///         BasicAcceleratorName = "terraform-example",
///         Description = "terraform-example",
///         BandwidthBillingType = "CDT",
///         AutoUseCoupon = "true",
///         AutoPay = true,
///     });
///
///     var defaultBasicEndpointGroup = new AliCloud.Ga.BasicEndpointGroup("default", new()
///     {
///         AcceleratorId = defaultBasicAccelerator.Id,
///         EndpointGroupRegion = endpointGroupRegion,
///         EndpointType = "SLB",
///         EndpointAddress = defaultApplicationLoadBalancer.Id,
///         EndpointSubAddress = "192.168.0.1",
///         BasicEndpointGroupName = "terraform-example",
///         Description = "terraform-example",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
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
/// 		endpointGroupRegion := "cn-beijing"
/// 		if param := cfg.Get("endpointGroupRegion"); param != "" {
/// 			endpointGroupRegion = param
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
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String("terraform-example"),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 			AddressType:      pulumi.String("intranet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBasicAccelerator, err := ga.NewBasicAccelerator(ctx, "default", &ga.BasicAcceleratorArgs{
/// 			Duration:             pulumi.Int(1),
/// 			BasicAcceleratorName: pulumi.String("terraform-example"),
/// 			Description:          pulumi.String("terraform-example"),
/// 			BandwidthBillingType: pulumi.String("CDT"),
/// 			AutoUseCoupon:        pulumi.String("true"),
/// 			AutoPay:              pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewBasicEndpointGroup(ctx, "default", &ga.BasicEndpointGroupArgs{
/// 			AcceleratorId:          defaultBasicAccelerator.ID(),
/// 			EndpointGroupRegion:    pulumi.String(endpointGroupRegion),
/// 			EndpointType:           pulumi.String("SLB"),
/// 			EndpointAddress:        defaultApplicationLoadBalancer.ID(),
/// 			EndpointSubAddress:     pulumi.String("192.168.0.1"),
/// 			BasicEndpointGroupName: pulumi.String("terraform-example"),
/// 			Description:            pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.ga.BasicAccelerator;
/// import com.pulumi.alicloud.ga.BasicAcceleratorArgs;
/// import com.pulumi.alicloud.ga.BasicEndpointGroup;
/// import com.pulumi.alicloud.ga.BasicEndpointGroupArgs;
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
///         final var endpointGroupRegion = config.get("endpointGroupRegion").orElse("cn-beijing");
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
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName("terraform-example")
///             .vswitchId(defaultSwitch.id())
///             .loadBalancerSpec("slb.s2.small")
///             .addressType("intranet")
///             .build());
///
///         var defaultBasicAccelerator = new BasicAccelerator("defaultBasicAccelerator", BasicAcceleratorArgs.builder()
///             .duration(1)
///             .basicAcceleratorName("terraform-example")
///             .description("terraform-example")
///             .bandwidthBillingType("CDT")
///             .autoUseCoupon("true")
///             .autoPay(true)
///             .build());
///
///         var defaultBasicEndpointGroup = new BasicEndpointGroup("defaultBasicEndpointGroup", BasicEndpointGroupArgs.builder()
///             .acceleratorId(defaultBasicAccelerator.id())
///             .endpointGroupRegion(endpointGroupRegion)
///             .endpointType("SLB")
///             .endpointAddress(defaultApplicationLoadBalancer.id())
///             .endpointSubAddress("192.168.0.1")
///             .basicEndpointGroupName("terraform-example")
///             .description("terraform-example")
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
///   endpointGroupRegion:
///     type: string
///     default: cn-beijing
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
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: terraform-example
///       vswitchId: ${defaultSwitch.id}
///       loadBalancerSpec: slb.s2.small
///       addressType: intranet
///   defaultBasicAccelerator:
///     type: alicloud:ga:BasicAccelerator
///     name: default
///     properties:
///       duration: 1
///       basicAcceleratorName: terraform-example
///       description: terraform-example
///       bandwidthBillingType: CDT
///       autoUseCoupon: 'true'
///       autoPay: true
///   defaultBasicEndpointGroup:
///     type: alicloud:ga:BasicEndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${defaultBasicAccelerator.id}
///       endpointGroupRegion: ${endpointGroupRegion}
///       endpointType: SLB
///       endpointAddress: ${defaultApplicationLoadBalancer.id}
///       endpointSubAddress: 192.168.0.1
///       basicEndpointGroupName: terraform-example
///       description: terraform-example
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
/// Global Accelerator (GA) Basic Endpoint Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/basicEndpointGroup:BasicEndpointGroup example <id>
/// ```
class BasicEndpointGroup extends pulumi.CustomResource {
  /// The ID of the basic GA instance.
  late final pulumi.Output<String> acceleratorId;
  /// The name of the endpoint group. The `basic_endpoint_group_name` must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String?> basicEndpointGroupName;
  /// The description of the endpoint group. The `description` cannot exceed 256 characters in length and cannot contain http:// or https://.
  late final pulumi.Output<String?> description;
  /// The address of the endpoint.
  late final pulumi.Output<String> endpointAddress;
  /// The ID of the region where you want to create the endpoint group.
  late final pulumi.Output<String> endpointGroupRegion;
  /// The sub address of the endpoint.
  late final pulumi.Output<String> endpointSubAddress;
  /// The type of the endpoint. Valid values: `ENI`, `SLB` and `ECS`.
  late final pulumi.Output<String> endpointType;
  /// The status of the Basic Endpoint Group.
  late final pulumi.Output<String> status;

  /// Creates a new [BasicEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasicEndpointGroup]. {@macro pulumi_ga_basic_endpoint_group_basic_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasicEndpointGroup(
    String name, {
    BasicEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/basicEndpointGroup:BasicEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.basicEndpointGroupName = registerOutput<String?>('basicEndpointGroupName');
    this.description = registerOutput<String?>('description');
    this.endpointAddress = registerOutput<String>('endpointAddress');
    this.endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    this.endpointSubAddress = registerOutput<String>('endpointSubAddress');
    this.endpointType = registerOutput<String>('endpointType');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [BasicEndpointGroup] resource's state with the given [name] and [id].
  static BasicEndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    BasicEndpointGroupState? state,
  }) {
    return BasicEndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BasicEndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/basicEndpointGroup:BasicEndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.basicEndpointGroupName = registerOutput<String?>('basicEndpointGroupName');
    this.description = registerOutput<String?>('description');
    this.endpointAddress = registerOutput<String>('endpointAddress');
    this.endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    this.endpointSubAddress = registerOutput<String>('endpointSubAddress');
    this.endpointType = registerOutput<String>('endpointType');
    this.status = registerOutput<String>('status');
  }
}
