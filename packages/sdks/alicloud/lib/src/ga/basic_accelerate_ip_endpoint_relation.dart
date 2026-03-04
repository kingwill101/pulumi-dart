import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_accelerate_ip_endpoint_relation_args.dart';
import 'basic_accelerate_ip_endpoint_relation_state.dart';

/// Provides a Global Accelerator (GA) Basic Accelerate Ip Endpoint Relation resource.
///
/// For information about Global Accelerator (GA) Basic Accelerate Ip Endpoint Relation and how to use it, see [What is Basic Accelerate Ip Endpoint Relation](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createbasicaccelerateipendpointrelation).
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const region = config.get("region") || "cn-shenzhen";
/// const endpointRegion = config.get("endpointRegion") || "cn-hangzhou";
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
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     vpcId: defaultNetwork.id,
///     name: "terraform-example",
/// });
/// const defaultEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("default", {
///     vswitchId: defaultSwitch.id,
///     securityGroupIds: [defaultSecurityGroup.id],
/// });
/// const defaultBasicAccelerator = new alicloud.ga.BasicAccelerator("default", {
///     duration: 1,
///     basicAcceleratorName: "terraform-example",
///     description: "terraform-example",
///     bandwidthBillingType: "CDT",
///     autoUseCoupon: "true",
///     autoPay: true,
/// });
/// const defaultBasicIpSet = new alicloud.ga.BasicIpSet("default", {
///     acceleratorId: defaultBasicAccelerator.id,
///     accelerateRegionId: endpointRegion,
///     ispType: "BGP",
///     bandwidth: 5,
/// });
/// const defaultBasicAccelerateIp = new alicloud.ga.BasicAccelerateIp("default", {
///     acceleratorId: defaultBasicAccelerator.id,
///     ipSetId: defaultBasicIpSet.id,
/// });
/// const defaultBasicEndpointGroup = new alicloud.ga.BasicEndpointGroup("default", {
///     acceleratorId: defaultBasicAccelerator.id,
///     endpointGroupRegion: region,
///     basicEndpointGroupName: "terraform-example",
///     description: "terraform-example",
/// });
/// const defaultBasicEndpoint = new alicloud.ga.BasicEndpoint("default", {
///     acceleratorId: defaultBasicAccelerator.id,
///     endpointGroupId: defaultBasicEndpointGroup.id,
///     endpointType: "ENI",
///     endpointAddress: defaultEcsNetworkInterface.id,
///     endpointSubAddressType: "primary",
///     endpointSubAddress: "192.168.0.1",
///     basicEndpointName: "terraform-example",
/// });
/// const defaultBasicAccelerateIpEndpointRelation = new alicloud.ga.BasicAccelerateIpEndpointRelation("default", {
///     acceleratorId: defaultBasicAccelerateIp.acceleratorId,
///     accelerateIpId: defaultBasicAccelerateIp.id,
///     endpointId: defaultBasicEndpoint.endpointId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-shenzhen"
/// endpoint_region = config.get("endpointRegion")
/// if endpoint_region is None:
///     endpoint_region = "cn-hangzhou"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     vpc_id=default_network.id,
///     name="terraform-example")
/// default_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("default",
///     vswitch_id=default_switch.id,
///     security_group_ids=[default_security_group.id])
/// default_basic_accelerator = alicloud.ga.BasicAccelerator("default",
///     duration=1,
///     basic_accelerator_name="terraform-example",
///     description="terraform-example",
///     bandwidth_billing_type="CDT",
///     auto_use_coupon="true",
///     auto_pay=True)
/// default_basic_ip_set = alicloud.ga.BasicIpSet("default",
///     accelerator_id=default_basic_accelerator.id,
///     accelerate_region_id=endpoint_region,
///     isp_type="BGP",
///     bandwidth=5)
/// default_basic_accelerate_ip = alicloud.ga.BasicAccelerateIp("default",
///     accelerator_id=default_basic_accelerator.id,
///     ip_set_id=default_basic_ip_set.id)
/// default_basic_endpoint_group = alicloud.ga.BasicEndpointGroup("default",
///     accelerator_id=default_basic_accelerator.id,
///     endpoint_group_region=region,
///     basic_endpoint_group_name="terraform-example",
///     description="terraform-example")
/// default_basic_endpoint = alicloud.ga.BasicEndpoint("default",
///     accelerator_id=default_basic_accelerator.id,
///     endpoint_group_id=default_basic_endpoint_group.id,
///     endpoint_type="ENI",
///     endpoint_address=default_ecs_network_interface.id,
///     endpoint_sub_address_type="primary",
///     endpoint_sub_address="192.168.0.1",
///     basic_endpoint_name="terraform-example")
/// default_basic_accelerate_ip_endpoint_relation = alicloud.ga.BasicAccelerateIpEndpointRelation("default",
///     accelerator_id=default_basic_accelerate_ip.accelerator_id,
///     accelerate_ip_id=default_basic_accelerate_ip.id,
///     endpoint_id=default_basic_endpoint.endpoint_id)
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
///     var region = config.Get("region") ?? "cn-shenzhen";
///     var endpointRegion = config.Get("endpointRegion") ?? "cn-hangzhou";
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
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         Name = "terraform-example",
///     });
///
///     var defaultEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("default", new()
///     {
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
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
///     var defaultBasicIpSet = new AliCloud.Ga.BasicIpSet("default", new()
///     {
///         AcceleratorId = defaultBasicAccelerator.Id,
///         AccelerateRegionId = endpointRegion,
///         IspType = "BGP",
///         Bandwidth = 5,
///     });
///
///     var defaultBasicAccelerateIp = new AliCloud.Ga.BasicAccelerateIp("default", new()
///     {
///         AcceleratorId = defaultBasicAccelerator.Id,
///         IpSetId = defaultBasicIpSet.Id,
///     });
///
///     var defaultBasicEndpointGroup = new AliCloud.Ga.BasicEndpointGroup("default", new()
///     {
///         AcceleratorId = defaultBasicAccelerator.Id,
///         EndpointGroupRegion = region,
///         BasicEndpointGroupName = "terraform-example",
///         Description = "terraform-example",
///     });
///
///     var defaultBasicEndpoint = new AliCloud.Ga.BasicEndpoint("default", new()
///     {
///         AcceleratorId = defaultBasicAccelerator.Id,
///         EndpointGroupId = defaultBasicEndpointGroup.Id,
///         EndpointType = "ENI",
///         EndpointAddress = defaultEcsNetworkInterface.Id,
///         EndpointSubAddressType = "primary",
///         EndpointSubAddress = "192.168.0.1",
///         BasicEndpointName = "terraform-example",
///     });
///
///     var defaultBasicAccelerateIpEndpointRelation = new AliCloud.Ga.BasicAccelerateIpEndpointRelation("default", new()
///     {
///         AcceleratorId = defaultBasicAccelerateIp.AcceleratorId,
///         AccelerateIpId = defaultBasicAccelerateIp.Id,
///         EndpointId = defaultBasicEndpoint.EndpointId,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-shenzhen"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		endpointRegion := "cn-hangzhou"
/// 		if param := cfg.Get("endpointRegion"); param != "" {
/// 			endpointRegion = param
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
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 			Name:  pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsNetworkInterface, err := ecs.NewEcsNetworkInterface(ctx, "default", &ecs.EcsNetworkInterfaceArgs{
/// 			VswitchId: defaultSwitch.ID(),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
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
/// 		defaultBasicIpSet, err := ga.NewBasicIpSet(ctx, "default", &ga.BasicIpSetArgs{
/// 			AcceleratorId:      defaultBasicAccelerator.ID(),
/// 			AccelerateRegionId: pulumi.String(endpointRegion),
/// 			IspType:            pulumi.String("BGP"),
/// 			Bandwidth:          pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBasicAccelerateIp, err := ga.NewBasicAccelerateIp(ctx, "default", &ga.BasicAccelerateIpArgs{
/// 			AcceleratorId: defaultBasicAccelerator.ID(),
/// 			IpSetId:       defaultBasicIpSet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBasicEndpointGroup, err := ga.NewBasicEndpointGroup(ctx, "default", &ga.BasicEndpointGroupArgs{
/// 			AcceleratorId:          defaultBasicAccelerator.ID(),
/// 			EndpointGroupRegion:    pulumi.String(region),
/// 			BasicEndpointGroupName: pulumi.String("terraform-example"),
/// 			Description:            pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBasicEndpoint, err := ga.NewBasicEndpoint(ctx, "default", &ga.BasicEndpointArgs{
/// 			AcceleratorId:          defaultBasicAccelerator.ID(),
/// 			EndpointGroupId:        defaultBasicEndpointGroup.ID(),
/// 			EndpointType:           pulumi.String("ENI"),
/// 			EndpointAddress:        defaultEcsNetworkInterface.ID(),
/// 			EndpointSubAddressType: pulumi.String("primary"),
/// 			EndpointSubAddress:     pulumi.String("192.168.0.1"),
/// 			BasicEndpointName:      pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewBasicAccelerateIpEndpointRelation(ctx, "default", &ga.BasicAccelerateIpEndpointRelationArgs{
/// 			AcceleratorId:  defaultBasicAccelerateIp.AcceleratorId,
/// 			AccelerateIpId: defaultBasicAccelerateIp.ID(),
/// 			EndpointId:     defaultBasicEndpoint.EndpointId,
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.alicloud.ga.BasicAccelerator;
/// import com.pulumi.alicloud.ga.BasicAcceleratorArgs;
/// import com.pulumi.alicloud.ga.BasicIpSet;
/// import com.pulumi.alicloud.ga.BasicIpSetArgs;
/// import com.pulumi.alicloud.ga.BasicAccelerateIp;
/// import com.pulumi.alicloud.ga.BasicAccelerateIpArgs;
/// import com.pulumi.alicloud.ga.BasicEndpointGroup;
/// import com.pulumi.alicloud.ga.BasicEndpointGroupArgs;
/// import com.pulumi.alicloud.ga.BasicEndpoint;
/// import com.pulumi.alicloud.ga.BasicEndpointArgs;
/// import com.pulumi.alicloud.ga.BasicAccelerateIpEndpointRelation;
/// import com.pulumi.alicloud.ga.BasicAccelerateIpEndpointRelationArgs;
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
///         final var region = config.get("region").orElse("cn-shenzhen");
///         final var endpointRegion = config.get("endpointRegion").orElse("cn-hangzhou");
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
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .name("terraform-example")
///             .build());
///
///         var defaultEcsNetworkInterface = new EcsNetworkInterface("defaultEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .vswitchId(defaultSwitch.id())
///             .securityGroupIds(defaultSecurityGroup.id())
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
///         var defaultBasicIpSet = new BasicIpSet("defaultBasicIpSet", BasicIpSetArgs.builder()
///             .acceleratorId(defaultBasicAccelerator.id())
///             .accelerateRegionId(endpointRegion)
///             .ispType("BGP")
///             .bandwidth(5)
///             .build());
///
///         var defaultBasicAccelerateIp = new BasicAccelerateIp("defaultBasicAccelerateIp", BasicAccelerateIpArgs.builder()
///             .acceleratorId(defaultBasicAccelerator.id())
///             .ipSetId(defaultBasicIpSet.id())
///             .build());
///
///         var defaultBasicEndpointGroup = new BasicEndpointGroup("defaultBasicEndpointGroup", BasicEndpointGroupArgs.builder()
///             .acceleratorId(defaultBasicAccelerator.id())
///             .endpointGroupRegion(region)
///             .basicEndpointGroupName("terraform-example")
///             .description("terraform-example")
///             .build());
///
///         var defaultBasicEndpoint = new BasicEndpoint("defaultBasicEndpoint", BasicEndpointArgs.builder()
///             .acceleratorId(defaultBasicAccelerator.id())
///             .endpointGroupId(defaultBasicEndpointGroup.id())
///             .endpointType("ENI")
///             .endpointAddress(defaultEcsNetworkInterface.id())
///             .endpointSubAddressType("primary")
///             .endpointSubAddress("192.168.0.1")
///             .basicEndpointName("terraform-example")
///             .build());
///
///         var defaultBasicAccelerateIpEndpointRelation = new BasicAccelerateIpEndpointRelation("defaultBasicAccelerateIpEndpointRelation", BasicAccelerateIpEndpointRelationArgs.builder()
///             .acceleratorId(defaultBasicAccelerateIp.acceleratorId())
///             .accelerateIpId(defaultBasicAccelerateIp.id())
///             .endpointId(defaultBasicEndpoint.endpointId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-shenzhen
///   endpointRegion:
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
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       name: terraform-example
///   defaultEcsNetworkInterface:
///     type: alicloud:ecs:EcsNetworkInterface
///     name: default
///     properties:
///       vswitchId: ${defaultSwitch.id}
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
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
///   defaultBasicIpSet:
///     type: alicloud:ga:BasicIpSet
///     name: default
///     properties:
///       acceleratorId: ${defaultBasicAccelerator.id}
///       accelerateRegionId: ${endpointRegion}
///       ispType: BGP
///       bandwidth: '5'
///   defaultBasicAccelerateIp:
///     type: alicloud:ga:BasicAccelerateIp
///     name: default
///     properties:
///       acceleratorId: ${defaultBasicAccelerator.id}
///       ipSetId: ${defaultBasicIpSet.id}
///   defaultBasicEndpointGroup:
///     type: alicloud:ga:BasicEndpointGroup
///     name: default
///     properties:
///       acceleratorId: ${defaultBasicAccelerator.id}
///       endpointGroupRegion: ${region}
///       basicEndpointGroupName: terraform-example
///       description: terraform-example
///   defaultBasicEndpoint:
///     type: alicloud:ga:BasicEndpoint
///     name: default
///     properties:
///       acceleratorId: ${defaultBasicAccelerator.id}
///       endpointGroupId: ${defaultBasicEndpointGroup.id}
///       endpointType: ENI
///       endpointAddress: ${defaultEcsNetworkInterface.id}
///       endpointSubAddressType: primary
///       endpointSubAddress: 192.168.0.1
///       basicEndpointName: terraform-example
///   defaultBasicAccelerateIpEndpointRelation:
///     type: alicloud:ga:BasicAccelerateIpEndpointRelation
///     name: default
///     properties:
///       acceleratorId: ${defaultBasicAccelerateIp.acceleratorId}
///       accelerateIpId: ${defaultBasicAccelerateIp.id}
///       endpointId: ${defaultBasicEndpoint.endpointId}
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
/// Global Accelerator (GA) Basic Accelerate Ip Endpoint Relation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/basicAccelerateIpEndpointRelation:BasicAccelerateIpEndpointRelation example <accelerator_id>:<accelerate_ip_id>:<endpoint_id>
/// ```
class BasicAccelerateIpEndpointRelation extends pulumi.CustomResource {
  /// The ID of the Basic Accelerate IP.
  late final pulumi.Output<String> accelerateIpId;

  /// The ID of the Basic GA instance.
  late final pulumi.Output<String> acceleratorId;

  /// The ID of the Basic Endpoint.
  late final pulumi.Output<String> endpointId;

  /// The status of the Basic Accelerate Ip Endpoint Relation.
  late final pulumi.Output<String> status;

  /// Creates a new [BasicAccelerateIpEndpointRelation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasicAccelerateIpEndpointRelation]. {@macro pulumi_ga_basic_accelerate_ip_endpoint_relation_basic_accelerate_ip_endpoint_relation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasicAccelerateIpEndpointRelation(
    String name, {
    BasicAccelerateIpEndpointRelationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/basicAccelerateIpEndpointRelation:BasicAccelerateIpEndpointRelation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accelerateIpId = registerOutput<String>('accelerateIpId');
    acceleratorId = registerOutput<String>('acceleratorId');
    endpointId = registerOutput<String>('endpointId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BasicAccelerateIpEndpointRelation] resource's state with the given [name] and [id].
  static BasicAccelerateIpEndpointRelation get(
    String name,
    pulumi.Input<String> id, {
    BasicAccelerateIpEndpointRelationState? state,
  }) {
    return BasicAccelerateIpEndpointRelation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BasicAccelerateIpEndpointRelation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ga/basicAccelerateIpEndpointRelation:BasicAccelerateIpEndpointRelation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accelerateIpId = registerOutput<String>('accelerateIpId');
    acceleratorId = registerOutput<String>('acceleratorId');
    endpointId = registerOutput<String>('endpointId');
    status = registerOutput<String>('status');
  }
}
