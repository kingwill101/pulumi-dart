import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_node_args.dart';
import 'hyper_node_data_disk.dart';
import 'hyper_node_state.dart';

/// Provides a Eflo Hyper Node resource.
///
/// Hyper computing node.
///
/// For information about Eflo Hyper Node and how to use it, see [What is Hyper Node](https://www.alibabacloud.com/help/en/pai/developer-reference/api-eflo-controller-2022-12-15-overview).
///
/// > **NOTE:** Available since v1.264.0.
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
/// const _default = new alicloud.eflo.HyperNode("default", {
///     zoneId: "ap-southeast-7a",
///     machineType: "efg3.GN9A.ch72",
///     hpnZone: "A1",
///     serverArch: "bmserver",
///     paymentDuration: 1,
///     paymentType: "Subscription",
///     stageNum: "1",
///     renewalDuration: 2,
///     renewalStatus: "ManualRenewal",
///     tags: {
///         From: "Terraform",
///         Env: "Product",
///     },
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
/// default = alicloud.eflo.HyperNode("default",
///     zone_id="ap-southeast-7a",
///     machine_type="efg3.GN9A.ch72",
///     hpn_zone="A1",
///     server_arch="bmserver",
///     payment_duration=1,
///     payment_type="Subscription",
///     stage_num="1",
///     renewal_duration=2,
///     renewal_status="ManualRenewal",
///     tags={
///         "From": "Terraform",
///         "Env": "Product",
///     })
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
///     var @default = new AliCloud.Eflo.HyperNode("default", new()
///     {
///         ZoneId = "ap-southeast-7a",
///         MachineType = "efg3.GN9A.ch72",
///         HpnZone = "A1",
///         ServerArch = "bmserver",
///         PaymentDuration = 1,
///         PaymentType = "Subscription",
///         StageNum = "1",
///         RenewalDuration = 2,
///         RenewalStatus = "ManualRenewal",
///         Tags =
///         {
///             { "From", "Terraform" },
///             { "Env", "Product" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
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
/// 		_, err := eflo.NewHyperNode(ctx, "default", &eflo.HyperNodeArgs{
/// 			ZoneId:          pulumi.String("ap-southeast-7a"),
/// 			MachineType:     pulumi.String("efg3.GN9A.ch72"),
/// 			HpnZone:         pulumi.String("A1"),
/// 			ServerArch:      pulumi.String("bmserver"),
/// 			PaymentDuration: pulumi.Int(1),
/// 			PaymentType:     pulumi.String("Subscription"),
/// 			StageNum:        pulumi.String("1"),
/// 			RenewalDuration: pulumi.Int(2),
/// 			RenewalStatus:   pulumi.String("ManualRenewal"),
/// 			Tags: pulumi.StringMap{
/// 				"From": pulumi.String("Terraform"),
/// 				"Env":  pulumi.String("Product"),
/// 			},
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
/// import com.pulumi.alicloud.eflo.HyperNode;
/// import com.pulumi.alicloud.eflo.HyperNodeArgs;
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
///         var default_ = new HyperNode("default", HyperNodeArgs.builder()
///             .zoneId("ap-southeast-7a")
///             .machineType("efg3.GN9A.ch72")
///             .hpnZone("A1")
///             .serverArch("bmserver")
///             .paymentDuration(1)
///             .paymentType("Subscription")
///             .stageNum("1")
///             .renewalDuration(2)
///             .renewalStatus("ManualRenewal")
///             .tags(Map.ofEntries(
///                 Map.entry("From", "Terraform"),
///                 Map.entry("Env", "Product")
///             ))
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
///   default:
///     type: alicloud:eflo:HyperNode
///     properties:
///       zoneId: ap-southeast-7a
///       machineType: efg3.GN9A.ch72
///       hpnZone: A1
///       serverArch: bmserver
///       paymentDuration: '1'
///       paymentType: Subscription
///       stageNum: '1'
///       renewalDuration: 2
///       renewalStatus: ManualRenewal
///       tags:
///         From: Terraform
///         Env: Product
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Hyper Node can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/hyperNode:HyperNode example <id>
/// ```
class HyperNode extends pulumi.CustomResource {
  /// Cluster ID
  late final pulumi.Output<String?> clusterId;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<List<HyperNodeDataDisk>?> dataDisks;
  /// The host name prefix of the sub computing node
  late final pulumi.Output<String?> hostname;
  /// Number of the cluster to which the hyper computing node belongs
  late final pulumi.Output<String?> hpnZone;
  /// Login Password of the sub computing node
  late final pulumi.Output<String?> loginPassword;
  /// The model used by the hyper computing node
  late final pulumi.Output<String?> machineType;
  /// Node group ID
  late final pulumi.Output<String?> nodeGroupId;
  /// The duration of the instance purchase, in units.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> paymentDuration;
  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// Number of auto-renewal cycles
  late final pulumi.Output<int?> renewalDuration;
  /// Automatic renewal status. Value: AutoRenewal: automatic renewal. ManualRenewal: manual renewal. The default ManualRenewal.
  late final pulumi.Output<String> renewalStatus;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Hyper Node Architecture
  late final pulumi.Output<String?> serverArch;
  /// The number of installments of the hyper computing node of the fixed fee installment.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> stageNum;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Custom user data for the sub computing node
  late final pulumi.Output<String?> userData;
  /// The ID of the vpc to which the sub computing node
  late final pulumi.Output<String?> vpcId;
  /// The ID of the vswitch to which the sub computing node
  late final pulumi.Output<String?> vswitchId;
  /// The zone where the hyper compute node is located
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [HyperNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperNode]. {@macro pulumi_eflo_hyper_node_hyper_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperNode(
    String name, {
    HyperNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/hyperNode:HyperNode',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String?>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<HyperNodeDataDisk>?>('dataDisks');
    this.hostname = registerOutput<String?>('hostname');
    this.hpnZone = registerOutput<String?>('hpnZone');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.machineType = registerOutput<String?>('machineType');
    this.nodeGroupId = registerOutput<String?>('nodeGroupId');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentType = registerOutput<String>('paymentType');
    this.regionId = registerOutput<String>('regionId');
    this.renewalDuration = registerOutput<int?>('renewalDuration');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serverArch = registerOutput<String?>('serverArch');
    this.stageNum = registerOutput<String?>('stageNum');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userData = registerOutput<String?>('userData');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [HyperNode] resource's state with the given [name] and [id].
  static HyperNode get(
    String name,
    pulumi.Input<String> id, {
    HyperNodeState? state,
  }) {
    return HyperNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HyperNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/hyperNode:HyperNode',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String?>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<HyperNodeDataDisk>?>('dataDisks');
    this.hostname = registerOutput<String?>('hostname');
    this.hpnZone = registerOutput<String?>('hpnZone');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.machineType = registerOutput<String?>('machineType');
    this.nodeGroupId = registerOutput<String?>('nodeGroupId');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentType = registerOutput<String>('paymentType');
    this.regionId = registerOutput<String>('regionId');
    this.renewalDuration = registerOutput<int?>('renewalDuration');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serverArch = registerOutput<String?>('serverArch');
    this.stageNum = registerOutput<String?>('stageNum');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userData = registerOutput<String?>('userData');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
