import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_association_args.dart';
import 'eip_association_state.dart';

/// Provides a EIP Association resource.
///
/// &gt; **NOTE:** `alicloud.ecs.EipAssociation` is useful in scenarios where EIPs are either
/// pre-existing or distributed to customers or users and therefore cannot be changed.
///
/// &gt; **NOTE:** From version 1.7.1, the resource support to associate EIP to SLB Instance or Nat Gateway.
///
/// &gt; **NOTE:** One EIP can only be associated with ECS or SLB instance which in the VPC.
///
/// For information about EIP Association and how to use it, see [What is Association](https://www.alibabacloud.com/help/en/vpc/developer-reference/api-vpc-2016-04-28-associateeipaddress).
///
/// &gt; **NOTE:** Available since v1.117.0.
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
/// const name = config.get("name") || "tf-example";
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
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[0]?.id),
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.ecs.Instance("example", {
///     availabilityZone: example.then(example => example.zones?.[0]?.id),
///     instanceName: name,
///     imageId: exampleGetImages.then(exampleGetImages => exampleGetImages.images?.[0]?.id),
///     instanceType: exampleGetInstanceTypes.then(exampleGetInstanceTypes => exampleGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [exampleSecurityGroup.id],
///     vswitchId: exampleSwitch.id,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const exampleEipAddress = new alicloud.ecs.EipAddress("example", {addressName: name});
/// const exampleEipAssociation = new alicloud.ecs.EipAssociation("example", {
///     allocationId: exampleEipAddress.id,
///     instanceId: exampleInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.get_zones(available_resource_creation="Instance")
/// example_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=example.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// example_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[0].id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name=name,
///     vpc_id=example_network.id)
/// example_instance = alicloud.ecs.Instance("example",
///     availability_zone=example.zones[0].id,
///     instance_name=name,
///     image_id=example_get_images.images[0].id,
///     instance_type=example_get_instance_types.instance_types[0].id,
///     security_groups=[example_security_group.id],
///     vswitch_id=example_switch.id,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// example_eip_address = alicloud.ecs.EipAddress("example", address_name=name)
/// example_eip_association = alicloud.ecs.EipAssociation("example",
///     allocation_id=example_eip_address.id,
///     instance_id=example_instance.id)
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
///     var name = config.Get("name") ?? "tf-example";
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
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
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
///     var exampleInstance = new AliCloud.Ecs.Instance("example", new()
///     {
///         AvailabilityZone = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceName = name,
///         ImageId = exampleGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = exampleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         VswitchId = exampleSwitch.Id,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var exampleEipAddress = new AliCloud.Ecs.EipAddress("example", new()
///     {
///         AddressName = name,
///     });
///
///     var exampleEipAssociation = new AliCloud.Ecs.EipAssociation("example", new()
///     {
///         AllocationId = exampleEipAddress.Id,
///         InstanceId = exampleInstance.Id,
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
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
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
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
/// 		exampleInstance, err := ecs.NewInstance(ctx, "example", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(example.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			ImageId:          pulumi.String(exampleGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(exampleGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			VswitchId: exampleSwitch.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEipAddress, err := ecs.NewEipAddress(ctx, "example", &ecs.EipAddressArgs{
/// 			AddressName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEipAssociation(ctx, "example", &ecs.EipAssociationArgs{
/// 			AllocationId: exampleEipAddress.ID(),
/// 			InstanceId:   exampleInstance.ID(),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ecs.EipAssociation;
/// import com.pulumi.alicloud.ecs.EipAssociationArgs;
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
///         final var name = config.get("name").orElse("tf-example");
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
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[0].id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .availabilityZone(example.zones()[0].id())
///             .instanceName(name)
///             .imageId(exampleGetImages.images()[0].id())
///             .instanceType(exampleGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(exampleSecurityGroup.id())
///             .vswitchId(exampleSwitch.id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var exampleEipAddress = new EipAddress("exampleEipAddress", EipAddressArgs.builder()
///             .addressName(name)
///             .build());
///
///         var exampleEipAssociation = new EipAssociation("exampleEipAssociation", EipAssociationArgs.builder()
///             .allocationId(exampleEipAddress.id())
///             .instanceId(exampleInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[0].id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:ecs:Instance
///     name: example
///     properties:
///       availabilityZone: ${example.zones[0].id}
///       instanceName: ${name}
///       imageId: ${exampleGetImages.images[0].id}
///       instanceType: ${exampleGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${exampleSecurityGroup.id}
///       vswitchId: ${exampleSwitch.id}
///       tags:
///         Created: TF
///         For: example
///   exampleEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: example
///     properties:
///       addressName: ${name}
///   exampleEipAssociation:
///     type: alicloud:ecs:EipAssociation
///     name: example
///     properties:
///       allocationId: ${exampleEipAddress.id}
///       instanceId: ${exampleInstance.id}
/// variables:
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
/// EIP Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/eipAssociation:EipAssociation example <allocation_id>:<instance_id>
/// ```
class EipAssociation extends pulumi.CustomResource {
  /// The ID of the EIP instance.
  late final pulumi.Output<String> allocationId;

  /// Specifies whether to disassociate the EIP from a NAT gateway if a DNAT or SNAT entry is added to the NAT gateway. Valid values:
  late final pulumi.Output<bool?> force;

  /// The ID of the instance with which you want to associate the EIP. You can enter the ID of a NAT gateway, CLB instance, ECS instance, secondary ENI, HAVIP, or IP address.
  late final pulumi.Output<String> instanceId;

  /// The type of the instance with which you want to associate the EIP. Valid values:
  /// - `Nat`: NAT gateway
  /// - `SlbInstance`: CLB instance
  /// - `EcsInstance` (default): ECS instance
  /// - `NetworkInterface`: secondary ENI
  /// - `HaVip`: HAVIP
  /// - `IpAddress`: IP address
  ///
  /// &gt; **NOTE:**   The default value is `EcsInstance`. If the instance with which you want to associate the EIP is not an ECS instance, this parameter is required.
  late final pulumi.Output<String> instanceType;

  /// The association mode. Valid values:
  /// - `NAT` (default): NAT mode
  /// - `MULTI_BINDED`: multi-EIP-to-ENI mode
  /// - `BINDED`: cut-network interface controller mode
  ///
  /// &gt; **NOTE:**   This parameter is required only when `instance_type` is set to `NetworkInterface`.
  late final pulumi.Output<String> mode;

  /// The IP address in the CIDR block of the vSwitch.
  ///
  /// If you leave this parameter empty, the system allocates a private IP address based on the VPC ID and vSwitch ID.
  ///
  /// &gt; **NOTE:**   This parameter is required if `instance_type` is set to `IpAddress`, which indicates that the EIP is to be associated with an IP address.
  late final pulumi.Output<String?> privateIpAddress;

  /// The ID of the VPC in which an IPv4 gateway is created. The VPC and the EIP must be in the same region.
  ///
  /// When you associate an EIP with an IP address, the system can enable the IP address to access the Internet based on VPC route configurations.
  ///
  /// &gt; **NOTE:**   This parameter is required if `instance_type` is set to `IpAddress`, which indicates that the EIP is to be associated with an IP address.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [EipAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EipAssociation]. {@macro pulumi_ecs_eip_association_eip_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EipAssociation(
    String name, {
    EipAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/eipAssociation:EipAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    force = registerOutput<bool?>('force');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    mode = registerOutput<String>('mode');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    vpcId = registerOutput<String?>('vpcId');
  }

  /// Gets an existing [EipAssociation] resource's state with the given [name] and [id].
  static EipAssociation get(
    String name,
    pulumi.Input<String> id, {
    EipAssociationState? state,
  }) {
    return EipAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EipAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/eipAssociation:EipAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    force = registerOutput<bool?>('force');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    mode = registerOutput<String>('mode');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    vpcId = registerOutput<String?>('vpcId');
  }
}
