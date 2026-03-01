import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_args.dart';
import 'attachment_state.dart';

/// > **DEPRECATED:** This resource has been deprecated from v1.153.0 and using alicloud.slb.BackendServer instead.
///
/// Add a group of backend servers (ECS instance) to the Server Load Balancer or remove them from it.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "slb-attachment-example";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     name: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 5,
///     systemDiskCategory: "cloud_efficiency",
///     securityGroups: [defaultSecurityGroup.id],
///     instanceName: name,
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: name,
///     vswitchId: defaultSwitch.id,
///     loadBalancerSpec: "slb.s1.small",
/// });
/// const defaultAttachment = new alicloud.slb.Attachment("default", {
///     loadBalancerId: defaultApplicationLoadBalancer.id,
///     instanceIds: [defaultInstance.id],
///     weight: 90,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "slb-attachment-example"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/16",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=5,
///     system_disk_category="cloud_efficiency",
///     security_groups=[default_security_group.id],
///     instance_name=name,
///     vswitch_id=default_switch.id)
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name=name,
///     vswitch_id=default_switch.id,
///     load_balancer_spec="slb.s1.small")
/// default_attachment = alicloud.slb.Attachment("default",
///     load_balancer_id=default_application_load_balancer.id,
///     instance_ids=[default_instance.id],
///     weight=90)
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
///     var name = config.Get("name") ?? "slb-attachment-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         Name = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
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
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 5,
///         SystemDiskCategory = "cloud_efficiency",
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         InstanceName = name,
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = defaultSwitch.Id,
///         LoadBalancerSpec = "slb.s1.small",
///     });
///
///     var defaultAttachment = new AliCloud.Slb.Attachment("default", new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///         InstanceIds = new[]
///         {
///             defaultInstance.Id,
///         },
///         Weight = 90,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "slb-attachment-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
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
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			Name:      pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/16"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			ImageId:                 pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			InternetChargeType:      pulumi.String("PayByTraffic"),
/// 			InternetMaxBandwidthOut: pulumi.Int(5),
/// 			SystemDiskCategory:      pulumi.String("cloud_efficiency"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			InstanceName: pulumi.String(name),
/// 			VswitchId:    defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s1.small"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewAttachment(ctx, "default", &slb.AttachmentArgs{
/// 			LoadBalancerId: defaultApplicationLoadBalancer.ID(),
/// 			InstanceIds: pulumi.StringArray{
/// 				defaultInstance.ID(),
/// 			},
/// 			Weight: pulumi.Int(90),
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
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.Attachment;
/// import com.pulumi.alicloud.slb.AttachmentArgs;
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
///         final var name = config.get("name").orElse("slb-attachment-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
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
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(5)
///             .systemDiskCategory("cloud_efficiency")
///             .securityGroups(defaultSecurityGroup.id())
///             .instanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(defaultSwitch.id())
///             .loadBalancerSpec("slb.s1.small")
///             .build());
///
///         var defaultAttachment = new Attachment("defaultAttachment", AttachmentArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .instanceIds(defaultInstance.id())
///             .weight(90)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: slb-attachment-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       name: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/16
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: '5'
///       systemDiskCategory: cloud_efficiency
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       instanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       loadBalancerSpec: slb.s1.small
///   defaultAttachment:
///     type: alicloud:slb:Attachment
///     name: default
///     properties:
///       loadBalancerId: ${defaultApplicationLoadBalancer.id}
///       instanceIds:
///         - ${defaultInstance.id}
///       weight: 90
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Load balancer attachment can be imported using the id or load balancer id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/attachment:Attachment example lb-abc123456
/// ```
class Attachment extends pulumi.CustomResource {
  /// The backend servers of the load balancer.
  late final pulumi.Output<String> backendServers;
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  late final pulumi.Output<bool?> deleteProtectionValidation;
  /// A list of instance ids to added backend server in the SLB.
  late final pulumi.Output<List<String>> instanceIds;
  /// ID of the load balancer.
  late final pulumi.Output<String> loadBalancerId;
  /// Type of the instances. Valid value ecs, eni. Default to ecs.
  late final pulumi.Output<String?> serverType;
  /// Weight of the instances. Valid value range: [0-100]. Default to 100.
  late final pulumi.Output<int?> weight;

  /// Creates a new [Attachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Attachment]. {@macro pulumi_slb_attachment_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Attachment(
    String name, {
    AttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendServers = registerOutput<String>('backendServers');
    this.deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    this.instanceIds = registerOutput<List<String>>('instanceIds');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.serverType = registerOutput<String?>('serverType');
    this.weight = registerOutput<int?>('weight');
  }

  /// Gets an existing [Attachment] resource's state with the given [name] and [id].
  static Attachment get(
    String name,
    pulumi.Input<String> id, {
    AttachmentState? state,
  }) {
    return Attachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Attachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendServers = registerOutput<String>('backendServers');
    this.deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    this.instanceIds = registerOutput<List<String>>('instanceIds');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.serverType = registerOutput<String?>('serverType');
    this.weight = registerOutput<int?>('weight');
  }
}
