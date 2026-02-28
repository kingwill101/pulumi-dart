import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_concentrator_args.dart';

/// Provides a resource to create a VPN Concentrator that aggregates multiple VPN connections to a transit gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {
///     description: "example",
///     tags: {
///         Name: "example",
///     },
/// });
/// const exampleVpnConcentrator = new aws.ec2.VpnConcentrator("example", {
///     type: "ipsec.1",
///     transitGatewayId: example.id,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example",
///     description="example",
///     tags={
///         "Name": "example",
///     })
/// example_vpn_concentrator = aws.ec2.VpnConcentrator("example",
///     type="ipsec.1",
///     transit_gateway_id=example.id,
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Description = "example",
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
///     var exampleVpnConcentrator = new Aws.Ec2.VpnConcentrator("example", new()
///     {
///         Type = "ipsec.1",
///         TransitGatewayId = example.Id,
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			Description: pulumi.String("example"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpnConcentrator(ctx, "example", &ec2.VpnConcentratorArgs{
/// 			Type:             pulumi.String("ipsec.1"),
/// 			TransitGatewayId: example.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConcentrator;
/// import com.pulumi.aws.ec2.VpnConcentratorArgs;
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
///         var example = new TransitGateway("example", TransitGatewayArgs.builder()
///             .description("example")
///             .tags(Map.of("Name", "example"))
///             .build());
///
///         var exampleVpnConcentrator = new VpnConcentrator("exampleVpnConcentrator", VpnConcentratorArgs.builder()
///             .type("ipsec.1")
///             .transitGatewayId(example.id())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:TransitGateway
///     properties:
///       description: example
///       tags:
///         Name: example
///   exampleVpnConcentrator:
///     type: aws:ec2:VpnConcentrator
///     name: example
///     properties:
///       type: ipsec.1
///       transitGatewayId: ${example.id}
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPN Concentrators using the VPN concentrator ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnConcentrator:VpnConcentrator example vcn-12345678
/// ```
class VpnConcentrator extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ID of the transit gateway attachment created for the VPN concentrator.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// ID of the transit gateway to attach the VPN concentrator to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayId;

  /// Type of VPN concentrator. Valid value: `ipsec.1`.
  late final pulumi.Output<String> type;

  /// ID of the VPN Concentrator.
  late final pulumi.Output<String> vpnConcentratorId;

  /// Creates a new [VpnConcentrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnConcentrator]. {@macro pulumi_ec2_vpn_concentrator_vpn_concentrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnConcentrator(
    String name, {
    VpnConcentratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConcentrator:VpnConcentrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.type = registerOutput<String>('type');
    this.vpnConcentratorId = registerOutput<String>('vpnConcentratorId');
  }
}
