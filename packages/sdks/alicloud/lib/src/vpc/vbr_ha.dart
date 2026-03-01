import 'package:pulumi/pulumi.dart' as pulumi;
import 'vbr_ha_args.dart';
import 'vbr_ha_state.dart';

/// Provides a Express Connect Vbr Ha resource.
///
/// VBR switching Group.
///
/// For information about Express Connect Vbr Ha and how to use it, see [What is Vbr Ha](https://www.alibabacloud.com/help/doc-detail/212629.html).
///
/// > **NOTE:** Available since v1.151.0.
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
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const vlanId = new random.index.Integer("vlan_id", {
///     max: 2999,
///     min: 1,
/// });
/// const exampleVirtualBorderRouter: alicloud.expressconnect.VirtualBorderRouter[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleVirtualBorderRouter.push(new alicloud.expressconnect.VirtualBorderRouter(`example-${range.value}`, {
///         localGatewayIp: "10.0.0.1",
///         peerGatewayIp: "10.0.0.2",
///         peeringSubnetMask: "255.255.255.252",
///         physicalConnectionId: example.then(example => example.connections[range.value].id),
///         virtualBorderRouterName: std.format({
///             input: `${name}-%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         vlanId: vlanId.id + range.value,
///         minRxInterval: 1000,
///         minTxInterval: 1000,
///         detectMultiplier: 10,
///     }));
/// }
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: name,
///     description: name,
///     protectionLevel: "REDUCED",
/// });
/// const exampleInstanceAttachment: alicloud.cen.InstanceAttachment[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleInstanceAttachment.push(new alicloud.cen.InstanceAttachment(`example-${range.value}`, {
///         instanceId: exampleInstance.id,
///         childInstanceId: exampleVirtualBorderRouter[range.value].id,
///         childInstanceType: "VBR",
///         childInstanceRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     }));
/// }
/// const exampleVbrHa = new alicloud.vpc.VbrHa("example", {
///     vbrId: exampleInstanceAttachment[0].childInstanceId,
///     peerVbrId: exampleInstanceAttachment[1].childInstanceId,
///     vbrHaName: name,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// example = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// vlan_id = random.index.Integer("vlan_id",
///     max=2999,
///     min=1)
/// example_virtual_border_router = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_virtual_border_router.append(alicloud.expressconnect.VirtualBorderRouter(f"example-{range['value']}",
///         local_gateway_ip="10.0.0.1",
///         peer_gateway_ip="10.0.0.2",
///         peering_subnet_mask="255.255.255.252",
///         physical_connection_id=example.connections[range["value"]].id,
///         virtual_border_router_name=std.format(input=f"{name}-%d",
///             args=[range["value"] + 1]).result,
///         vlan_id=vlan_id["id"] + range["value"],
///         min_rx_interval=1000,
///         min_tx_interval=1000,
///         detect_multiplier=10))
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name=name,
///     description=name,
///     protection_level="REDUCED")
/// example_instance_attachment = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_instance_attachment.append(alicloud.cen.InstanceAttachment(f"example-{range['value']}",
///         instance_id=example_instance.id,
///         child_instance_id=example_virtual_border_router[range["value"]].id,
///         child_instance_type="VBR",
///         child_instance_region_id=default.regions[0].id))
/// example_vbr_ha = alicloud.vpc.VbrHa("example",
///     vbr_id=example_instance_attachment[0].child_instance_id,
///     peer_vbr_id=example_instance_attachment[1].child_instance_id,
///     vbr_ha_name=name,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var vlanId = new Random.Index.Integer("vlan_id", new()
///     {
///         Max = 2999,
///         Min = 1,
///     });
///
///     var exampleVirtualBorderRouter = new List<AliCloud.ExpressConnect.VirtualBorderRouter>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleVirtualBorderRouter.Add(new AliCloud.ExpressConnect.VirtualBorderRouter($"example-{range.Value}", new()
///         {
///             LocalGatewayIp = "10.0.0.1",
///             PeerGatewayIp = "10.0.0.2",
///             PeeringSubnetMask = "255.255.255.252",
///             PhysicalConnectionId = example.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections)[range.Value].Id,
///             VirtualBorderRouterName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}-%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             VlanId = vlanId.Id + range.Value,
///             MinRxInterval = 1000,
///             MinTxInterval = 1000,
///             DetectMultiplier = 10,
///         }));
///     }
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///         Description = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var exampleInstanceAttachment = new List<AliCloud.Cen.InstanceAttachment>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleInstanceAttachment.Add(new AliCloud.Cen.InstanceAttachment($"example-{range.Value}", new()
///         {
///             InstanceId = exampleInstance.Id,
///             ChildInstanceId = exampleVirtualBorderRouter[range.Value].Id,
///             ChildInstanceType = "VBR",
///             ChildInstanceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         }));
///     }
///     var exampleVbrHa = new AliCloud.Vpc.VbrHa("example", new()
///     {
///         VbrId = exampleInstanceAttachment[0].ChildInstanceId,
///         PeerVbrId = exampleInstanceAttachment[1].ChildInstanceId,
///         VbrHaName = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vlanId, err := random.NewInteger(ctx, "vlan_id", &random.IntegerArgs{
/// 			Max: 2999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "-%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleVirtualBorderRouter []*expressconnect.VirtualBorderRouter
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := expressconnect.NewVirtualBorderRouter(ctx, fmt.Sprintf("example-%v", key0), &expressconnect.VirtualBorderRouterArgs{
/// 				LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 				PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 				PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 				PhysicalConnectionId:    example.Connections[val0].Id,
/// 				VirtualBorderRouterName: pulumi.String(invokeFormat.Result),
/// 				VlanId:                  int(vlanId.Id + val0),
/// 				MinRxInterval:           pulumi.Int(1000),
/// 				MinTxInterval:           pulumi.Int(1000),
/// 				DetectMultiplier:        pulumi.Int(10),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleVirtualBorderRouter = append(exampleVirtualBorderRouter, __res)
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleInstanceAttachment []*cen.InstanceAttachment
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := cen.NewInstanceAttachment(ctx, fmt.Sprintf("example-%v", key0), &cen.InstanceAttachmentArgs{
/// 				InstanceId:            exampleInstance.ID(),
/// 				ChildInstanceId:       exampleVirtualBorderRouter[val0].ID(),
/// 				ChildInstanceType:     pulumi.String("VBR"),
/// 				ChildInstanceRegionId: pulumi.String(_default.Regions[0].Id),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleInstanceAttachment = append(exampleInstanceAttachment, __res)
/// 		}
/// 		_, err = vpc.NewVbrHa(ctx, "example", &vpc.VbrHaArgs{
/// 			VbrId:       exampleInstanceAttachment[0].ChildInstanceId,
/// 			PeerVbrId:   exampleInstanceAttachment[1].ChildInstanceId,
/// 			VbrHaName:   pulumi.String(name),
/// 			Description: pulumi.String(name),
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.InstanceAttachment;
/// import com.pulumi.alicloud.cen.InstanceAttachmentArgs;
/// import com.pulumi.alicloud.vpc.VbrHa;
/// import com.pulumi.alicloud.vpc.VbrHaArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var example = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var vlanId = new Integer("vlanId", IntegerArgs.builder()
///             .max(2999)
///             .min(1)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new VirtualBorderRouter("exampleVirtualBorderRouter-" + i, VirtualBorderRouterArgs.builder()
///                 .localGatewayIp("10.0.0.1")
///                 .peerGatewayIp("10.0.0.2")
///                 .peeringSubnetMask("255.255.255.252")
///                 .physicalConnectionId(example.connections()[range.value()].id())
///                 .virtualBorderRouterName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s-%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .vlanId(vlanId.id() + range.value())
///                 .minRxInterval(1000)
///                 .minTxInterval(1000)
///                 .detectMultiplier(10)
///                 .build());
///
///
/// }
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .description(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new InstanceAttachment("exampleInstanceAttachment-" + i, InstanceAttachmentArgs.builder()
///                 .instanceId(exampleInstance.id())
///                 .childInstanceId(exampleVirtualBorderRouter[range.value()].id())
///                 .childInstanceType("VBR")
///                 .childInstanceRegionId(default_.regions()[0].id())
///                 .build());
///
///
/// }
///         var exampleVbrHa = new VbrHa("exampleVbrHa", VbrHaArgs.builder()
///             .vbrId(exampleInstanceAttachment[0].childInstanceId())
///             .peerVbrId(exampleInstanceAttachment[1].childInstanceId())
///             .vbrHaName(name)
///             .description(name)
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
/// Express Connect Vbr Ha can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/vbrHa:VbrHa example <id>
/// ```
class VbrHa extends pulumi.CustomResource {
  /// The creation time of the VBR.
  late final pulumi.Output<String> createTime;
  /// The description of the VBR switching group.
  /// It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> description;
  /// Whether to PreCheck only this request. Value range:
  /// - *true**: The check request is sent and the instance is not started. Check whether the required parameters, request format, and instance status are filled in. If the check does not pass, the corresponding error is returned. If the check passes, DRYRUN.SUCCESS is returned.
  /// - *false** (default): Send a normal request and start the instance directly after passing the check.
  late final pulumi.Output<bool?> dryRun;
  /// The instance ID of another VBR in The VBR switching group.
  late final pulumi.Output<String> peerVbrId;
  /// The ID of the region to which the VBR belongs.
  late final pulumi.Output<String> regionId;
  /// Status of VBR switching Group
  late final pulumi.Output<String> status;
  /// VBR switch group name.
  late final pulumi.Output<String?> vbrHaName;
  /// The VBR instance ID.
  late final pulumi.Output<String> vbrId;

  /// Creates a new [VbrHa].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VbrHa]. {@macro pulumi_vpc_vbr_ha_vbr_ha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VbrHa(
    String name, {
    VbrHaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vbrHa:VbrHa',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.peerVbrId = registerOutput<String>('peerVbrId');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
    this.vbrHaName = registerOutput<String?>('vbrHaName');
    this.vbrId = registerOutput<String>('vbrId');
  }

  /// Gets an existing [VbrHa] resource's state with the given [name] and [id].
  static VbrHa get(
    String name,
    pulumi.Input<String> id, {
    VbrHaState? state,
  }) {
    return VbrHa._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VbrHa._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vbrHa:VbrHa',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.peerVbrId = registerOutput<String>('peerVbrId');
    this.regionId = registerOutput<String>('regionId');
    this.status = registerOutput<String>('status');
    this.vbrHaName = registerOutput<String?>('vbrHaName');
    this.vbrId = registerOutput<String>('vbrId');
  }
}
