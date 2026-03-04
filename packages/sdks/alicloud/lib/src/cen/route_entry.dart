import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_entry_args.dart';
import 'route_entry_state.dart';

/// Provides a CEN route entry resource. Cloud Enterprise Network (CEN) supports publishing and withdrawing route entries of attached networks. You can publish a route entry of an attached VPC or VBR to a CEN instance, then other attached networks can learn the route if there is no route conflict. You can withdraw a published route entry when CEN does not need it any more.
///
/// For information about CEN route entries publishment and how to use it, see [Manage network routes](https://www.alibabacloud.com/help/doc-detail/86980.htm).
///
/// &gt; **NOTE:** Available since v1.20.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const exampleGetInstanceTypes = example.then(example => alicloud.ecs.getInstanceTypes({
///     availabilityZone: example.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const exampleGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[0]?.id),
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: "terraform-example",
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.ecs.Instance("example", {
///     availabilityZone: example.then(example => example.zones?.[0]?.id),
///     instanceName: "terraform-example",
///     imageId: exampleGetImages.then(exampleGetImages => exampleGetImages.images?.[0]?.id),
///     instanceType: exampleGetInstanceTypes.then(exampleGetInstanceTypes => exampleGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [exampleSecurityGroup.id],
///     vswitchId: exampleSwitch.id,
///     internetMaxBandwidthOut: 5,
/// });
/// const exampleInstance2 = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleInstanceAttachment = new alicloud.cen.InstanceAttachment("example", {
///     instanceId: exampleInstance2.id,
///     childInstanceId: exampleNetwork.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// const exampleRouteEntry = new alicloud.vpc.RouteEntry("example", {
///     routeTableId: exampleNetwork.routeTableId,
///     destinationCidrblock: "11.0.0.0/16",
///     nexthopType: "Instance",
///     nexthopId: exampleInstance.id,
/// });
/// const exampleRouteEntry2 = new alicloud.cen.RouteEntry("example", {
///     instanceId: exampleInstanceAttachment.instanceId,
///     routeTableId: exampleNetwork.routeTableId,
///     cidrBlock: exampleRouteEntry.destinationCidrblock,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_regions(current=True)
/// example = alicloud.get_zones(available_resource_creation="Instance")
/// example_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=example.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// example_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[0].id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name="terraform-example",
///     vpc_id=example_network.id)
/// example_instance = alicloud.ecs.Instance("example",
///     availability_zone=example.zones[0].id,
///     instance_name="terraform-example",
///     image_id=example_get_images.images[0].id,
///     instance_type=example_get_instance_types.instance_types[0].id,
///     security_groups=[example_security_group.id],
///     vswitch_id=example_switch.id,
///     internet_max_bandwidth_out=5)
/// example_instance2 = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_instance_attachment = alicloud.cen.InstanceAttachment("example",
///     instance_id=example_instance2.id,
///     child_instance_id=example_network.id,
///     child_instance_type="VPC",
///     child_instance_region_id=default.regions[0].id)
/// example_route_entry = alicloud.vpc.RouteEntry("example",
///     route_table_id=example_network.route_table_id,
///     destination_cidrblock="11.0.0.0/16",
///     nexthop_type="Instance",
///     nexthop_id=example_instance.id)
/// example_route_entry2 = alicloud.cen.RouteEntry("example",
///     instance_id=example_instance_attachment.instance_id,
///     route_table_id=example_network.route_table_id,
///     cidr_block=example_route_entry.destination_cidrblock)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var exampleGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var exampleGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = "terraform-example",
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Ecs.Instance("example", new()
///     {
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceName = "terraform-example",
///         ImageId = exampleGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = exampleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         VswitchId = exampleSwitch.Id,
///         InternetMaxBandwidthOut = 5,
///     });
///
///     var exampleInstance2 = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleInstanceAttachment = new AliCloud.Cen.InstanceAttachment("example", new()
///     {
///         InstanceId = exampleInstance2.Id,
///         ChildInstanceId = exampleNetwork.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
///     var exampleRouteEntry = new AliCloud.Vpc.RouteEntry("example", new()
///     {
///         RouteTableId = exampleNetwork.RouteTableId,
///         DestinationCidrblock = "11.0.0.0/16",
///         NexthopType = "Instance",
///         NexthopId = exampleInstance.Id,
///     });
///
///     var exampleRouteEntry2 = new AliCloud.Cen.RouteEntry("example", new()
///     {
///         InstanceId = exampleInstanceAttachment.InstanceId,
///         RouteTableId = exampleNetwork.RouteTableId,
///         CidrBlock = exampleRouteEntry.DestinationCidrblock,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(example.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("terraform-example"),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := ecs.NewInstance(ctx, "example", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(example.Zones[0].Id),
/// 			InstanceName:     pulumi.String("terraform-example"),
/// 			ImageId:          pulumi.String(exampleGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(exampleGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			VswitchId:               exampleSwitch.ID(),
/// 			InternetMaxBandwidthOut: pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance2, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstanceAttachment, err := cen.NewInstanceAttachment(ctx, "example", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            exampleInstance2.ID(),
/// 			ChildInstanceId:       exampleNetwork.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(_default.Regions[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRouteEntry, err := vpc.NewRouteEntry(ctx, "example", &vpc.RouteEntryArgs{
/// 			RouteTableId:         exampleNetwork.RouteTableId,
/// 			DestinationCidrblock: pulumi.String("11.0.0.0/16"),
/// 			NexthopType:          pulumi.String("Instance"),
/// 			NexthopId:            exampleInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewRouteEntry(ctx, "example", &cen.RouteEntryArgs{
/// 			InstanceId:   exampleInstanceAttachment.InstanceId,
/// 			RouteTableId: exampleNetwork.RouteTableId,
/// 			CidrBlock:    exampleRouteEntry.DestinationCidrblock,
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.cen.InstanceAttachment;
/// import com.pulumi.alicloud.cen.InstanceAttachmentArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var exampleGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(example.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var exampleGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[0].id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name("terraform-example")
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new com.pulumi.alicloud.ecs.Instance("exampleInstance", com.pulumi.alicloud.ecs.InstanceArgs.builder()
///             .availabilityZone(example.zones()[0].id())
///             .instanceName("terraform-example")
///             .imageId(exampleGetImages.images()[0].id())
///             .instanceType(exampleGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(exampleSecurityGroup.id())
///             .vswitchId(exampleSwitch.id())
///             .internetMaxBandwidthOut(5)
///             .build());
///
///         var exampleInstance2 = new com.pulumi.alicloud.cen.Instance("exampleInstance2", com.pulumi.alicloud.cen.InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleInstanceAttachment = new InstanceAttachment("exampleInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(exampleInstance2.id())
///             .childInstanceId(exampleNetwork.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(default_.regions()[0].id())
///             .build());
///
///         var exampleRouteEntry = new com.pulumi.alicloud.vpc.RouteEntry("exampleRouteEntry", com.pulumi.alicloud.vpc.RouteEntryArgs.builder()
///             .routeTableId(exampleNetwork.routeTableId())
///             .destinationCidrblock("11.0.0.0/16")
///             .nexthopType("Instance")
///             .nexthopId(exampleInstance.id())
///             .build());
///
///         var exampleRouteEntry2 = new com.pulumi.alicloud.cen.RouteEntry("exampleRouteEntry2", com.pulumi.alicloud.cen.RouteEntryArgs.builder()
///             .instanceId(exampleInstanceAttachment.instanceId())
///             .routeTableId(exampleNetwork.routeTableId())
///             .cidrBlock(exampleRouteEntry.destinationCidrblock())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[0].id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: terraform-example
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:ecs:Instance
///     name: example
///     properties:
///       availabilityZone: ${example.zones[0].id}
///       instanceName: terraform-example
///       imageId: ${exampleGetImages.images[0].id}
///       instanceType: ${exampleGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${exampleSecurityGroup.id}
///       vswitchId: ${exampleSwitch.id}
///       internetMaxBandwidthOut: 5
///   exampleInstance2:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleInstanceAttachment:
///     type: alicloud:cen:InstanceAttachment
///     name: example
///     properties:
///       instanceId: ${exampleInstance2.id}
///       childInstanceId: ${exampleNetwork.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${default.regions[0].id}
///   exampleRouteEntry:
///     type: alicloud:vpc:RouteEntry
///     name: example
///     properties:
///       routeTableId: ${exampleNetwork.routeTableId}
///       destinationCidrblock: 11.0.0.0/16
///       nexthopType: Instance
///       nexthopId: ${exampleInstance.id}
///   exampleRouteEntry2:
///     type: alicloud:cen:RouteEntry
///     name: example
///     properties:
///       instanceId: ${exampleInstanceAttachment.instanceId}
///       routeTableId: ${exampleNetwork.routeTableId}
///       cidrBlock: ${exampleRouteEntry.destinationCidrblock}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   example:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   exampleGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${example.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   exampleGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/routeEntry:RouteEntry example cen-abc123456:vtb-abc123:192.168.0.0/24
/// ```
class RouteEntry extends pulumi.CustomResource {
  /// The destination CIDR block of the route entry to publish.
  ///
  /// -&gt;**NOTE:** The "alicloud_cen_instance_route_entries" resource depends on the related "alicloud.cen.InstanceAttachment" resource.
  ///
  /// -&gt;**NOTE:** The "alicloud.cen.InstanceAttachment" resource should depend on the related "alicloud.vpc.Switch" resource.
  late final pulumi.Output<String> cidrBlock;

  /// The ID of the CEN.
  late final pulumi.Output<String> instanceId;

  /// The route table of the attached VBR or VPC.
  late final pulumi.Output<String> routeTableId;

  /// Creates a new [RouteEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteEntry]. {@macro pulumi_cen_route_entry_route_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteEntry(
    String name, {
    RouteEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/routeEntry:RouteEntry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrBlock = registerOutput<String>('cidrBlock');
    instanceId = registerOutput<String>('instanceId');
    routeTableId = registerOutput<String>('routeTableId');
  }

  /// Gets an existing [RouteEntry] resource's state with the given [name] and [id].
  static RouteEntry get(
    String name,
    pulumi.Input<String> id, {
    RouteEntryState? state,
  }) {
    return RouteEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/routeEntry:RouteEntry',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrBlock = registerOutput<String>('cidrBlock');
    instanceId = registerOutput<String>('instanceId');
    routeTableId = registerOutput<String>('routeTableId');
  }
}
