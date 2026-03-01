import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_network_interface_attachment_args.dart';
import 'ecs_network_interface_attachment_state.dart';

/// Provides a ECS Network Interface Attachment resource.
///
/// For information about ECS Network Interface Attachment and how to use it, see [What is Network Interface Attachment](https://www.alibabacloud.com/help/en/doc-detail/58515.htm).
///
/// > **NOTE:** Available since v1.123.1.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     eniAmount: 3,
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "192.168.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vpcId: defaultNetwork.id,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     description: "New security group",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: name,
///     hostName: "tf-example",
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("default", {
///     networkInterfaceName: name,
///     vswitchId: defaultSwitch.id,
///     securityGroupIds: [defaultSecurityGroup.id],
///     description: "Basic example",
///     primaryIpAddress: "192.168.0.2",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
/// });
/// const defaultEcsNetworkInterfaceAttachment = new alicloud.ecs.EcsNetworkInterfaceAttachment("default", {
///     networkInterfaceId: defaultEcsNetworkInterface.id,
///     instanceId: defaultInstance.id,
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
/// default = alicloud.get_zones(available_resource_creation="Instance")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     eni_amount=3)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="192.168.0.0/24",
///     zone_id=default.zones[0].id,
///     vpc_id=default_network.id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     description="New security group",
///     vpc_id=default_network.id)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name=name,
///     host_name="tf-example",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id)
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("default",
///     network_interface_name=name,
///     vswitch_id=default_switch.id,
///     security_group_ids=[default_security_group.id],
///     description="Basic example",
///     primary_ip_address="192.168.0.2",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     resource_group_id=default_get_resource_groups.ids[0])
/// default_ecs_network_interface_attachment = alicloud.ecs.EcsNetworkInterfaceAttachment("default",
///     network_interface_id=default_ecs_network_interface.id,
///     instance_id=default_instance.id)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         EniAmount = 3,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         Description = "New security group",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = name,
///         HostName = "tf-example",
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("default", new()
///     {
///         NetworkInterfaceName = name,
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         Description = "Basic example",
///         PrimaryIpAddress = "192.168.0.2",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///     });
///
///     var defaultEcsNetworkInterfaceAttachment = new AliCloud.Ecs.EcsNetworkInterfaceAttachment("default", new()
///     {
///         NetworkInterfaceId = defaultEcsNetworkInterface.Id,
///         InstanceId = defaultInstance.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			EniAmount:        pulumi.IntRef(3),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VpcId:       defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String("New security group"),
/// 			VpcId:       defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			HostName:         pulumi.String("tf-example"),
/// 			ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId: defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsNetworkInterface, err := ecs.NewEcsNetworkInterface(ctx, "default", &ecs.EcsNetworkInterfaceArgs{
/// 			NetworkInterfaceName: pulumi.String(name),
/// 			VswitchId:            defaultSwitch.ID(),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			Description:      pulumi.String("Basic example"),
/// 			PrimaryIpAddress: pulumi.String("192.168.0.2"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsNetworkInterfaceAttachment(ctx, "default", &ecs.EcsNetworkInterfaceAttachmentArgs{
/// 			NetworkInterfaceId: defaultEcsNetworkInterface.ID(),
/// 			InstanceId:         defaultInstance.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceAttachment;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceAttachmentArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .eniAmount(3)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .description("New security group")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName(name)
///             .hostName("tf-example")
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultEcsNetworkInterface = new EcsNetworkInterface("defaultEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .networkInterfaceName(name)
///             .vswitchId(defaultSwitch.id())
///             .securityGroupIds(defaultSecurityGroup.id())
///             .description("Basic example")
///             .primaryIpAddress("192.168.0.2")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .build());
///
///         var defaultEcsNetworkInterfaceAttachment = new EcsNetworkInterfaceAttachment("defaultEcsNetworkInterfaceAttachment", EcsNetworkInterfaceAttachmentArgs.builder()
///             .networkInterfaceId(defaultEcsNetworkInterface.id())
///             .instanceId(defaultInstance.id())
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.0.0/24
///       zoneId: ${default.zones[0].id}
///       vpcId: ${defaultNetwork.id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       description: New security group
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       instanceName: ${name}
///       hostName: tf-example
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///   defaultEcsNetworkInterface:
///     type: alicloud:ecs:EcsNetworkInterface
///     name: default
///     properties:
///       networkInterfaceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       description: Basic example
///       primaryIpAddress: 192.168.0.2
///       tags:
///         Created: TF
///         For: example
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///   defaultEcsNetworkInterfaceAttachment:
///     type: alicloud:ecs:EcsNetworkInterfaceAttachment
///     name: default
///     properties:
///       networkInterfaceId: ${defaultEcsNetworkInterface.id}
///       instanceId: ${defaultInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         eniAmount: 3
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Network Interface Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsNetworkInterfaceAttachment:EcsNetworkInterfaceAttachment example <network_interface_id>:<instance_id>
/// ```
class EcsNetworkInterfaceAttachment extends pulumi.CustomResource {
  /// The ID of the ECS instance.
  late final pulumi.Output<String> instanceId;
  /// The index of the network card.
  late final pulumi.Output<int?> networkCardIndex;
  /// The ID of the network interface.
  late final pulumi.Output<String> networkInterfaceId;
  /// The ID of the trunk network instance.
  late final pulumi.Output<String?> trunkNetworkInstanceId;
  /// The wait for network configuration ready.
  late final pulumi.Output<bool?> waitForNetworkConfigurationReady;

  /// Creates a new [EcsNetworkInterfaceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsNetworkInterfaceAttachment]. {@macro pulumi_ecs_ecs_network_interface_attachment_ecs_network_interface_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsNetworkInterfaceAttachment(
    String name, {
    EcsNetworkInterfaceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsNetworkInterfaceAttachment:EcsNetworkInterfaceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.networkCardIndex = registerOutput<int?>('networkCardIndex');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.trunkNetworkInstanceId = registerOutput<String?>('trunkNetworkInstanceId');
    this.waitForNetworkConfigurationReady = registerOutput<bool?>('waitForNetworkConfigurationReady');
  }

  /// Gets an existing [EcsNetworkInterfaceAttachment] resource's state with the given [name] and [id].
  static EcsNetworkInterfaceAttachment get(
    String name,
    pulumi.Input<String> id, {
    EcsNetworkInterfaceAttachmentState? state,
  }) {
    return EcsNetworkInterfaceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsNetworkInterfaceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsNetworkInterfaceAttachment:EcsNetworkInterfaceAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.networkCardIndex = registerOutput<int?>('networkCardIndex');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.trunkNetworkInstanceId = registerOutput<String?>('trunkNetworkInstanceId');
    this.waitForNetworkConfigurationReady = registerOutput<bool?>('waitForNetworkConfigurationReady');
  }
}
