import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_zone_shifted_attachment_args.dart';
import 'load_balancer_zone_shifted_attachment_state.dart';

/// Provides a Application Load Balancer (ALB) Load Balancer Zone Shifted Attachment resource.
///
/// Application load balancer start-stop zone.
///
/// For information about Application Load Balancer (ALB) Load Balancer Zone Shifted Attachment and how to use it, see [What is Load Balancer Zone Shifted Attachment](https://www.alibabacloud.com/help/en/).
///
/// &gt; **NOTE:** Available since v1.242.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const albExampleTfVpc = new alicloud.vpc.Network("alb_example_tf_vpc", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const albExampleTfJ = new alicloud.vpc.Switch("alb_example_tf_j", {
///     vpcId: albExampleTfVpc.id,
///     zoneId: "cn-beijing-j",
///     cidrBlock: "192.168.1.0/24",
///     vswitchName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const albExampleTfK = new alicloud.vpc.Switch("alb_example_tf_k", {
///     vpcId: albExampleTfVpc.id,
///     zoneId: "cn-beijing-k",
///     cidrBlock: "192.168.2.0/24",
///     vswitchName: std.format({
///         input: "%s2",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const defaultDSY0JJ = new alicloud.vpc.Switch("defaultDSY0JJ", {
///     vpcId: albExampleTfVpc.id,
///     zoneId: "cn-beijing-f",
///     cidrBlock: "192.168.3.0/24",
///     vswitchName: std.format({
///         input: "%s3",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const default78TIYG = new alicloud.alb.LoadBalancer("default78TIYG", {
///     loadBalancerEdition: "Standard",
///     vpcId: albExampleTfVpc.id,
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     addressType: "Intranet",
///     addressAllocatedMode: "Fixed",
///     zoneMappings: [
///         {
///             vswitchId: albExampleTfJ.id,
///             zoneId: albExampleTfJ.zoneId,
///         },
///         {
///             vswitchId: albExampleTfK.id,
///             zoneId: albExampleTfK.zoneId,
///         },
///         {
///             vswitchId: defaultDSY0JJ.id,
///             zoneId: defaultDSY0JJ.zoneId,
///         },
///     ],
/// });
/// const _default = new alicloud.alb.LoadBalancerZoneShiftedAttachment("default", {
///     zoneId: defaultDSY0JJ.zoneId,
///     vswitchId: defaultDSY0JJ.id,
///     loadBalancerId: default78TIYG.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// alb_example_tf_vpc = alicloud.vpc.Network("alb_example_tf_vpc",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// alb_example_tf_j = alicloud.vpc.Switch("alb_example_tf_j",
///     vpc_id=alb_example_tf_vpc.id,
///     zone_id="cn-beijing-j",
///     cidr_block="192.168.1.0/24",
///     vswitch_name=std.format(input="%s1",
///         args=[name]).result)
/// alb_example_tf_k = alicloud.vpc.Switch("alb_example_tf_k",
///     vpc_id=alb_example_tf_vpc.id,
///     zone_id="cn-beijing-k",
///     cidr_block="192.168.2.0/24",
///     vswitch_name=std.format(input="%s2",
///         args=[name]).result)
/// default_dsy0_jj = alicloud.vpc.Switch("defaultDSY0JJ",
///     vpc_id=alb_example_tf_vpc.id,
///     zone_id="cn-beijing-f",
///     cidr_block="192.168.3.0/24",
///     vswitch_name=std.format(input="%s3",
///         args=[name]).result)
/// default78_tiyg = alicloud.alb.LoadBalancer("default78TIYG",
///     load_balancer_edition="Standard",
///     vpc_id=alb_example_tf_vpc.id,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     address_type="Intranet",
///     address_allocated_mode="Fixed",
///     zone_mappings=[
///         {
///             "vswitch_id": alb_example_tf_j.id,
///             "zone_id": alb_example_tf_j.zone_id,
///         },
///         {
///             "vswitch_id": alb_example_tf_k.id,
///             "zone_id": alb_example_tf_k.zone_id,
///         },
///         {
///             "vswitch_id": default_dsy0_jj.id,
///             "zone_id": default_dsy0_jj.zone_id,
///         },
///     ])
/// default = alicloud.alb.LoadBalancerZoneShiftedAttachment("default",
///     zone_id=default_dsy0_jj.zone_id,
///     vswitch_id=default_dsy0_jj.id,
///     load_balancer_id=default78_tiyg.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var albExampleTfVpc = new AliCloud.Vpc.Network("alb_example_tf_vpc", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var albExampleTfJ = new AliCloud.Vpc.Switch("alb_example_tf_j", new()
///     {
///         VpcId = albExampleTfVpc.Id,
///         ZoneId = "cn-beijing-j",
///         CidrBlock = "192.168.1.0/24",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var albExampleTfK = new AliCloud.Vpc.Switch("alb_example_tf_k", new()
///     {
///         VpcId = albExampleTfVpc.Id,
///         ZoneId = "cn-beijing-k",
///         CidrBlock = "192.168.2.0/24",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s2",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultDSY0JJ = new AliCloud.Vpc.Switch("defaultDSY0JJ", new()
///     {
///         VpcId = albExampleTfVpc.Id,
///         ZoneId = "cn-beijing-f",
///         CidrBlock = "192.168.3.0/24",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s3",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var default78TIYG = new AliCloud.Alb.LoadBalancer("default78TIYG", new()
///     {
///         LoadBalancerEdition = "Standard",
///         VpcId = albExampleTfVpc.Id,
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
///                 VswitchId = albExampleTfJ.Id,
///                 ZoneId = albExampleTfJ.ZoneId,
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = albExampleTfK.Id,
///                 ZoneId = albExampleTfK.ZoneId,
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultDSY0JJ.Id,
///                 ZoneId = defaultDSY0JJ.ZoneId,
///             },
///         },
///     });
///
///     var @default = new AliCloud.Alb.LoadBalancerZoneShiftedAttachment("default", new()
///     {
///         ZoneId = defaultDSY0JJ.ZoneId,
///         VswitchId = defaultDSY0JJ.Id,
///         LoadBalancerId = default78TIYG.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		albExampleTfVpc, err := vpc.NewNetwork(ctx, "alb_example_tf_vpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		albExampleTfJ, err := vpc.NewSwitch(ctx, "alb_example_tf_j", &vpc.SwitchArgs{
/// 			VpcId:       albExampleTfVpc.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-j"),
/// 			CidrBlock:   pulumi.String("192.168.1.0/24"),
/// 			VswitchName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		albExampleTfK, err := vpc.NewSwitch(ctx, "alb_example_tf_k", &vpc.SwitchArgs{
/// 			VpcId:       albExampleTfVpc.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-k"),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VswitchName: pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s3",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDSY0JJ, err := vpc.NewSwitch(ctx, "defaultDSY0JJ", &vpc.SwitchArgs{
/// 			VpcId:       albExampleTfVpc.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-f"),
/// 			CidrBlock:   pulumi.String("192.168.3.0/24"),
/// 			VswitchName: pulumi.String(invokeFormat2.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default78TIYG, err := alb.NewLoadBalancer(ctx, "default78TIYG", &alb.LoadBalancerArgs{
/// 			LoadBalancerEdition: pulumi.String("Standard"),
/// 			VpcId:               albExampleTfVpc.ID(),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			AddressType:          pulumi.String("Intranet"),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: albExampleTfJ.ID(),
/// 					ZoneId:    albExampleTfJ.ZoneId,
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: albExampleTfK.ID(),
/// 					ZoneId:    albExampleTfK.ZoneId,
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultDSY0JJ.ID(),
/// 					ZoneId:    defaultDSY0JJ.ZoneId,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewLoadBalancerZoneShiftedAttachment(ctx, "default", &alb.LoadBalancerZoneShiftedAttachmentArgs{
/// 			ZoneId:         defaultDSY0JJ.ZoneId,
/// 			VswitchId:      defaultDSY0JJ.ID(),
/// 			LoadBalancerId: default78TIYG.ID(),
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.LoadBalancerZoneShiftedAttachment;
/// import com.pulumi.alicloud.alb.LoadBalancerZoneShiftedAttachmentArgs;
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
///         var albExampleTfVpc = new Network("albExampleTfVpc", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var albExampleTfJ = new Switch("albExampleTfJ", SwitchArgs.builder()
///             .vpcId(albExampleTfVpc.id())
///             .zoneId("cn-beijing-j")
///             .cidrBlock("192.168.1.0/24")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var albExampleTfK = new Switch("albExampleTfK", SwitchArgs.builder()
///             .vpcId(albExampleTfVpc.id())
///             .zoneId("cn-beijing-k")
///             .cidrBlock("192.168.2.0/24")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var defaultDSY0JJ = new Switch("defaultDSY0JJ", SwitchArgs.builder()
///             .vpcId(albExampleTfVpc.id())
///             .zoneId("cn-beijing-f")
///             .cidrBlock("192.168.3.0/24")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s3")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var default78TIYG = new LoadBalancer("default78TIYG", LoadBalancerArgs.builder()
///             .loadBalancerEdition("Standard")
///             .vpcId(albExampleTfVpc.id())
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .addressType("Intranet")
///             .addressAllocatedMode("Fixed")
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(albExampleTfJ.id())
///                     .zoneId(albExampleTfJ.zoneId())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(albExampleTfK.id())
///                     .zoneId(albExampleTfK.zoneId())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultDSY0JJ.id())
///                     .zoneId(defaultDSY0JJ.zoneId())
///                     .build())
///             .build());
///
///         var default_ = new LoadBalancerZoneShiftedAttachment("default", LoadBalancerZoneShiftedAttachmentArgs.builder()
///             .zoneId(defaultDSY0JJ.zoneId())
///             .vswitchId(defaultDSY0JJ.id())
///             .loadBalancerId(default78TIYG.id())
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
///   albExampleTfVpc:
///     type: alicloud:vpc:Network
///     name: alb_example_tf_vpc
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   albExampleTfJ:
///     type: alicloud:vpc:Switch
///     name: alb_example_tf_j
///     properties:
///       vpcId: ${albExampleTfVpc.id}
///       zoneId: cn-beijing-j
///       cidrBlock: 192.168.1.0/24
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///   albExampleTfK:
///     type: alicloud:vpc:Switch
///     name: alb_example_tf_k
///     properties:
///       vpcId: ${albExampleTfVpc.id}
///       zoneId: cn-beijing-k
///       cidrBlock: 192.168.2.0/24
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2'
///             args:
///               - ${name}
///           return: result
///   defaultDSY0JJ:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${albExampleTfVpc.id}
///       zoneId: cn-beijing-f
///       cidrBlock: 192.168.3.0/24
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s3'
///             args:
///               - ${name}
///           return: result
///   default78TIYG:
///     type: alicloud:alb:LoadBalancer
///     properties:
///       loadBalancerEdition: Standard
///       vpcId: ${albExampleTfVpc.id}
///       loadBalancerBillingConfig:
///         payType: PayAsYouGo
///       addressType: Intranet
///       addressAllocatedMode: Fixed
///       zoneMappings:
///         - vswitchId: ${albExampleTfJ.id}
///           zoneId: ${albExampleTfJ.zoneId}
///         - vswitchId: ${albExampleTfK.id}
///           zoneId: ${albExampleTfK.zoneId}
///         - vswitchId: ${defaultDSY0JJ.id}
///           zoneId: ${defaultDSY0JJ.zoneId}
///   default:
///     type: alicloud:alb:LoadBalancerZoneShiftedAttachment
///     properties:
///       zoneId: ${defaultDSY0JJ.zoneId}
///       vswitchId: ${defaultDSY0JJ.id}
///       loadBalancerId: ${default78TIYG.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Load Balancer (ALB) Load Balancer Zone Shifted Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/loadBalancerZoneShiftedAttachment:LoadBalancerZoneShiftedAttachment example <load_balancer_id>:<vswitch_id>:<zone_id>
/// ```
class LoadBalancerZoneShiftedAttachment extends pulumi.CustomResource {
  /// The ID of the load balancing instance.
  late final pulumi.Output<String> loadBalancerId;

  /// Availability zone status. Value:
  late final pulumi.Output<String> status;

  /// The VSwitch corresponding to the zone. By default, each zone uses one VSwitch and one subnet.
  late final pulumi.Output<String> vswitchId;

  /// The ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LoadBalancerZoneShiftedAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerZoneShiftedAttachment]. {@macro pulumi_alb_load_balancer_zone_shifted_attachment_load_balancer_zone_shifted_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerZoneShiftedAttachment(
    String name, {
    LoadBalancerZoneShiftedAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/loadBalancerZoneShiftedAttachment:LoadBalancerZoneShiftedAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    loadBalancerId = registerOutput<String>('loadBalancerId');
    status = registerOutput<String>('status');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
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
         'alicloud:alb/loadBalancerZoneShiftedAttachment:LoadBalancerZoneShiftedAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    loadBalancerId = registerOutput<String>('loadBalancerId');
    status = registerOutput<String>('status');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
