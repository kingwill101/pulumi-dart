import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_mirror_session_args.dart';

/// Provides a VPC Traffic Mirror Session resource. Traffic mirroring session.
///
/// For information about VPC Traffic Mirror Session and how to use it, see [What is Traffic Mirror Session](https://www.alibabacloud.com/help/en/doc-detail/261364.htm).
///
/// > **NOTE:** Available since v1.142.0.
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
/// const _default = alicloud.ecs.getInstanceTypes({
///     instanceTypeFamily: "ecs.g7",
/// });
/// const defaultGetZones = _default.then(_default => alicloud.getZones({
///     availableResourceCreation: "Instance",
///     availableInstanceType: _default.instanceTypes?.[0]?.id,
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     description: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultInstance: alicloud.ecs.Instance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultInstance.push(new alicloud.ecs.Instance(`default-${range.value}`, {
///         availabilityZone: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///         instanceName: name,
///         hostName: name,
///         imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///         instanceType: _default.then(_default => _default.instanceTypes?.[0]?.id),
///         securityGroups: [defaultSecurityGroup.id],
///         vswitchId: defaultSwitch.id,
///         systemDiskCategory: "cloud_essd",
///     }));
/// }
/// const defaultEcsNetworkInterface: alicloud.ecs.EcsNetworkInterface[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultEcsNetworkInterface.push(new alicloud.ecs.EcsNetworkInterface(`default-${range.value}`, {
///         networkInterfaceName: name,
///         vswitchId: defaultSwitch.id,
///         securityGroupIds: [defaultSecurityGroup.id],
///     }));
/// }
/// const defaultEcsNetworkInterfaceAttachment: alicloud.ecs.EcsNetworkInterfaceAttachment[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultEcsNetworkInterfaceAttachment.push(new alicloud.ecs.EcsNetworkInterfaceAttachment(`default-${range.value}`, {
///         instanceId: defaultInstance[range.value].id,
///         networkInterfaceId: defaultEcsNetworkInterface[range.value].id,
///     }));
/// }
/// const defaultTrafficMirrorFilter = new alicloud.vpc.TrafficMirrorFilter("default", {
///     trafficMirrorFilterName: name,
///     trafficMirrorFilterDescription: name,
/// });
/// const defaultTrafficMirrorSession = new alicloud.vpc.TrafficMirrorSession("default", {
///     priority: 1,
///     virtualNetworkId: 10,
///     trafficMirrorSessionDescription: name,
///     trafficMirrorSessionName: name,
///     trafficMirrorTargetId: defaultEcsNetworkInterfaceAttachment[0].networkInterfaceId,
///     trafficMirrorSourceIds: [defaultEcsNetworkInterfaceAttachment[1].networkInterfaceId],
///     trafficMirrorFilterId: defaultTrafficMirrorFilter.id,
///     trafficMirrorTargetType: "NetworkInterface",
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
/// default = alicloud.ecs.get_instance_types(instance_type_family="ecs.g7")
/// default_get_zones = alicloud.get_zones(available_resource_creation="Instance",
///     available_instance_type=default.instance_types[0].id)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     description=name,
///     vpc_id=default_network.id)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_instance = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_instance.append(alicloud.ecs.Instance(f"default-{range['value']}",
///         availability_zone=default_get_zones.zones[0].id,
///         instance_name=name,
///         host_name=name,
///         image_id=default_get_images.images[0].id,
///         instance_type=default.instance_types[0].id,
///         security_groups=[default_security_group.id],
///         vswitch_id=default_switch.id,
///         system_disk_category="cloud_essd"))
/// default_ecs_network_interface = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_ecs_network_interface.append(alicloud.ecs.EcsNetworkInterface(f"default-{range['value']}",
///         network_interface_name=name,
///         vswitch_id=default_switch.id,
///         security_group_ids=[default_security_group.id]))
/// default_ecs_network_interface_attachment = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_ecs_network_interface_attachment.append(alicloud.ecs.EcsNetworkInterfaceAttachment(f"default-{range['value']}",
///         instance_id=default_instance[range["value"]].id,
///         network_interface_id=default_ecs_network_interface[range["value"]].id))
/// default_traffic_mirror_filter = alicloud.vpc.TrafficMirrorFilter("default",
///     traffic_mirror_filter_name=name,
///     traffic_mirror_filter_description=name)
/// default_traffic_mirror_session = alicloud.vpc.TrafficMirrorSession("default",
///     priority=1,
///     virtual_network_id=10,
///     traffic_mirror_session_description=name,
///     traffic_mirror_session_name=name,
///     traffic_mirror_target_id=default_ecs_network_interface_attachment[0].network_interface_id,
///     traffic_mirror_source_ids=[default_ecs_network_interface_attachment[1].network_interface_id],
///     traffic_mirror_filter_id=default_traffic_mirror_filter.id,
///     traffic_mirror_target_type="NetworkInterface")
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
///     var @default = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "ecs.g7",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///         AvailableInstanceType = @default.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         Description = name,
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
///     var defaultInstance = new List<AliCloud.Ecs.Instance>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultInstance.Add(new AliCloud.Ecs.Instance($"default-{range.Value}", new()
///         {
///             AvailabilityZone = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///             InstanceName = name,
///             HostName = name,
///             ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///             InstanceType = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id)),
///             SecurityGroups = new[]
///             {
///                 defaultSecurityGroup.Id,
///             },
///             VswitchId = defaultSwitch.Id,
///             SystemDiskCategory = "cloud_essd",
///         }));
///     }
///     var defaultEcsNetworkInterface = new List<AliCloud.Ecs.EcsNetworkInterface>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultEcsNetworkInterface.Add(new AliCloud.Ecs.EcsNetworkInterface($"default-{range.Value}", new()
///         {
///             NetworkInterfaceName = name,
///             VswitchId = defaultSwitch.Id,
///             SecurityGroupIds = new[]
///             {
///                 defaultSecurityGroup.Id,
///             },
///         }));
///     }
///     var defaultEcsNetworkInterfaceAttachment = new List<AliCloud.Ecs.EcsNetworkInterfaceAttachment>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultEcsNetworkInterfaceAttachment.Add(new AliCloud.Ecs.EcsNetworkInterfaceAttachment($"default-{range.Value}", new()
///         {
///             InstanceId = defaultInstance[range.Value].Id,
///             NetworkInterfaceId = defaultEcsNetworkInterface[range.Value].Id,
///         }));
///     }
///     var defaultTrafficMirrorFilter = new AliCloud.Vpc.TrafficMirrorFilter("default", new()
///     {
///         TrafficMirrorFilterName = name,
///         TrafficMirrorFilterDescription = name,
///     });
///
///     var defaultTrafficMirrorSession = new AliCloud.Vpc.TrafficMirrorSession("default", new()
///     {
///         Priority = 1,
///         VirtualNetworkId = 10,
///         TrafficMirrorSessionDescription = name,
///         TrafficMirrorSessionName = name,
///         TrafficMirrorTargetId = defaultEcsNetworkInterfaceAttachment[0].NetworkInterfaceId,
///         TrafficMirrorSourceIds = new[]
///         {
///             defaultEcsNetworkInterfaceAttachment[1].NetworkInterfaceId,
///         },
///         TrafficMirrorFilterId = defaultTrafficMirrorFilter.Id,
///         TrafficMirrorTargetType = "NetworkInterface",
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
/// 		_default, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.g7"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 			AvailableInstanceType:     pulumi.StringRef(_default.InstanceTypes[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
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
/// 		var defaultInstance []*ecs.Instance
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewInstance(ctx, fmt.Sprintf("default-%v", key0), &ecs.InstanceArgs{
/// 				AvailabilityZone: pulumi.String(defaultGetZones.Zones[0].Id),
/// 				InstanceName:     pulumi.String(name),
/// 				HostName:         pulumi.String(name),
/// 				ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 				InstanceType:     pulumi.String(_default.InstanceTypes[0].Id),
/// 				SecurityGroups: pulumi.StringArray{
/// 					defaultSecurityGroup.ID(),
/// 				},
/// 				VswitchId:          defaultSwitch.ID(),
/// 				SystemDiskCategory: pulumi.String("cloud_essd"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultInstance = append(defaultInstance, __res)
/// 		}
/// 		var defaultEcsNetworkInterface []*ecs.EcsNetworkInterface
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewEcsNetworkInterface(ctx, fmt.Sprintf("default-%v", key0), &ecs.EcsNetworkInterfaceArgs{
/// 				NetworkInterfaceName: pulumi.String(name),
/// 				VswitchId:            defaultSwitch.ID(),
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					defaultSecurityGroup.ID(),
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultEcsNetworkInterface = append(defaultEcsNetworkInterface, __res)
/// 		}
/// 		var defaultEcsNetworkInterfaceAttachment []*ecs.EcsNetworkInterfaceAttachment
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ecs.NewEcsNetworkInterfaceAttachment(ctx, fmt.Sprintf("default-%v", key0), &ecs.EcsNetworkInterfaceAttachmentArgs{
/// 				InstanceId:         defaultInstance[val0].ID(),
/// 				NetworkInterfaceId: defaultEcsNetworkInterface[val0].ID(),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultEcsNetworkInterfaceAttachment = append(defaultEcsNetworkInterfaceAttachment, __res)
/// 		}
/// 		defaultTrafficMirrorFilter, err := vpc.NewTrafficMirrorFilter(ctx, "default", &vpc.TrafficMirrorFilterArgs{
/// 			TrafficMirrorFilterName:        pulumi.String(name),
/// 			TrafficMirrorFilterDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewTrafficMirrorSession(ctx, "default", &vpc.TrafficMirrorSessionArgs{
/// 			Priority:                        pulumi.Int(1),
/// 			VirtualNetworkId:                pulumi.Int(10),
/// 			TrafficMirrorSessionDescription: pulumi.String(name),
/// 			TrafficMirrorSessionName:        pulumi.String(name),
/// 			TrafficMirrorTargetId:           defaultEcsNetworkInterfaceAttachment[0].NetworkInterfaceId,
/// 			TrafficMirrorSourceIds: pulumi.StringArray{
/// 				defaultEcsNetworkInterfaceAttachment[1].NetworkInterfaceId,
/// 			},
/// 			TrafficMirrorFilterId:   defaultTrafficMirrorFilter.ID(),
/// 			TrafficMirrorTargetType: pulumi.String("NetworkInterface"),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceAttachment;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceAttachmentArgs;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilter;
/// import com.pulumi.alicloud.vpc.TrafficMirrorFilterArgs;
/// import com.pulumi.alicloud.vpc.TrafficMirrorSession;
/// import com.pulumi.alicloud.vpc.TrafficMirrorSessionArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .instanceTypeFamily("ecs.g7")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .availableInstanceType(default_.instanceTypes()[0].id())
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .description(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Instance("defaultInstance-" + i, InstanceArgs.builder()
///                 .availabilityZone(defaultGetZones.zones()[0].id())
///                 .instanceName(name)
///                 .hostName(name)
///                 .imageId(defaultGetImages.images()[0].id())
///                 .instanceType(default_.instanceTypes()[0].id())
///                 .securityGroups(defaultSecurityGroup.id())
///                 .vswitchId(defaultSwitch.id())
///                 .systemDiskCategory("cloud_essd")
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new EcsNetworkInterface("defaultEcsNetworkInterface-" + i, EcsNetworkInterfaceArgs.builder()
///                 .networkInterfaceName(name)
///                 .vswitchId(defaultSwitch.id())
///                 .securityGroupIds(defaultSecurityGroup.id())
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new EcsNetworkInterfaceAttachment("defaultEcsNetworkInterfaceAttachment-" + i, EcsNetworkInterfaceAttachmentArgs.builder()
///                 .instanceId(defaultInstance[range.value()].id())
///                 .networkInterfaceId(defaultEcsNetworkInterface[range.value()].id())
///                 .build());
///
///
/// }
///         var defaultTrafficMirrorFilter = new TrafficMirrorFilter("defaultTrafficMirrorFilter", TrafficMirrorFilterArgs.builder()
///             .trafficMirrorFilterName(name)
///             .trafficMirrorFilterDescription(name)
///             .build());
///
///         var defaultTrafficMirrorSession = new TrafficMirrorSession("defaultTrafficMirrorSession", TrafficMirrorSessionArgs.builder()
///             .priority(1)
///             .virtualNetworkId(10)
///             .trafficMirrorSessionDescription(name)
///             .trafficMirrorSessionName(name)
///             .trafficMirrorTargetId(defaultEcsNetworkInterfaceAttachment[0].networkInterfaceId())
///             .trafficMirrorSourceIds(defaultEcsNetworkInterfaceAttachment[1].networkInterfaceId())
///             .trafficMirrorFilterId(defaultTrafficMirrorFilter.id())
///             .trafficMirrorTargetType("NetworkInterface")
///             .build());
///
///     }
/// }
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Traffic Mirror Session can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/trafficMirrorSession:TrafficMirrorSession example <id>
/// ```
class TrafficMirrorSession extends pulumi.CustomResource {
  /// Whether to PreCheck only this request, value:
  /// - **true**: sends a check request and does not create a mirror session. Check items include whether required parameters are filled in, request format, and restrictions. If the check fails, the corresponding error is returned. If the check passes, the error code 'DryRunOperation' is returned '.
  /// - **false** (default): Sends a normal request and directly creates a mirror session after checking.
  late final pulumi.Output<bool?> dryRun;
  /// Specifies whether to enable traffic mirror sessions. default to `false`.
  late final pulumi.Output<bool?> enabled;
  /// Maximum Transmission Unit (MTU).
  late final pulumi.Output<int> packetLength;
  /// The priority of the traffic mirror session. Valid values: `1` to `32766`. A smaller value indicates a higher priority. You cannot specify the same priority for traffic mirror sessions that are created in the same region with the same Alibaba Cloud account.
  late final pulumi.Output<int> priority;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The tags of this resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the filter.
  late final pulumi.Output<String> trafficMirrorFilterId;
  /// The description of the traffic mirror session. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> trafficMirrorSessionDescription;
  /// The name of the traffic mirror session. The name must be `2` to `128` characters in length and can contain digits, underscores (_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String?> trafficMirrorSessionName;
  /// The ID of the image source instance. Currently, the Eni is supported as the image source. The default value of N is 1, that is, only one mirror source can be added to a mirror session.
  late final pulumi.Output<List<String>> trafficMirrorSourceIds;
  /// The ID of the mirror destination. You can specify only an ENI or a Server Load Balancer (SLB) instance as a mirror destination.
  late final pulumi.Output<String> trafficMirrorTargetId;
  /// The type of the mirror destination. Valid values: `NetworkInterface` or `SLB`. `NetworkInterface`: an ENI. `SLB`: an internal-facing SLB instance.
  late final pulumi.Output<String> trafficMirrorTargetType;
  /// The VXLAN network identifier (VNI) that is used to distinguish different mirrored traffic. Valid values: `0` to `16777215`. You can specify VNIs for the traffic mirror destination to identify mirrored traffic from different sessions. If you do not specify a VNI, the system randomly allocates a VNI. If you want the system to randomly allocate a VNI, ignore this parameter.
  late final pulumi.Output<int> virtualNetworkId;

  /// Creates a new [TrafficMirrorSession].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficMirrorSession]. {@macro pulumi_vpc_traffic_mirror_session_traffic_mirror_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficMirrorSession(
    String name, {
    TrafficMirrorSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/trafficMirrorSession:TrafficMirrorSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.enabled = registerOutput<bool?>('enabled');
    this.packetLength = registerOutput<int>('packetLength');
    this.priority = registerOutput<int>('priority');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trafficMirrorFilterId = registerOutput<String>('trafficMirrorFilterId');
    this.trafficMirrorSessionDescription = registerOutput<String?>('trafficMirrorSessionDescription');
    this.trafficMirrorSessionName = registerOutput<String?>('trafficMirrorSessionName');
    this.trafficMirrorSourceIds = registerOutput<List<String>>('trafficMirrorSourceIds');
    this.trafficMirrorTargetId = registerOutput<String>('trafficMirrorTargetId');
    this.trafficMirrorTargetType = registerOutput<String>('trafficMirrorTargetType');
    this.virtualNetworkId = registerOutput<int>('virtualNetworkId');
  }
}
