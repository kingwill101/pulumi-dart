import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_args.dart';
import 'vpn_gateway_state.dart';

/// Provides a resource to create a VPC VPN Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpnGw = new aws.ec2.VpnGateway("vpn_gw", {
///     vpcId: main.id,
///     tags: {
///         Name: "main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpn_gw = aws.ec2.VpnGateway("vpn_gw",
///     vpc_id=main["id"],
///     tags={
///         "Name": "main",
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
///     var vpnGw = new Aws.Ec2.VpnGateway("vpn_gw", new()
///     {
///         VpcId = main.Id,
///         Tags =
///         {
///             { "Name", "main" },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewVpnGateway(ctx, "vpn_gw", &ec2.VpnGatewayArgs{
/// 			VpcId: pulumi.Any(main.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("main"),
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
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
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
///         var vpnGw = new VpnGateway("vpnGw", VpnGatewayArgs.builder()
///             .vpcId(main.id())
///             .tags(Map.of("Name", "main"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpnGw:
///     type: aws:ec2:VpnGateway
///     name: vpn_gw
///     properties:
///       vpcId: ${main.id}
///       tags:
///         Name: main
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPN Gateways using the VPN gateway `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnGateway:VpnGateway testvpngateway vgw-9a4cacf3
/// ```
class VpnGateway extends pulumi.CustomResource {
  /// The Autonomous System Number (ASN) for the Amazon side of the gateway. If you don't specify an ASN, the virtual private gateway is created with the default ASN.
  late final pulumi.Output<String> amazonSideAsn;

  /// Amazon Resource Name (ARN) of the VPN Gateway.
  late final pulumi.Output<String> arn;

  /// The Availability Zone for the virtual private gateway.
  late final pulumi.Output<String?> availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnGateway]. {@macro pulumi_ec2_vpn_gateway_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnGateway(
    String name, {
    VpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpnGateway:VpnGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String?>('availabilityZone');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [VpnGateway] resource's state with the given [name] and [id].
  static VpnGateway get(
    String name,
    pulumi.Input<String> id, {
    VpnGatewayState? state,
  }) {
    return VpnGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpnGateway:VpnGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String?>('availabilityZone');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
