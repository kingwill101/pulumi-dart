import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv4_cidr_block_args.dart';

/// Provides a VPC Ipv4 Cidr Block resource.
///
/// VPC IPv4 additional network segment.
///
/// For information about VPC Ipv4 Cidr Block and how to use it, see [What is Ipv4 Cidr Block](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/associatevpccidrblock).
///
/// > **NOTE:** Available since v1.185.0.
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
/// const defaultvpc = new alicloud.vpc.Network("defaultvpc", {description: name});
/// const _default = new alicloud.vpc.Ipv4CidrBlock("default", {
///     secondaryCidrBlock: "192.168.0.0/16",
///     vpcId: defaultvpc.id,
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
/// defaultvpc = alicloud.vpc.Network("defaultvpc", description=name)
/// default = alicloud.vpc.Ipv4CidrBlock("default",
///     secondary_cidr_block="192.168.0.0/16",
///     vpc_id=defaultvpc.id)
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
///     var defaultvpc = new AliCloud.Vpc.Network("defaultvpc", new()
///     {
///         Description = name,
///     });
///
///     var @default = new AliCloud.Vpc.Ipv4CidrBlock("default", new()
///     {
///         SecondaryCidrBlock = "192.168.0.0/16",
///         VpcId = defaultvpc.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		defaultvpc, err := vpc.NewNetwork(ctx, "defaultvpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpv4CidrBlock(ctx, "default", &vpc.Ipv4CidrBlockArgs{
/// 			SecondaryCidrBlock: pulumi.String("192.168.0.0/16"),
/// 			VpcId:              defaultvpc.ID(),
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
/// import com.pulumi.alicloud.vpc.Ipv4CidrBlock;
/// import com.pulumi.alicloud.vpc.Ipv4CidrBlockArgs;
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
///         var defaultvpc = new Network("defaultvpc", NetworkArgs.builder()
///             .description(name)
///             .build());
///
///         var default_ = new Ipv4CidrBlock("default", Ipv4CidrBlockArgs.builder()
///             .secondaryCidrBlock("192.168.0.0/16")
///             .vpcId(defaultvpc.id())
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
///   defaultvpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: ${name}
///   default:
///     type: alicloud:vpc:Ipv4CidrBlock
///     properties:
///       secondaryCidrBlock: 192.168.0.0/16
///       vpcId: ${defaultvpc.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Ipv4 Cidr Block can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipv4CidrBlock:Ipv4CidrBlock example <vpc_id>:<secondary_cidr_block>
/// ```
class Ipv4CidrBlock extends pulumi.CustomResource {
  /// The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  late final pulumi.Output<String?> ipv4IpamPoolId;
  /// The ID of the region where the VPC resides.
  late final pulumi.Output<String> regionId;
  /// Additional network segment information.
  late final pulumi.Output<String> secondaryCidrBlock;
  /// Add an additional CIDR block from the IPAM address pool to the VPC by entering a mask.
  ///
  /// > **NOTE:**  Specify the IPAM address pool to add an additional CIDR block to the VPC. Enter at least one of the SecondaryCidrBlock or SecondaryCidrMask parameters.
  late final pulumi.Output<int?> secondaryCidrMask;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Ipv4CidrBlock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv4CidrBlock]. {@macro pulumi_vpc_ipv4_cidr_block_ipv4_cidr_block_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv4CidrBlock(
    String name, {
    Ipv4CidrBlockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv4CidrBlock:Ipv4CidrBlock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.regionId = registerOutput<String>('regionId');
    this.secondaryCidrBlock = registerOutput<String>('secondaryCidrBlock');
    this.secondaryCidrMask = registerOutput<int?>('secondaryCidrMask');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
