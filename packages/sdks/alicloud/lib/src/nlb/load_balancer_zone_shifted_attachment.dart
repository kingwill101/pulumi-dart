import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_shifted_attachment_args.dart';
import 'load_balancer_zone_shifted_attachment_state.dart';

/// Provides a Network Load Balancer (NLB) Load Balancer Zone Shifted Attachment resource.
///
/// Network load balancer shift zone.
///
/// For information about Network Load Balancer (NLB) Load Balancer Zone Shifted Attachment and how to use it, see [What is Load Balancer Zone Shifted Attachment](https://next.api.alibabacloud.com/document/Nlb/2022-04-30/StartShiftLoadBalancerZones).
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
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: "example",
///     cidrBlock: "10.0.0.0/8",
///     enableIpv6: true,
///     vpcName: "tf-exampleacc-248",
/// });
/// const vsw1 = new alicloud.vpc.Switch("vsw1", {
///     vpcId: vpc.id,
///     zoneId: "cn-beijing-l",
///     cidrBlock: "10.0.1.0/24",
///     vswitchName: "tf-exampleacc-41",
/// });
/// const vsw2 = new alicloud.vpc.Switch("vsw2", {
///     vpcId: vpc.id,
///     zoneId: "cn-beijing-k",
///     cidrBlock: "10.0.2.0/24",
///     vswitchName: "tf-exampleacc-301",
///     ipv6CidrBlockMask: 8,
/// });
/// const nlb = new alicloud.nlb.LoadBalancer("nlb", {
///     zoneMappings: [
///         {
///             vswitchId: vsw1.id,
///             zoneId: vsw1.zoneId,
///         },
///         {
///             vswitchId: vsw2.id,
///             zoneId: vsw2.zoneId,
///         },
///     ],
///     vpcId: vpc.id,
///     addressType: "Intranet",
/// });
/// const _default = new alicloud.nlb.LoadBalancerZoneShiftedAttachment("default", {
///     zoneId: vsw1.zoneId,
///     vswitchId: vsw1.id,
///     loadBalancerId: nlb.id,
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
/// vpc = alicloud.vpc.Network("vpc",
///     description="example",
///     cidr_block="10.0.0.0/8",
///     enable_ipv6=True,
///     vpc_name="tf-exampleacc-248")
/// vsw1 = alicloud.vpc.Switch("vsw1",
///     vpc_id=vpc.id,
///     zone_id="cn-beijing-l",
///     cidr_block="10.0.1.0/24",
///     vswitch_name="tf-exampleacc-41")
/// vsw2 = alicloud.vpc.Switch("vsw2",
///     vpc_id=vpc.id,
///     zone_id="cn-beijing-k",
///     cidr_block="10.0.2.0/24",
///     vswitch_name="tf-exampleacc-301",
///     ipv6_cidr_block_mask=8)
/// nlb = alicloud.nlb.LoadBalancer("nlb",
///     zone_mappings=[
///         {
///             "vswitch_id": vsw1.id,
///             "zone_id": vsw1.zone_id,
///         },
///         {
///             "vswitch_id": vsw2.id,
///             "zone_id": vsw2.zone_id,
///         },
///     ],
///     vpc_id=vpc.id,
///     address_type="Intranet")
/// default = alicloud.nlb.LoadBalancerZoneShiftedAttachment("default",
///     zone_id=vsw1.zone_id,
///     vswitch_id=vsw1.id,
///     load_balancer_id=nlb.id)
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
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = "example",
///         CidrBlock = "10.0.0.0/8",
///         EnableIpv6 = true,
///         VpcName = "tf-exampleacc-248",
///     });
///
///     var vsw1 = new AliCloud.Vpc.Switch("vsw1", new()
///     {
///         VpcId = vpc.Id,
///         ZoneId = "cn-beijing-l",
///         CidrBlock = "10.0.1.0/24",
///         VswitchName = "tf-exampleacc-41",
///     });
///
///     var vsw2 = new AliCloud.Vpc.Switch("vsw2", new()
///     {
///         VpcId = vpc.Id,
///         ZoneId = "cn-beijing-k",
///         CidrBlock = "10.0.2.0/24",
///         VswitchName = "tf-exampleacc-301",
///         Ipv6CidrBlockMask = 8,
///     });
///
///     var nlb = new AliCloud.Nlb.LoadBalancer("nlb", new()
///     {
///         ZoneMappings = new[]
///         {
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = vsw1.Id,
///                 ZoneId = vsw1.ZoneId,
///             },
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = vsw2.Id,
///                 ZoneId = vsw2.ZoneId,
///             },
///         },
///         VpcId = vpc.Id,
///         AddressType = "Intranet",
///     });
///
///     var @default = new AliCloud.Nlb.LoadBalancerZoneShiftedAttachment("default", new()
///     {
///         ZoneId = vsw1.ZoneId,
///         VswitchId = vsw1.Id,
///         LoadBalancerId = nlb.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
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
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String("example"),
/// 			CidrBlock:   pulumi.String("10.0.0.0/8"),
/// 			EnableIpv6:  pulumi.Bool(true),
/// 			VpcName:     pulumi.String("tf-exampleacc-248"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vsw1, err := vpc.NewSwitch(ctx, "vsw1", &vpc.SwitchArgs{
/// 			VpcId:       vpc.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-l"),
/// 			CidrBlock:   pulumi.String("10.0.1.0/24"),
/// 			VswitchName: pulumi.String("tf-exampleacc-41"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vsw2, err := vpc.NewSwitch(ctx, "vsw2", &vpc.SwitchArgs{
/// 			VpcId:             vpc.ID(),
/// 			ZoneId:            pulumi.String("cn-beijing-k"),
/// 			CidrBlock:         pulumi.String("10.0.2.0/24"),
/// 			VswitchName:       pulumi.String("tf-exampleacc-301"),
/// 			Ipv6CidrBlockMask: pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nlb, err := nlb.NewLoadBalancer(ctx, "nlb", &nlb.LoadBalancerArgs{
/// 			ZoneMappings: nlb.LoadBalancerZoneMappingArray{
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: vsw1.ID(),
/// 					ZoneId:    vsw1.ZoneId,
/// 				},
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: vsw2.ID(),
/// 					ZoneId:    vsw2.ZoneId,
/// 				},
/// 			},
/// 			VpcId:       vpc.ID(),
/// 			AddressType: pulumi.String("Intranet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewLoadBalancerZoneShiftedAttachment(ctx, "default", &nlb.LoadBalancerZoneShiftedAttachmentArgs{
/// 			ZoneId:         vsw1.ZoneId,
/// 			VswitchId:      vsw1.ID(),
/// 			LoadBalancerId: nlb.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nlb.LoadBalancer;
/// import com.pulumi.alicloud.nlb.LoadBalancerArgs;
/// import com.pulumi.alicloud.nlb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.nlb.LoadBalancerZoneShiftedAttachment;
/// import com.pulumi.alicloud.nlb.LoadBalancerZoneShiftedAttachmentArgs;
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
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description("example")
///             .cidrBlock("10.0.0.0/8")
///             .enableIpv6(true)
///             .vpcName("tf-exampleacc-248")
///             .build());
///
///         var vsw1 = new Switch("vsw1", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .zoneId("cn-beijing-l")
///             .cidrBlock("10.0.1.0/24")
///             .vswitchName("tf-exampleacc-41")
///             .build());
///
///         var vsw2 = new Switch("vsw2", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .zoneId("cn-beijing-k")
///             .cidrBlock("10.0.2.0/24")
///             .vswitchName("tf-exampleacc-301")
///             .ipv6CidrBlockMask(8)
///             .build());
///
///         var nlb = new LoadBalancer("nlb", LoadBalancerArgs.builder()
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(vsw1.id())
///                     .zoneId(vsw1.zoneId())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(vsw2.id())
///                     .zoneId(vsw2.zoneId())
///                     .build())
///             .vpcId(vpc.id())
///             .addressType("Intranet")
///             .build());
///
///         var default_ = new LoadBalancerZoneShiftedAttachment("default", LoadBalancerZoneShiftedAttachmentArgs.builder()
///             .zoneId(vsw1.zoneId())
///             .vswitchId(vsw1.id())
///             .loadBalancerId(nlb.id())
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
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: example
///       cidrBlock: 10.0.0.0/8
///       enableIpv6: true
///       vpcName: tf-exampleacc-248
///   vsw1:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc.id}
///       zoneId: cn-beijing-l
///       cidrBlock: 10.0.1.0/24
///       vswitchName: tf-exampleacc-41
///   vsw2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc.id}
///       zoneId: cn-beijing-k
///       cidrBlock: 10.0.2.0/24
///       vswitchName: tf-exampleacc-301
///       ipv6CidrBlockMask: '8'
///   nlb:
///     type: alicloud:nlb:LoadBalancer
///     properties:
///       zoneMappings:
///         - vswitchId: ${vsw1.id}
///           zoneId: ${vsw1.zoneId}
///         - vswitchId: ${vsw2.id}
///           zoneId: ${vsw2.zoneId}
///       vpcId: ${vpc.id}
///       addressType: Intranet
///   default:
///     type: alicloud:nlb:LoadBalancerZoneShiftedAttachment
///     properties:
///       zoneId: ${vsw1.zoneId}
///       vswitchId: ${vsw1.id}
///       loadBalancerId: ${nlb.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Network Load Balancer (NLB) Load Balancer Zone Shifted Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/loadBalancerZoneShiftedAttachment:LoadBalancerZoneShiftedAttachment example <load_balancer_id>:<zone_id>:<vswitch_id>
/// ```
class LoadBalancerZoneShiftedAttachment extends pulumi.CustomResource {
  /// Network load balancer id
  late final pulumi.Output<String> loadBalancerId;
  /// Status
  late final pulumi.Output<String> status;
  /// The list of zones and vSwitch mappings
  late final pulumi.Output<String> vswitchId;
  /// ZoneId
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LoadBalancerZoneShiftedAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerZoneShiftedAttachment]. {@macro pulumi_nlb_load_balancer_zone_shifted_attachment_load_balancer_zone_shifted_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerZoneShiftedAttachment(
    String name, {
    LoadBalancerZoneShiftedAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/loadBalancerZoneShiftedAttachment:LoadBalancerZoneShiftedAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LoadBalancerZoneShiftedAttachment] resource's state with the given [name] and [id].
  static LoadBalancerZoneShiftedAttachment get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerZoneShiftedAttachmentState? state,
  }) {
    return LoadBalancerZoneShiftedAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancerZoneShiftedAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/loadBalancerZoneShiftedAttachment:LoadBalancerZoneShiftedAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
