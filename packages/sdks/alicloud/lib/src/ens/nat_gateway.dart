import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_args.dart';
import 'nat_gateway_state.dart';

/// Provides a ENS Nat Gateway resource.
///
/// Nat gateway of ENS.
///
/// For information about ENS Nat Gateway and how to use it, see [What is Nat Gateway](https://next.api.alibabacloud.com/document/Ens/2017-11-10/CreateNatGateway).
///
/// > **NOTE:** Available since v1.227.0.
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
/// const ensRegionId = config.get("ensRegionId") || "cn-chenzhou-telecom_unicom_cmcc";
/// const defaultObbrL7 = new alicloud.ens.Network("defaultObbrL7", {
///     networkName: name,
///     description: name,
///     cidrBlock: "10.0.0.0/8",
///     ensRegionId: ensRegionId,
/// });
/// const defaulteFw783 = new alicloud.ens.Vswitch("defaulteFw783", {
///     cidrBlock: "10.0.8.0/24",
///     vswitchName: name,
///     ensRegionId: defaultObbrL7.ensRegionId,
///     networkId: defaultObbrL7.id,
/// });
/// const _default = new alicloud.ens.NatGateway("default", {
///     vswitchId: defaulteFw783.id,
///     ensRegionId: defaulteFw783.ensRegionId,
///     networkId: defaulteFw783.networkId,
///     instanceType: "enat.default",
///     natName: name,
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
/// ens_region_id = config.get("ensRegionId")
/// if ens_region_id is None:
///     ens_region_id = "cn-chenzhou-telecom_unicom_cmcc"
/// default_obbr_l7 = alicloud.ens.Network("defaultObbrL7",
///     network_name=name,
///     description=name,
///     cidr_block="10.0.0.0/8",
///     ens_region_id=ens_region_id)
/// defaulte_fw783 = alicloud.ens.Vswitch("defaulteFw783",
///     cidr_block="10.0.8.0/24",
///     vswitch_name=name,
///     ens_region_id=default_obbr_l7.ens_region_id,
///     network_id=default_obbr_l7.id)
/// default = alicloud.ens.NatGateway("default",
///     vswitch_id=defaulte_fw783.id,
///     ens_region_id=defaulte_fw783.ens_region_id,
///     network_id=defaulte_fw783.network_id,
///     instance_type="enat.default",
///     nat_name=name)
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
///     var ensRegionId = config.Get("ensRegionId") ?? "cn-chenzhou-telecom_unicom_cmcc";
///     var defaultObbrL7 = new AliCloud.Ens.Network("defaultObbrL7", new()
///     {
///         NetworkName = name,
///         Description = name,
///         CidrBlock = "10.0.0.0/8",
///         EnsRegionId = ensRegionId,
///     });
///
///     var defaulteFw783 = new AliCloud.Ens.Vswitch("defaulteFw783", new()
///     {
///         CidrBlock = "10.0.8.0/24",
///         VswitchName = name,
///         EnsRegionId = defaultObbrL7.EnsRegionId,
///         NetworkId = defaultObbrL7.Id,
///     });
///
///     var @default = new AliCloud.Ens.NatGateway("default", new()
///     {
///         VswitchId = defaulteFw783.Id,
///         EnsRegionId = defaulteFw783.EnsRegionId,
///         NetworkId = defaulteFw783.NetworkId,
///         InstanceType = "enat.default",
///         NatName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		ensRegionId := "cn-chenzhou-telecom_unicom_cmcc"
/// 		if param := cfg.Get("ensRegionId"); param != "" {
/// 			ensRegionId = param
/// 		}
/// 		defaultObbrL7, err := ens.NewNetwork(ctx, "defaultObbrL7", &ens.NetworkArgs{
/// 			NetworkName: pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.0.0.0/8"),
/// 			EnsRegionId: pulumi.String(ensRegionId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulteFw783, err := ens.NewVswitch(ctx, "defaulteFw783", &ens.VswitchArgs{
/// 			CidrBlock:   pulumi.String("10.0.8.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 			EnsRegionId: defaultObbrL7.EnsRegionId,
/// 			NetworkId:   defaultObbrL7.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewNatGateway(ctx, "default", &ens.NatGatewayArgs{
/// 			VswitchId:    defaulteFw783.ID(),
/// 			EnsRegionId:  defaulteFw783.EnsRegionId,
/// 			NetworkId:    defaulteFw783.NetworkId,
/// 			InstanceType: pulumi.String("enat.default"),
/// 			NatName:      pulumi.String(name),
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
/// import com.pulumi.alicloud.ens.Network;
/// import com.pulumi.alicloud.ens.NetworkArgs;
/// import com.pulumi.alicloud.ens.Vswitch;
/// import com.pulumi.alicloud.ens.VswitchArgs;
/// import com.pulumi.alicloud.ens.NatGateway;
/// import com.pulumi.alicloud.ens.NatGatewayArgs;
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
///         final var ensRegionId = config.get("ensRegionId").orElse("cn-chenzhou-telecom_unicom_cmcc");
///         var defaultObbrL7 = new Network("defaultObbrL7", NetworkArgs.builder()
///             .networkName(name)
///             .description(name)
///             .cidrBlock("10.0.0.0/8")
///             .ensRegionId(ensRegionId)
///             .build());
///
///         var defaulteFw783 = new Vswitch("defaulteFw783", VswitchArgs.builder()
///             .cidrBlock("10.0.8.0/24")
///             .vswitchName(name)
///             .ensRegionId(defaultObbrL7.ensRegionId())
///             .networkId(defaultObbrL7.id())
///             .build());
///
///         var default_ = new NatGateway("default", NatGatewayArgs.builder()
///             .vswitchId(defaulteFw783.id())
///             .ensRegionId(defaulteFw783.ensRegionId())
///             .networkId(defaulteFw783.networkId())
///             .instanceType("enat.default")
///             .natName(name)
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
///   ensRegionId:
///     type: string
///     default: cn-chenzhou-telecom_unicom_cmcc
/// resources:
///   defaultObbrL7:
///     type: alicloud:ens:Network
///     properties:
///       networkName: ${name}
///       description: ${name}
///       cidrBlock: 10.0.0.0/8
///       ensRegionId: ${ensRegionId}
///   defaulteFw783:
///     type: alicloud:ens:Vswitch
///     properties:
///       cidrBlock: 10.0.8.0/24
///       vswitchName: ${name}
///       ensRegionId: ${defaultObbrL7.ensRegionId}
///       networkId: ${defaultObbrL7.id}
///   default:
///     type: alicloud:ens:NatGateway
///     properties:
///       vswitchId: ${defaulteFw783.id}
///       ensRegionId: ${defaulteFw783.ensRegionId}
///       networkId: ${defaulteFw783.networkId}
///       instanceType: enat.default
///       natName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Nat Gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/natGateway:NatGateway example <id>
/// ```
class NatGateway extends pulumi.CustomResource {
  /// Creation time. UTC time, in the format of YYYY-MM-DDThh:mm:ssZ.
  late final pulumi.Output<String> createTime;
  /// The ID of the ENS node.
  late final pulumi.Output<String> ensRegionId;
  /// NAT specifications. Value: `enat.default`.
  late final pulumi.Output<String> instanceType;
  /// The name of the NAT gateway. The length is 1 to 128 characters, but it cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> natName;
  /// The network ID.
  late final pulumi.Output<String> networkId;
  /// The vSwitch ID.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [NatGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGateway]. {@macro pulumi_ens_nat_gateway_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGateway(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.instanceType = registerOutput<String>('instanceType');
    this.natName = registerOutput<String?>('natName');
    this.networkId = registerOutput<String>('networkId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [NatGateway] resource's state with the given [name] and [id].
  static NatGateway get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayState? state,
  }) {
    return NatGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.instanceType = registerOutput<String>('instanceType');
    this.natName = registerOutput<String?>('natName');
    this.networkId = registerOutput<String>('networkId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
