import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';

/// Provides a Data Works Network resource.
///
/// Resource Group Network.
///
/// For information about Data Works Network and how to use it, see [What is Network](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createnetwork).
///
/// > **NOTE:** Available since v1.241.0.
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
/// const default5Bia4h = new alicloud.vpc.Network("default5Bia4h", {
///     description: name,
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultss7s7F = new alicloud.vpc.Switch("defaultss7s7F", {
///     description: name,
///     vpcId: default5Bia4h.id,
///     zoneId: "cn-beijing-g",
///     vswitchName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     cidrBlock: "10.0.0.0/24",
/// });
/// const defaultVJvKvl = new alicloud.dataworks.DwResourceGroup("defaultVJvKvl", {
///     paymentDurationUnit: "Month",
///     paymentType: "PostPaid",
///     specification: 500,
///     defaultVswitchId: defaultss7s7F.id,
///     remark: name,
///     resourceGroupName: "network_openapi_example01",
///     defaultVpcId: default5Bia4h.id,
/// });
/// const defaulte4zhaL = new alicloud.vpc.Network("defaulte4zhaL", {
///     description: name,
///     vpcName: std.format({
///         input: "%s3",
///         args: [name],
///     }).then(invoke => invoke.result),
///     cidrBlock: "172.16.0.0/12",
/// });
/// const default675v38 = new alicloud.vpc.Switch("default675v38", {
///     description: name,
///     vpcId: defaulte4zhaL.id,
///     zoneId: "cn-beijing-g",
///     vswitchName: std.format({
///         input: "%s4",
///         args: [name],
///     }).then(invoke => invoke.result),
///     cidrBlock: "172.16.0.0/24",
/// });
/// const _default = new alicloud.dataworks.Network("default", {
///     vpcId: defaulte4zhaL.id,
///     vswitchId: default675v38.id,
///     dwResourceGroupId: defaultVJvKvl.id,
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
/// default5_bia4h = alicloud.vpc.Network("default5Bia4h",
///     description=name,
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// defaultss7s7_f = alicloud.vpc.Switch("defaultss7s7F",
///     description=name,
///     vpc_id=default5_bia4h.id,
///     zone_id="cn-beijing-g",
///     vswitch_name=std.format(input="%s1",
///         args=[name]).result,
///     cidr_block="10.0.0.0/24")
/// default_v_jv_kvl = alicloud.dataworks.DwResourceGroup("defaultVJvKvl",
///     payment_duration_unit="Month",
///     payment_type="PostPaid",
///     specification=500,
///     default_vswitch_id=defaultss7s7_f.id,
///     remark=name,
///     resource_group_name="network_openapi_example01",
///     default_vpc_id=default5_bia4h.id)
/// defaulte4zha_l = alicloud.vpc.Network("defaulte4zhaL",
///     description=name,
///     vpc_name=std.format(input="%s3",
///         args=[name]).result,
///     cidr_block="172.16.0.0/12")
/// default675v38 = alicloud.vpc.Switch("default675v38",
///     description=name,
///     vpc_id=defaulte4zha_l.id,
///     zone_id="cn-beijing-g",
///     vswitch_name=std.format(input="%s4",
///         args=[name]).result,
///     cidr_block="172.16.0.0/24")
/// default = alicloud.dataworks.Network("default",
///     vpc_id=defaulte4zha_l.id,
///     vswitch_id=default675v38.id,
///     dw_resource_group_id=default_v_jv_kvl.id)
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
///     var default5Bia4h = new AliCloud.Vpc.Network("default5Bia4h", new()
///     {
///         Description = name,
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultss7s7F = new AliCloud.Vpc.Switch("defaultss7s7F", new()
///     {
///         Description = name,
///         VpcId = default5Bia4h.Id,
///         ZoneId = "cn-beijing-g",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         CidrBlock = "10.0.0.0/24",
///     });
///
///     var defaultVJvKvl = new AliCloud.DataWorks.DwResourceGroup("defaultVJvKvl", new()
///     {
///         PaymentDurationUnit = "Month",
///         PaymentType = "PostPaid",
///         Specification = 500,
///         DefaultVswitchId = defaultss7s7F.Id,
///         Remark = name,
///         ResourceGroupName = "network_openapi_example01",
///         DefaultVpcId = default5Bia4h.Id,
///     });
///
///     var defaulte4zhaL = new AliCloud.Vpc.Network("defaulte4zhaL", new()
///     {
///         Description = name,
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s3",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var default675v38 = new AliCloud.Vpc.Switch("default675v38", new()
///     {
///         Description = name,
///         VpcId = defaulte4zhaL.Id,
///         ZoneId = "cn-beijing-g",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s4",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         CidrBlock = "172.16.0.0/24",
///     });
///
///     var @default = new AliCloud.DataWorks.Network("default", new()
///     {
///         VpcId = defaulte4zhaL.Id,
///         VswitchId = default675v38.Id,
///         DwResourceGroupId = defaultVJvKvl.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
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
/// 		default5Bia4h, err := vpc.NewNetwork(ctx, "default5Bia4h", &vpc.NetworkArgs{
/// 			Description: pulumi.String(name),
/// 			VpcName:     pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.0.0.0/8"),
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
/// 		defaultss7s7F, err := vpc.NewSwitch(ctx, "defaultss7s7F", &vpc.SwitchArgs{
/// 			Description: pulumi.String(name),
/// 			VpcId:       default5Bia4h.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-g"),
/// 			VswitchName: pulumi.String(invokeFormat.Result),
/// 			CidrBlock:   pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVJvKvl, err := dataworks.NewDwResourceGroup(ctx, "defaultVJvKvl", &dataworks.DwResourceGroupArgs{
/// 			PaymentDurationUnit: pulumi.String("Month"),
/// 			PaymentType:         pulumi.String("PostPaid"),
/// 			Specification:       pulumi.Int(500),
/// 			DefaultVswitchId:    defaultss7s7F.ID(),
/// 			Remark:              pulumi.String(name),
/// 			ResourceGroupName:   pulumi.String("network_openapi_example01"),
/// 			DefaultVpcId:        default5Bia4h.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s3",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulte4zhaL, err := vpc.NewNetwork(ctx, "defaulte4zhaL", &vpc.NetworkArgs{
/// 			Description: pulumi.String(name),
/// 			VpcName:     pulumi.String(invokeFormat1.Result),
/// 			CidrBlock:   pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s4",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default675v38, err := vpc.NewSwitch(ctx, "default675v38", &vpc.SwitchArgs{
/// 			Description: pulumi.String(name),
/// 			VpcId:       defaulte4zhaL.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-g"),
/// 			VswitchName: pulumi.String(invokeFormat2.Result),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewNetwork(ctx, "default", &dataworks.NetworkArgs{
/// 			VpcId:             defaulte4zhaL.ID(),
/// 			VswitchId:         default675v38.ID(),
/// 			DwResourceGroupId: defaultVJvKvl.ID(),
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
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.dataworks.DwResourceGroup;
/// import com.pulumi.alicloud.dataworks.DwResourceGroupArgs;
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
///         var default5Bia4h = new com.pulumi.alicloud.vpc.Network("default5Bia4h", com.pulumi.alicloud.vpc.NetworkArgs.builder()
///             .description(name)
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultss7s7F = new Switch("defaultss7s7F", SwitchArgs.builder()
///             .description(name)
///             .vpcId(default5Bia4h.id())
///             .zoneId("cn-beijing-g")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .cidrBlock("10.0.0.0/24")
///             .build());
///
///         var defaultVJvKvl = new DwResourceGroup("defaultVJvKvl", DwResourceGroupArgs.builder()
///             .paymentDurationUnit("Month")
///             .paymentType("PostPaid")
///             .specification(500)
///             .defaultVswitchId(defaultss7s7F.id())
///             .remark(name)
///             .resourceGroupName("network_openapi_example01")
///             .defaultVpcId(default5Bia4h.id())
///             .build());
///
///         var defaulte4zhaL = new com.pulumi.alicloud.vpc.Network("defaulte4zhaL", com.pulumi.alicloud.vpc.NetworkArgs.builder()
///             .description(name)
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s3")
///                 .args(name)
///                 .build()).result())
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var default675v38 = new Switch("default675v38", SwitchArgs.builder()
///             .description(name)
///             .vpcId(defaulte4zhaL.id())
///             .zoneId("cn-beijing-g")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s4")
///                 .args(name)
///                 .build()).result())
///             .cidrBlock("172.16.0.0/24")
///             .build());
///
///         var default_ = new com.pulumi.alicloud.dataworks.Network("default", com.pulumi.alicloud.dataworks.NetworkArgs.builder()
///             .vpcId(defaulte4zhaL.id())
///             .vswitchId(default675v38.id())
///             .dwResourceGroupId(defaultVJvKvl.id())
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
///   default5Bia4h:
///     type: alicloud:vpc:Network
///     properties:
///       description: ${name}
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   defaultss7s7F:
///     type: alicloud:vpc:Switch
///     properties:
///       description: ${name}
///       vpcId: ${default5Bia4h.id}
///       zoneId: cn-beijing-g
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       cidrBlock: 10.0.0.0/24
///   defaultVJvKvl:
///     type: alicloud:dataworks:DwResourceGroup
///     properties:
///       paymentDurationUnit: Month
///       paymentType: PostPaid
///       specification: '500'
///       defaultVswitchId: ${defaultss7s7F.id}
///       remark: ${name}
///       resourceGroupName: network_openapi_example01
///       defaultVpcId: ${default5Bia4h.id}
///   defaulte4zhaL:
///     type: alicloud:vpc:Network
///     properties:
///       description: ${name}
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s3'
///             args:
///               - ${name}
///           return: result
///       cidrBlock: 172.16.0.0/12
///   default675v38:
///     type: alicloud:vpc:Switch
///     properties:
///       description: ${name}
///       vpcId: ${defaulte4zhaL.id}
///       zoneId: cn-beijing-g
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s4'
///             args:
///               - ${name}
///           return: result
///       cidrBlock: 172.16.0.0/24
///   default:
///     type: alicloud:dataworks:Network
///     properties:
///       vpcId: ${defaulte4zhaL.id}
///       vswitchId: ${default675v38.id}
///       dwResourceGroupId: ${defaultVJvKvl.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Network can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/network:Network example <id>
/// ```
class Network extends pulumi.CustomResource {
  /// Time when the network resource was created
  late final pulumi.Output<int> createTime;
  /// The ID of the resource group.
  late final pulumi.Output<String> dwResourceGroupId;
  /// Network Resource Status
  late final pulumi.Output<String> status;
  /// Virtual Private Cloud ID of network resources
  late final pulumi.Output<String> vpcId;
  /// The vSwitch ID of the network resource.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_dataworks_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<int>('createTime');
    this.dwResourceGroupId = registerOutput<String>('dwResourceGroupId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
