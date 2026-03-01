import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_slb_list.dart';
import 'gateway_state.dart';

/// Provides a Microservice Engine (MSE) Gateway resource.
///
/// For information about Microservice Engine (MSE) Gateway and how to use it, see [What is Gateway](https://help.aliyun.com/document_detail/347638.html).
///
/// > **NOTE:** Available since v1.157.0.
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
/// const example = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const exampleSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleSwitch.push(new alicloud.vpc.Switch(`example-${range.value}`, {
///         vpcId: exampleNetwork.id,
///         cidrBlock: std.format({
///             input: "172.16.%d.0/21",
///             args: [(range.value + 1) * 16],
///         }).then(invoke => invoke.result),
///         zoneId: example.then(example => example.zones[range.value].id),
///         vswitchName: std.format({
///             input: "terraform_example_%d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const exampleGateway = new alicloud.mse.Gateway("example", {
///     gatewayName: "terraform-example",
///     replica: 2,
///     spec: "MSE_GTW_2_4_200_c",
///     vswitchId: exampleSwitch[0].id,
///     backupVswitchId: exampleSwitch[1].id,
///     vpcId: exampleNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// example = alicloud.get_zones(available_resource_creation="VSwitch")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.16.0.0/16")
/// example_switch = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_switch.append(alicloud.vpc.Switch(f"example-{range['value']}",
///         vpc_id=example_network.id,
///         cidr_block=std.format(input="172.16.%d.0/21",
///             args=[(range["value"] + 1) * 16]).result,
///         zone_id=example.zones[range["value"]].id,
///         vswitch_name=std.format(input="terraform_example_%d",
///             args=[range["value"] + 1]).result))
/// example_gateway = alicloud.mse.Gateway("example",
///     gateway_name="terraform-example",
///     replica=2,
///     spec="MSE_GTW_2_4_200_c",
///     vswitch_id=example_switch[0].id,
///     backup_vswitch_id=example_switch[1].id,
///     vpc_id=example_network.id)
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
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var exampleSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleSwitch.Add(new AliCloud.Vpc.Switch($"example-{range.Value}", new()
///         {
///             VpcId = exampleNetwork.Id,
///             CidrBlock = Std.Format.Invoke(new()
///             {
///                 Input = "172.16.%d.0/21",
///                 Args = new[]
///                 {
///                     (range.Value + 1) * 16,
///                 },
///             }).Apply(invoke => invoke.Result),
///             ZoneId = example.Apply(getZonesResult => getZonesResult.Zones)[range.Value].Id,
///             VswitchName = Std.Format.Invoke(new()
///             {
///                 Input = "terraform_example_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var exampleGateway = new AliCloud.Mse.Gateway("example", new()
///     {
///         GatewayName = "terraform-example",
///         Replica = 2,
///         Spec = "MSE_GTW_2_4_200_c",
///         VswitchId = exampleSwitch[0].Id,
///         BackupVswitchId = exampleSwitch[1].Id,
///         VpcId = exampleNetwork.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mse"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "172.16.%d.0/21",
/// 			Args: []float64{
/// 				(val0 + 1) * 16,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "terraform_example_%d",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleSwitch []*vpc.Switch
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("example-%v", key0), &vpc.SwitchArgs{
/// 				VpcId:       exampleNetwork.ID(),
/// 				CidrBlock:   pulumi.String(invokeFormat.Result),
/// 				ZoneId:      example.Zones[val0].Id,
/// 				VswitchName: pulumi.String(invokeFormat1.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleSwitch = append(exampleSwitch, __res)
/// 		}
/// 		_, err = mse.NewGateway(ctx, "example", &mse.GatewayArgs{
/// 			GatewayName:     pulumi.String("terraform-example"),
/// 			Replica:         pulumi.Int(2),
/// 			Spec:            pulumi.String("MSE_GTW_2_4_200_c"),
/// 			VswitchId:       exampleSwitch[0].ID(),
/// 			BackupVswitchId: exampleSwitch[1].ID(),
/// 			VpcId:           exampleNetwork.ID(),
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.mse.Gateway;
/// import com.pulumi.alicloud.mse.GatewayArgs;
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
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("exampleSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(exampleNetwork.id())
///                 .cidrBlock(StdFunctions.format(FormatArgs.builder()
///                     .input("172.16.%d.0/21")
///                     .args((range.value() + 1) * 16)
///                     .build()).result())
///                 .zoneId(example.zones()[range.value()].id())
///                 .vswitchName(StdFunctions.format(FormatArgs.builder()
///                     .input("terraform_example_%d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         var exampleGateway = new Gateway("exampleGateway", GatewayArgs.builder()
///             .gatewayName("terraform-example")
///             .replica(2)
///             .spec("MSE_GTW_2_4_200_c")
///             .vswitchId(exampleSwitch[0].id())
///             .backupVswitchId(exampleSwitch[1].id())
///             .vpcId(exampleNetwork.id())
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
/// Microservice Engine (MSE) Gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mse/gateway:Gateway example <id>
/// ```
class Gateway extends pulumi.CustomResource {
  /// The backup vswitch id.
  late final pulumi.Output<String?> backupVswitchId;
  /// Whether to delete the SLB purchased on behalf of the gateway at the same time.
  late final pulumi.Output<bool?> deleteSlb;
  /// Whether the enterprise security group type.
  late final pulumi.Output<bool?> enterpriseSecurityGroup;
  /// The name of the Gateway .
  late final pulumi.Output<String?> gatewayName;
  /// Public network SLB specifications.
  late final pulumi.Output<String?> internetSlbSpec;
  /// Number of Gateway Nodes.
  late final pulumi.Output<int> replica;
  /// A list of gateway Slb.
  late final pulumi.Output<List<GatewaySlbList>> slbLists;
  /// Private network SLB specifications.
  late final pulumi.Output<String?> slbSpec;
  /// Gateway Node Specifications. Valid values: `MSE_GTW_2_4_200_c`, `MSE_GTW_4_8_200_c`, `MSE_GTW_8_16_200_c`, `MSE_GTW_16_32_200_c`.
  late final pulumi.Output<String> spec;
  /// The status of the gateway.
  late final pulumi.Output<String> status;
  /// The ID of the vpc.
  late final pulumi.Output<String> vpcId;
  /// The ID of the vswitch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_mse_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mse/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupVswitchId = registerOutput<String?>('backupVswitchId');
    this.deleteSlb = registerOutput<bool?>('deleteSlb');
    this.enterpriseSecurityGroup = registerOutput<bool?>('enterpriseSecurityGroup');
    this.gatewayName = registerOutput<String?>('gatewayName');
    this.internetSlbSpec = registerOutput<String?>('internetSlbSpec');
    this.replica = registerOutput<int>('replica');
    this.slbLists = registerOutput<List<GatewaySlbList>>('slbLists');
    this.slbSpec = registerOutput<String?>('slbSpec');
    this.spec = registerOutput<String>('spec');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Gateway] resource's state with the given [name] and [id].
  static Gateway get(
    String name,
    pulumi.Input<String> id, {
    GatewayState? state,
  }) {
    return Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mse/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupVswitchId = registerOutput<String?>('backupVswitchId');
    this.deleteSlb = registerOutput<bool?>('deleteSlb');
    this.enterpriseSecurityGroup = registerOutput<bool?>('enterpriseSecurityGroup');
    this.gatewayName = registerOutput<String?>('gatewayName');
    this.internetSlbSpec = registerOutput<String?>('internetSlbSpec');
    this.replica = registerOutput<int>('replica');
    this.slbLists = registerOutput<List<GatewaySlbList>>('slbLists');
    this.slbSpec = registerOutput<String?>('slbSpec');
    this.spec = registerOutput<String>('spec');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
