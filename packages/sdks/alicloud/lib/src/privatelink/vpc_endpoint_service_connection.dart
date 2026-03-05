import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_connection_args.dart';
import 'vpc_endpoint_service_connection_state.dart';

/// Provides a Private Link Vpc Endpoint Connection resource.
///
/// vpc endpoint connection.
///
/// For information about Private Link Vpc Endpoint Connection and how to use it, see [What is Vpc Endpoint Connection](https://www.alibabacloud.com/help/en/privatelink/latest/api-privatelink-2020-04-15-enablevpcendpointzoneconnection).
///
/// &gt; **NOTE:** Available since v1.110.0.
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
/// const name = config.get("name") || "tf_example";
/// const example = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const exampleVpcEndpointService = new alicloud.privatelink.VpcEndpointService("example", {
///     serviceDescription: name,
///     connectBandwidth: 103,
///     autoAcceptConnection: false,
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[0]?.id),
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("example", {
///     loadBalancerName: name,
///     vswitchId: exampleSwitch.id,
///     loadBalancerSpec: "slb.s2.small",
///     addressType: "intranet",
/// });
/// const exampleVpcEndpointServiceResource = new alicloud.privatelink.VpcEndpointServiceResource("example", {
///     serviceId: exampleVpcEndpointService.id,
///     resourceId: exampleApplicationLoadBalancer.id,
///     resourceType: "slb",
/// });
/// const exampleVpcEndpoint = new alicloud.privatelink.VpcEndpoint("example", {
///     serviceId: exampleVpcEndpointServiceResource.serviceId,
///     securityGroupIds: [exampleSecurityGroup.id],
///     vpcId: exampleNetwork.id,
///     vpcEndpointName: name,
/// });
/// const exampleVpcEndpointServiceConnection = new alicloud.privatelink.VpcEndpointServiceConnection("example", {
///     endpointId: exampleVpcEndpoint.id,
///     serviceId: exampleVpcEndpoint.serviceId,
///     bandwidth: 1024,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// example = alicloud.get_zones(available_resource_creation="VSwitch")
/// example_vpc_endpoint_service = alicloud.privatelink.VpcEndpointService("example",
///     service_description=name,
///     connect_bandwidth=103,
///     auto_accept_connection=False)
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=example_network.id,
///     zone_id=example.zones[0].id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name=name,
///     vpc_id=example_network.id)
/// example_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("example",
///     load_balancer_name=name,
///     vswitch_id=example_switch.id,
///     load_balancer_spec="slb.s2.small",
///     address_type="intranet")
/// example_vpc_endpoint_service_resource = alicloud.privatelink.VpcEndpointServiceResource("example",
///     service_id=example_vpc_endpoint_service.id,
///     resource_id=example_application_load_balancer.id,
///     resource_type="slb")
/// example_vpc_endpoint = alicloud.privatelink.VpcEndpoint("example",
///     service_id=example_vpc_endpoint_service_resource.service_id,
///     security_group_ids=[example_security_group.id],
///     vpc_id=example_network.id,
///     vpc_endpoint_name=name)
/// example_vpc_endpoint_service_connection = alicloud.privatelink.VpcEndpointServiceConnection("example",
///     endpoint_id=example_vpc_endpoint.id,
///     service_id=example_vpc_endpoint.service_id,
///     bandwidth=1024)
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
///     var name = config.Get("name") ?? "tf_example";
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var exampleVpcEndpointService = new AliCloud.PrivateLink.VpcEndpointService("example", new()
///     {
///         ServiceDescription = name,
///         ConnectBandwidth = 103,
///         AutoAcceptConnection = false,
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.1.0.0/16",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = name,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("example", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = exampleSwitch.Id,
///         LoadBalancerSpec = "slb.s2.small",
///         AddressType = "intranet",
///     });
///
///     var exampleVpcEndpointServiceResource = new AliCloud.PrivateLink.VpcEndpointServiceResource("example", new()
///     {
///         ServiceId = exampleVpcEndpointService.Id,
///         ResourceId = exampleApplicationLoadBalancer.Id,
///         ResourceType = "slb",
///     });
///
///     var exampleVpcEndpoint = new AliCloud.PrivateLink.VpcEndpoint("example", new()
///     {
///         ServiceId = exampleVpcEndpointServiceResource.ServiceId,
///         SecurityGroupIds = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         VpcId = exampleNetwork.Id,
///         VpcEndpointName = name,
///     });
///
///     var exampleVpcEndpointServiceConnection = new AliCloud.PrivateLink.VpcEndpointServiceConnection("example", new()
///     {
///         EndpointId = exampleVpcEndpoint.Id,
///         ServiceId = exampleVpcEndpoint.ServiceId,
///         Bandwidth = 1024,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcEndpointService, err := privatelink.NewVpcEndpointService(ctx, "example", &privatelink.VpcEndpointServiceArgs{
/// 			ServiceDescription:   pulumi.String(name),
/// 			ConnectBandwidth:     pulumi.Int(103),
/// 			AutoAcceptConnection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.1.0.0/16"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "example", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        exampleSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 			AddressType:      pulumi.String("intranet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcEndpointServiceResource, err := privatelink.NewVpcEndpointServiceResource(ctx, "example", &privatelink.VpcEndpointServiceResourceArgs{
/// 			ServiceId:    exampleVpcEndpointService.ID(),
/// 			ResourceId:   exampleApplicationLoadBalancer.ID(),
/// 			ResourceType: pulumi.String("slb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcEndpoint, err := privatelink.NewVpcEndpoint(ctx, "example", &privatelink.VpcEndpointArgs{
/// 			ServiceId: exampleVpcEndpointServiceResource.ServiceId,
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			VpcId:           exampleNetwork.ID(),
/// 			VpcEndpointName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatelink.NewVpcEndpointServiceConnection(ctx, "example", &privatelink.VpcEndpointServiceConnectionArgs{
/// 			EndpointId: exampleVpcEndpoint.ID(),
/// 			ServiceId:  exampleVpcEndpoint.ServiceId,
/// 			Bandwidth:  pulumi.Int(1024),
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
/// import com.pulumi.alicloud.privatelink.VpcEndpointService;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceResource;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceResourceArgs;
/// import com.pulumi.alicloud.privatelink.VpcEndpoint;
/// import com.pulumi.alicloud.privatelink.VpcEndpointArgs;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceConnection;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceConnectionArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var exampleVpcEndpointService = new VpcEndpointService("exampleVpcEndpointService", VpcEndpointServiceArgs.builder()
///             .serviceDescription(name)
///             .connectBandwidth(103)
///             .autoAcceptConnection(false)
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.1.0.0/16")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[0].id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleApplicationLoadBalancer = new ApplicationLoadBalancer("exampleApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(exampleSwitch.id())
///             .loadBalancerSpec("slb.s2.small")
///             .addressType("intranet")
///             .build());
///
///         var exampleVpcEndpointServiceResource = new VpcEndpointServiceResource("exampleVpcEndpointServiceResource", VpcEndpointServiceResourceArgs.builder()
///             .serviceId(exampleVpcEndpointService.id())
///             .resourceId(exampleApplicationLoadBalancer.id())
///             .resourceType("slb")
///             .build());
///
///         var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
///             .serviceId(exampleVpcEndpointServiceResource.serviceId())
///             .securityGroupIds(exampleSecurityGroup.id())
///             .vpcId(exampleNetwork.id())
///             .vpcEndpointName(name)
///             .build());
///
///         var exampleVpcEndpointServiceConnection = new VpcEndpointServiceConnection("exampleVpcEndpointServiceConnection", VpcEndpointServiceConnectionArgs.builder()
///             .endpointId(exampleVpcEndpoint.id())
///             .serviceId(exampleVpcEndpoint.serviceId())
///             .bandwidth(1024)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   exampleVpcEndpointService:
///     type: alicloud:privatelink:VpcEndpointService
///     name: example
///     properties:
///       serviceDescription: ${name}
///       connectBandwidth: 103
///       autoAcceptConnection: false
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[0].id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: example
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${exampleSwitch.id}
///       loadBalancerSpec: slb.s2.small
///       addressType: intranet
///   exampleVpcEndpointServiceResource:
///     type: alicloud:privatelink:VpcEndpointServiceResource
///     name: example
///     properties:
///       serviceId: ${exampleVpcEndpointService.id}
///       resourceId: ${exampleApplicationLoadBalancer.id}
///       resourceType: slb
///   exampleVpcEndpoint:
///     type: alicloud:privatelink:VpcEndpoint
///     name: example
///     properties:
///       serviceId: ${exampleVpcEndpointServiceResource.serviceId}
///       securityGroupIds:
///         - ${exampleSecurityGroup.id}
///       vpcId: ${exampleNetwork.id}
///       vpcEndpointName: ${name}
///   exampleVpcEndpointServiceConnection:
///     type: alicloud:privatelink:VpcEndpointServiceConnection
///     name: example
///     properties:
///       endpointId: ${exampleVpcEndpoint.id}
///       serviceId: ${exampleVpcEndpoint.serviceId}
///       bandwidth: '1024'
/// variables:
///   example:
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
/// Private Link Vpc Endpoint Connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:privatelink/vpcEndpointServiceConnection:VpcEndpointServiceConnection example <service_id>:<endpoint_id>
/// ```
class VpcEndpointServiceConnection extends pulumi.CustomResource {
  /// The bandwidth of the endpoint connection. Valid values: 1024 to 10240. Unit: Mbit/s.
  ///
  /// Note: The bandwidth of an endpoint connection is in the range of 100 to 10,240 Mbit/s. The default bandwidth is 1,024 Mbit/s. When the endpoint is connected to the endpoint service, the default bandwidth is the minimum bandwidth. In this case, the connection bandwidth range is 1,024 to 10,240 Mbit/s.
  late final pulumi.Output<int> bandwidth;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The endpoint ID.
  late final pulumi.Output<String> endpointId;
  /// The endpoint service ID.
  late final pulumi.Output<String> serviceId;
  /// The state of the endpoint connection.
  late final pulumi.Output<String> status;

  /// Creates a new [VpcEndpointServiceConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointServiceConnection]. {@macro pulumi_privatelink_vpc_endpoint_service_connection_vpc_endpoint_service_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointServiceConnection(
    String name, {
    VpcEndpointServiceConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpointServiceConnection:VpcEndpointServiceConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    dryRun = registerOutput<bool?>('dryRun');
    endpointId = registerOutput<String>('endpointId');
    serviceId = registerOutput<String>('serviceId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [VpcEndpointServiceConnection] resource's state with the given [name] and [id].
  static VpcEndpointServiceConnection get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointServiceConnectionState? state,
  }) {
    return VpcEndpointServiceConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpointServiceConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpointServiceConnection:VpcEndpointServiceConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    dryRun = registerOutput<bool?>('dryRun');
    endpointId = registerOutput<String>('endpointId');
    serviceId = registerOutput<String>('serviceId');
    status = registerOutput<String>('status');
  }
}
