import 'package:pulumi/pulumi.dart' as pulumi;
import 'vswitch_args.dart';
import 'vswitch_state.dart';

/// Provides a ENS Vswitch resource.
///
///
///
/// For information about ENS Vswitch and how to use it, see [What is Vswitch](https://www.alibabacloud.com/help/en/ens/developer-reference/api-createvswitch).
///
/// &gt; **NOTE:** Available since v1.213.0.
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
/// const _default = new alicloud.ens.Network("default", {
///     networkName: name,
///     description: name,
///     cidrBlock: "192.168.2.0/24",
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
/// });
/// const defaultVswitch = new alicloud.ens.Vswitch("default", {
///     description: name,
///     cidrBlock: "192.168.2.0/24",
///     vswitchName: name,
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     networkId: _default.id,
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
/// default = alicloud.ens.Network("default",
///     network_name=name,
///     description=name,
///     cidr_block="192.168.2.0/24",
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc")
/// default_vswitch = alicloud.ens.Vswitch("default",
///     description=name,
///     cidr_block="192.168.2.0/24",
///     vswitch_name=name,
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     network_id=default.id)
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
///     var @default = new AliCloud.Ens.Network("default", new()
///     {
///         NetworkName = name,
///         Description = name,
///         CidrBlock = "192.168.2.0/24",
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///     });
///
///     var defaultVswitch = new AliCloud.Ens.Vswitch("default", new()
///     {
///         Description = name,
///         CidrBlock = "192.168.2.0/24",
///         VswitchName = name,
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         NetworkId = @default.Id,
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
/// 		_default, err := ens.NewNetwork(ctx, "default", &ens.NetworkArgs{
/// 			NetworkName: pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			EnsRegionId: pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewVswitch(ctx, "default", &ens.VswitchArgs{
/// 			Description: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VswitchName: pulumi.String(name),
/// 			EnsRegionId: pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			NetworkId:   _default.ID(),
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .networkName(name)
///             .description(name)
///             .cidrBlock("192.168.2.0/24")
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .build());
///
///         var defaultVswitch = new Vswitch("defaultVswitch", VswitchArgs.builder()
///             .description(name)
///             .cidrBlock("192.168.2.0/24")
///             .vswitchName(name)
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .networkId(default_.id())
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
///     type: alicloud:ens:Network
///     properties:
///       networkName: ${name}
///       description: ${name}
///       cidrBlock: 192.168.2.0/24
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///   defaultVswitch:
///     type: alicloud:ens:Vswitch
///     name: default
///     properties:
///       description: ${name}
///       cidrBlock: 192.168.2.0/24
///       vswitchName: ${name}
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       networkId: ${default.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Vswitch can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/vswitch:Vswitch example <id>
/// ```
class Vswitch extends pulumi.CustomResource {
  /// The CIDR block of the vSwitch.
  late final pulumi.Output<String> cidrBlock;

  /// The time when the VPC was created.
  late final pulumi.Output<String> createTime;

  /// The description of the vSwitch.
  late final pulumi.Output<String?> description;

  /// ENS Region ID.
  late final pulumi.Output<String> ensRegionId;

  /// The ID of the network to which the vSwitch that you want to create belongs.
  late final pulumi.Output<String> networkId;

  /// The status of the vSwitch.
  late final pulumi.Output<String> status;

  /// The name of the vSwitch.
  late final pulumi.Output<String?> vswitchName;

  /// Creates a new [Vswitch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vswitch]. {@macro pulumi_ens_vswitch_vswitch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vswitch(
    String name, {
    VswitchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/vswitch:Vswitch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrBlock = registerOutput<String>('cidrBlock');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    ensRegionId = registerOutput<String>('ensRegionId');
    networkId = registerOutput<String>('networkId');
    status = registerOutput<String>('status');
    vswitchName = registerOutput<String?>('vswitchName');
  }

  /// Gets an existing [Vswitch] resource's state with the given [name] and [id].
  static Vswitch get(
    String name,
    pulumi.Input<String> id, {
    VswitchState? state,
  }) {
    return Vswitch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Vswitch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/vswitch:Vswitch',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrBlock = registerOutput<String>('cidrBlock');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    ensRegionId = registerOutput<String>('ensRegionId');
    networkId = registerOutput<String>('networkId');
    status = registerOutput<String>('status');
    vswitchName = registerOutput<String?>('vswitchName');
  }
}
