import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_attachment_args.dart';
import 'vpn_gateway_attachment_state.dart';

/// Provides a Virtual Private Gateway attachment resource, allowing for an existing
/// hardware VPN gateway to be attached and/or detached from a VPC.
///
/// &gt; **Note:** The `aws.ec2.VpnGateway`
/// resource can also automatically attach the Virtual Private Gateway it creates
/// to an existing VPC by setting the `vpcId` attribute accordingly.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const network = new aws.ec2.Vpc("network", {cidrBlock: "10.0.0.0/16"});
/// const vpn = new aws.ec2.VpnGateway("vpn", {tags: {
///     Name: "example-vpn-gateway",
/// }});
/// const vpnAttachment = new aws.ec2.VpnGatewayAttachment("vpn_attachment", {
///     vpcId: network.id,
///     vpnGatewayId: vpn.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// network = aws.ec2.Vpc("network", cidr_block="10.0.0.0/16")
/// vpn = aws.ec2.VpnGateway("vpn", tags={
///     "Name": "example-vpn-gateway",
/// })
/// vpn_attachment = aws.ec2.VpnGatewayAttachment("vpn_attachment",
///     vpc_id=network.id,
///     vpn_gateway_id=vpn.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Aws.Ec2.Vpc("network", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var vpn = new Aws.Ec2.VpnGateway("vpn", new()
///     {
///         Tags =
///         {
///             { "Name", "example-vpn-gateway" },
///         },
///     });
///
///     var vpnAttachment = new Aws.Ec2.VpnGatewayAttachment("vpn_attachment", new()
///     {
///         VpcId = network.Id,
///         VpnGatewayId = vpn.Id,
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
/// 		network, err := ec2.NewVpc(ctx, "network", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpn, err := ec2.NewVpnGateway(ctx, "vpn", &ec2.VpnGatewayArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-vpn-gateway"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpnGatewayAttachment(ctx, "vpn_attachment", &ec2.VpnGatewayAttachmentArgs{
/// 			VpcId:        network.ID().ToIDOutput().ToStringOutput(),
/// 			VpnGatewayId: vpn.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "network" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_vpngateway" "vpn" {
///   tags = {
///     "Name" = "example-vpn-gateway"
///   }
/// }
/// resource "aws_ec2_vpngatewayattachment" "vpn_attachment" {
///   vpc_id         = aws_ec2_vpc.network.id
///   vpn_gateway_id = aws_ec2_vpngateway.vpn.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
/// import com.pulumi.aws.ec2.VpnGatewayAttachment;
/// import com.pulumi.aws.ec2.VpnGatewayAttachmentArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var network = new Vpc("network", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var vpn = new VpnGateway("vpn", VpnGatewayArgs.builder()
///             .tags(Map.of("Name", "example-vpn-gateway"))
///             .build());
///
///         var vpnAttachment = new VpnGatewayAttachment("vpnAttachment", VpnGatewayAttachmentArgs.builder()
///             .vpcId(network.id())
///             .vpnGatewayId(vpn.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   vpn:
///     type: aws:ec2:VpnGateway
///     properties:
///       tags:
///         Name: example-vpn-gateway
///   vpnAttachment:
///     type: aws:ec2:VpnGatewayAttachment
///     name: vpn_attachment
///     properties:
///       vpcId: ${network.id}
///       vpnGatewayId: ${vpn.id}
/// ```
///
///
/// See [VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Introduction.html)
/// and [Virtual Private Gateway](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) user
/// guides for more information.
///
/// ## Import
///
/// You cannot import this resource.
class VpnGatewayAttachment extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The ID of the Virtual Private Gateway.
  late final pulumi.Output<String> vpnGatewayId;

  /// Creates a new [VpnGatewayAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnGatewayAttachment]. {@macro pulumi_ec2_vpn_gateway_attachment_vpn_gateway_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnGatewayAttachment(
    String name, {
    VpnGatewayAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGatewayAttachment:VpnGatewayAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    vpcId = registerOutput<String>('vpcId');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }

  /// Gets an existing [VpnGatewayAttachment] resource's state with the given [name] and [id].
  static VpnGatewayAttachment get(
    String name,
    pulumi.Input<String> id, {
    VpnGatewayAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpnGatewayAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpnGatewayAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGatewayAttachment:VpnGatewayAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    vpcId = registerOutput<String>('vpcId');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }

  /// Creates a typed reference to an existing [VpnGatewayAttachment] resource.
  VpnGatewayAttachment.reference(String urn)
    : super(
        'aws:ec2/vpnGatewayAttachment:VpnGatewayAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    vpcId = registerOutput<String>('vpcId');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
