import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_security_group_attachment_args.dart';
import 'load_balancer_security_group_attachment_state.dart';

/// Provides a Application Load Balancer (ALB) Load Balancer Security Group Attachment resource.
///
/// Attachment between Application Load Balancer and Security Group.
///
/// For information about Application Load Balancer (ALB) Load Balancer Security Group Attachment and how to use it, see [What is Load Balancer Security Group Attachment](https://next.api.alibabacloud.com/document/Alb/2020-06-16/LoadBalancerJoinSecurityGroup).
///
/// > **NOTE:** Available since v1.226.0.
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
///     availableResourceCreation: "VSwitch",
/// });
/// const createVpc = new alicloud.vpc.Network("create_vpc", {
///     cidrBlock: "192.168.0.0/16",
///     vpcName: name,
/// });
/// const createVsw1 = new alicloud.vpc.Switch("create_vsw_1", {
///     vpcId: createVpc.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "192.168.1.0/24",
///     vswitchName: name,
/// });
/// const createVsw2 = new alicloud.vpc.Switch("create_vsw_2", {
///     vpcId: createVpc.id,
///     zoneId: _default.then(_default => _default.zones?.[1]?.id),
///     cidrBlock: "192.168.2.0/24",
///     vswitchName: name,
/// });
/// const createSecurityGroup = new alicloud.ecs.SecurityGroup("create_security_group", {
///     name: name,
///     vpcId: createVpc.id,
/// });
/// const createAlb = new alicloud.alb.LoadBalancer("create_alb", {
///     loadBalancerName: name,
///     loadBalancerEdition: "Standard",
///     vpcId: createVpc.id,
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     addressType: "Intranet",
///     addressAllocatedMode: "Fixed",
///     zoneMappings: [
///         {
///             vswitchId: createVsw2.id,
///             zoneId: createVsw2.zoneId,
///         },
///         {
///             vswitchId: createVsw1.id,
///             zoneId: createVsw1.zoneId,
///         },
///     ],
/// });
/// const defaultLoadBalancerSecurityGroupAttachment = new alicloud.alb.LoadBalancerSecurityGroupAttachment("default", {
///     securityGroupId: createSecurityGroup.id,
///     loadBalancerId: createAlb.id,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// create_vpc = alicloud.vpc.Network("create_vpc",
///     cidr_block="192.168.0.0/16",
///     vpc_name=name)
/// create_vsw1 = alicloud.vpc.Switch("create_vsw_1",
///     vpc_id=create_vpc.id,
///     zone_id=default.zones[0].id,
///     cidr_block="192.168.1.0/24",
///     vswitch_name=name)
/// create_vsw2 = alicloud.vpc.Switch("create_vsw_2",
///     vpc_id=create_vpc.id,
///     zone_id=default.zones[1].id,
///     cidr_block="192.168.2.0/24",
///     vswitch_name=name)
/// create_security_group = alicloud.ecs.SecurityGroup("create_security_group",
///     name=name,
///     vpc_id=create_vpc.id)
/// create_alb = alicloud.alb.LoadBalancer("create_alb",
///     load_balancer_name=name,
///     load_balancer_edition="Standard",
///     vpc_id=create_vpc.id,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     address_type="Intranet",
///     address_allocated_mode="Fixed",
///     zone_mappings=[
///         {
///             "vswitch_id": create_vsw2.id,
///             "zone_id": create_vsw2.zone_id,
///         },
///         {
///             "vswitch_id": create_vsw1.id,
///             "zone_id": create_vsw1.zone_id,
///         },
///     ])
/// default_load_balancer_security_group_attachment = alicloud.alb.LoadBalancerSecurityGroupAttachment("default",
///     security_group_id=create_security_group.id,
///     load_balancer_id=create_alb.id)
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
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var createVpc = new AliCloud.Vpc.Network("create_vpc", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///         VpcName = name,
///     });
///
///     var createVsw1 = new AliCloud.Vpc.Switch("create_vsw_1", new()
///     {
///         VpcId = createVpc.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "192.168.1.0/24",
///         VswitchName = name,
///     });
///
///     var createVsw2 = new AliCloud.Vpc.Switch("create_vsw_2", new()
///     {
///         VpcId = createVpc.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///         CidrBlock = "192.168.2.0/24",
///         VswitchName = name,
///     });
///
///     var createSecurityGroup = new AliCloud.Ecs.SecurityGroup("create_security_group", new()
///     {
///         Name = name,
///         VpcId = createVpc.Id,
///     });
///
///     var createAlb = new AliCloud.Alb.LoadBalancer("create_alb", new()
///     {
///         LoadBalancerName = name,
///         LoadBalancerEdition = "Standard",
///         VpcId = createVpc.Id,
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         AddressType = "Intranet",
///         AddressAllocatedMode = "Fixed",
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = createVsw2.Id,
///                 ZoneId = createVsw2.ZoneId,
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = createVsw1.Id,
///                 ZoneId = createVsw1.ZoneId,
///             },
///         },
///     });
///
///     var defaultLoadBalancerSecurityGroupAttachment = new AliCloud.Alb.LoadBalancerSecurityGroupAttachment("default", new()
///     {
///         SecurityGroupId = createSecurityGroup.Id,
///         LoadBalancerId = createAlb.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVpc, err := vpc.NewNetwork(ctx, "create_vpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVsw1, err := vpc.NewSwitch(ctx, "create_vsw_1", &vpc.SwitchArgs{
/// 			VpcId:       createVpc.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock:   pulumi.String("192.168.1.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVsw2, err := vpc.NewSwitch(ctx, "create_vsw_2", &vpc.SwitchArgs{
/// 			VpcId:       createVpc.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[1].Id),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createSecurityGroup, err := ecs.NewSecurityGroup(ctx, "create_security_group", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: createVpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createAlb, err := alb.NewLoadBalancer(ctx, "create_alb", &alb.LoadBalancerArgs{
/// 			LoadBalancerName:    pulumi.String(name),
/// 			LoadBalancerEdition: pulumi.String("Standard"),
/// 			VpcId:               createVpc.ID(),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			AddressType:          pulumi.String("Intranet"),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: createVsw2.ID(),
/// 					ZoneId:    createVsw2.ZoneId,
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: createVsw1.ID(),
/// 					ZoneId:    createVsw1.ZoneId,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewLoadBalancerSecurityGroupAttachment(ctx, "default", &alb.LoadBalancerSecurityGroupAttachmentArgs{
/// 			SecurityGroupId: createSecurityGroup.ID(),
/// 			LoadBalancerId:  createAlb.ID(),
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
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.LoadBalancerSecurityGroupAttachment;
/// import com.pulumi.alicloud.alb.LoadBalancerSecurityGroupAttachmentArgs;
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
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var createVpc = new Network("createVpc", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(name)
///             .build());
///
///         var createVsw1 = new Switch("createVsw1", SwitchArgs.builder()
///             .vpcId(createVpc.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("192.168.1.0/24")
///             .vswitchName(name)
///             .build());
///
///         var createVsw2 = new Switch("createVsw2", SwitchArgs.builder()
///             .vpcId(createVpc.id())
///             .zoneId(default_.zones()[1].id())
///             .cidrBlock("192.168.2.0/24")
///             .vswitchName(name)
///             .build());
///
///         var createSecurityGroup = new SecurityGroup("createSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(createVpc.id())
///             .build());
///
///         var createAlb = new LoadBalancer("createAlb", LoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .loadBalancerEdition("Standard")
///             .vpcId(createVpc.id())
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .addressType("Intranet")
///             .addressAllocatedMode("Fixed")
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(createVsw2.id())
///                     .zoneId(createVsw2.zoneId())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(createVsw1.id())
///                     .zoneId(createVsw1.zoneId())
///                     .build())
///             .build());
///
///         var defaultLoadBalancerSecurityGroupAttachment = new LoadBalancerSecurityGroupAttachment("defaultLoadBalancerSecurityGroupAttachment", LoadBalancerSecurityGroupAttachmentArgs.builder()
///             .securityGroupId(createSecurityGroup.id())
///             .loadBalancerId(createAlb.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   createVpc:
///     type: alicloud:vpc:Network
///     name: create_vpc
///     properties:
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}
///   createVsw1:
///     type: alicloud:vpc:Switch
///     name: create_vsw_1
///     properties:
///       vpcId: ${createVpc.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 192.168.1.0/24
///       vswitchName: ${name}
///   createVsw2:
///     type: alicloud:vpc:Switch
///     name: create_vsw_2
///     properties:
///       vpcId: ${createVpc.id}
///       zoneId: ${default.zones[1].id}
///       cidrBlock: 192.168.2.0/24
///       vswitchName: ${name}
///   createSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: create_security_group
///     properties:
///       name: ${name}
///       vpcId: ${createVpc.id}
///   createAlb:
///     type: alicloud:alb:LoadBalancer
///     name: create_alb
///     properties:
///       loadBalancerName: ${name}
///       loadBalancerEdition: Standard
///       vpcId: ${createVpc.id}
///       loadBalancerBillingConfig:
///         payType: PayAsYouGo
///       addressType: Intranet
///       addressAllocatedMode: Fixed
///       zoneMappings:
///         - vswitchId: ${createVsw2.id}
///           zoneId: ${createVsw2.zoneId}
///         - vswitchId: ${createVsw1.id}
///           zoneId: ${createVsw1.zoneId}
///   defaultLoadBalancerSecurityGroupAttachment:
///     type: alicloud:alb:LoadBalancerSecurityGroupAttachment
///     name: default
///     properties:
///       securityGroupId: ${createSecurityGroup.id}
///       loadBalancerId: ${createAlb.id}
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
/// Application Load Balancer (ALB) Load Balancer Security Group Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/loadBalancerSecurityGroupAttachment:LoadBalancerSecurityGroupAttachment example <load_balancer_id>:<security_group_id>
/// ```
class LoadBalancerSecurityGroupAttachment extends pulumi.CustomResource {
  /// Whether to PreCheck only this request. Value:
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the Application Load Balancer.
  late final pulumi.Output<String> loadBalancerId;
  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;

  /// Creates a new [LoadBalancerSecurityGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerSecurityGroupAttachment]. {@macro pulumi_alb_load_balancer_security_group_attachment_load_balancer_security_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerSecurityGroupAttachment(
    String name, {
    LoadBalancerSecurityGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/loadBalancerSecurityGroupAttachment:LoadBalancerSecurityGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.securityGroupId = registerOutput<String>('securityGroupId');
  }

  /// Gets an existing [LoadBalancerSecurityGroupAttachment] resource's state with the given [name] and [id].
  static LoadBalancerSecurityGroupAttachment get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerSecurityGroupAttachmentState? state,
  }) {
    return LoadBalancerSecurityGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancerSecurityGroupAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/loadBalancerSecurityGroupAttachment:LoadBalancerSecurityGroupAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.securityGroupId = registerOutput<String>('securityGroupId');
  }
}
