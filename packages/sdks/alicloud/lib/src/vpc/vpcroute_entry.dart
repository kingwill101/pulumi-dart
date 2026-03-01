import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpcroute_entry_args.dart';
import 'vpcroute_entry_next_hop.dart';
import 'vpcroute_entry_route_publish_target.dart';
import 'vpcroute_entry_state.dart';

/// Provides a VPC Route Entry resource.
///
/// There are route entries in the routing table, and the next hop is judged based on the route entries.
///
/// For information about VPC Route Entry and how to use it, see [What is Route Entry](https://www.alibabacloud.com/help/en/vpc/developer-reference/api-vpc-2016-04-28-createrouteentry).
///
/// > **NOTE:** Available since v1.245.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = Promise.all([_default, defaultGetImages]).then(([_default, defaultGetImages]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     imageId: defaultGetImages.images?.[0]?.id,
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup].map(__item => __item.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 10,
///     availabilityZone: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.availabilityZones?.[0]),
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
/// });
/// const foo = new alicloud.vpc.RouteEntry("foo", {
///     routeTableId: defaultNetwork.routeTableId,
///     destinationCidrblock: "172.11.1.1/32",
///     nexthopType: "Instance",
///     nexthopId: defaultInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     image_id=default_get_images.images[0].id)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[__item.id for __item in [default_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=default_get_instance_types.instance_types[0].availability_zones[0],
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=default_switch.id,
///     instance_name=name)
/// foo = alicloud.vpc.RouteEntry("foo",
///     route_table_id=default_network.route_table_id,
///     destination_cidrblock="172.11.1.1/32",
///     nexthop_type="Instance",
///     nexthop_id=default_instance.id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 10,
///         AvailabilityZone = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.AvailabilityZones[0]),
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///     });
///
///     var foo = new AliCloud.Vpc.RouteEntry("foo", new()
///     {
///         RouteTableId = defaultNetwork.RouteTableId,
///         DestinationCidrblock = "172.11.1.1/32",
///         NexthopType = "Instance",
///         NexthopId = defaultInstance.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// ImageId: pulumi.StringRef(defaultGetImages.Images[0].Id),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.192.0/24"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].AvailabilityZones[0]),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// VswitchId: defaultSwitch.ID(),
/// InstanceName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpc.NewRouteEntry(ctx, "foo", &vpc.RouteEntryArgs{
/// RouteTableId: defaultNetwork.RouteTableId,
/// DestinationCidrblock: pulumi.String("172.11.1.1/32"),
/// NexthopType: pulumi.String("Instance"),
/// NexthopId: defaultInstance.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.vpc.RouteEntry;
/// import com.pulumi.alicloud.vpc.RouteEntryArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .imageId(defaultGetImages.images()[0].id())
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
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(10)
///             .availabilityZone(defaultGetInstanceTypes.instanceTypes()[0].availabilityZones()[0])
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .build());
///
///         var foo = new RouteEntry("foo", RouteEntryArgs.builder()
///             .routeTableId(defaultNetwork.routeTableId())
///             .destinationCidrblock("172.11.1.1/32")
///             .nexthopType("Instance")
///             .nexthopId(defaultInstance.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Route Entry can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/vPCRouteEntry:VPCRouteEntry example <route_table_id>:<destination_cidr_block>
/// ```
class VPCRouteEntry extends pulumi.CustomResource {
  /// Description of the route entry.
  late final pulumi.Output<String?> description;
  /// The destination network segment of the routing entry.
  late final pulumi.Output<String> destinationCidrBlock;
  /// Next jump See `next_hops` below.
  late final pulumi.Output<List<VPCRouteEntryNextHop>> nextHops;
  /// The ID of the next hop instance of the custom route entry.
  late final pulumi.Output<String> nexthopId;
  /// The type of the next hop of the custom route entry. Valid values:
  /// - `Instance` (default): The ECS Instance.
  /// - `HaVip`: a highly available virtual IP address.
  /// - `RouterInterface`: indicates the router interface.
  /// - **Network interface**: ENI.
  /// - `VpnGateway`: the VPN gateway.
  /// - `IPv6Gateway`:IPv6 gateway.
  /// - `NatGateway`:NAT gateway.
  /// - `Attachment`: The forwarding router.
  /// - `VpcPeer`:VPC peer connection.
  /// - `Ipv4Gateway`:IPv4 Gateway.
  /// - `GatewayEndpoint`: the gateway endpoint.
  /// - `Ecr`: Leased line gateway.
  /// - `GatewayLoadBalancerEndpoint`: The Gateway-based load balancing endpoint.
  late final pulumi.Output<String> nexthopType;
  /// The name of the route entry.
  late final pulumi.Output<String> routeEntryName;
  /// Route publish status and publish target type See `route_publish_targets` below.
  late final pulumi.Output<List<VPCRouteEntryRoutePublishTarget>?> routePublishTargets;
  /// Routing table ID
  late final pulumi.Output<String> routeTableId;
  /// The status of the route entry.
  late final pulumi.Output<String> status;

  /// Creates a new [VPCRouteEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VPCRouteEntry]. {@macro pulumi_vpc_v_pcroute_entry_vpcroute_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VPCRouteEntry(
    String name, {
    VPCRouteEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vPCRouteEntry:VPCRouteEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.nextHops = registerOutput<List<VPCRouteEntryNextHop>>('nextHops');
    this.nexthopId = registerOutput<String>('nexthopId');
    this.nexthopType = registerOutput<String>('nexthopType');
    this.routeEntryName = registerOutput<String>('routeEntryName');
    this.routePublishTargets = registerOutput<List<VPCRouteEntryRoutePublishTarget>?>('routePublishTargets');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [VPCRouteEntry] resource's state with the given [name] and [id].
  static VPCRouteEntry get(
    String name,
    pulumi.Input<String> id, {
    VPCRouteEntryState? state,
  }) {
    return VPCRouteEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VPCRouteEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vPCRouteEntry:VPCRouteEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.nextHops = registerOutput<List<VPCRouteEntryNextHop>>('nextHops');
    this.nexthopId = registerOutput<String>('nexthopId');
    this.nexthopType = registerOutput<String>('nexthopType');
    this.routeEntryName = registerOutput<String>('routeEntryName');
    this.routePublishTargets = registerOutput<List<VPCRouteEntryRoutePublishTarget>?>('routePublishTargets');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.status = registerOutput<String>('status');
  }
}
