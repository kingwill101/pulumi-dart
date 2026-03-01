import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_attachment_accepter_args.dart';

/// Manages the accepter's side of an EC2 Transit Gateway Peering Attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PeeringAttachmentAccepter("example", {
///     transitGatewayAttachmentId: exampleAwsEc2TransitGatewayPeeringAttachment.id,
///     tags: {
///         Name: "Example cross-account attachment",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PeeringAttachmentAccepter("example",
///     transit_gateway_attachment_id=example_aws_ec2_transit_gateway_peering_attachment["id"],
///     tags={
///         "Name": "Example cross-account attachment",
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
///     var example = new Aws.Ec2TransitGateway.PeeringAttachmentAccepter("example", new()
///     {
///         TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayPeeringAttachment.Id,
///         Tags =
///         {
///             { "Name", "Example cross-account attachment" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewPeeringAttachmentAccepter(ctx, "example", &ec2transitgateway.PeeringAttachmentAccepterArgs{
/// 			TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayPeeringAttachment.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example cross-account attachment"),
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
/// import com.pulumi.aws.ec2transitgateway.PeeringAttachmentAccepter;
/// import com.pulumi.aws.ec2transitgateway.PeeringAttachmentAccepterArgs;
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
///         var example = new PeeringAttachmentAccepter("example", PeeringAttachmentAccepterArgs.builder()
///             .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayPeeringAttachment.id())
///             .tags(Map.of("Name", "Example cross-account attachment"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:PeeringAttachmentAccepter
///     properties:
///       transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayPeeringAttachment.id}
///       tags:
///         Name: Example cross-account attachment
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PeeringAttachmentAccepter` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/peeringAttachmentAccepter:PeeringAttachmentAccepter example tgw-attach-12345678
/// ```
class PeeringAttachmentAccepter extends pulumi.CustomResource {
  /// Identifier of the AWS account that owns the EC2 TGW peering.
  late final pulumi.Output<String> peerAccountId;
  late final pulumi.Output<String> peerRegion;
  /// Identifier of EC2 Transit Gateway to peer with.
  late final pulumi.Output<String> peerTransitGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ID of the EC2 Transit Gateway Peering Attachment to manage.
  late final pulumi.Output<String> transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  /// Creates a new [PeeringAttachmentAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeeringAttachmentAccepter]. {@macro pulumi_ec2transitgateway_peering_attachment_accepter_peering_attachment_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeeringAttachmentAccepter(
    String name, {
    PeeringAttachmentAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/peeringAttachmentAccepter:PeeringAttachmentAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.peerAccountId = registerOutput<String>('peerAccountId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerTransitGatewayId = registerOutput<String>('peerTransitGatewayId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAttachmentId = registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
