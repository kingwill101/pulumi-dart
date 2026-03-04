import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_attachment_accepter_args.dart';
import 'vpc_attachment_accepter_state.dart';

/// Manages the accepter's side of an EC2 Transit Gateway VPC Attachment.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) EC2 Transit Gateway VPC Attachment
/// is created, an EC2 Transit Gateway VPC Attachment resource is automatically created in the accepter's account.
/// The requester can use the `aws.ec2transitgateway.VpcAttachment` resource to manage its side of the connection
/// and the accepter can use the `aws.ec2transitgateway.VpcAttachmentAccepter` resource to "adopt" its side of the
/// connection into management.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.VpcAttachmentAccepter("example", {
///     transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
///     tags: {
///         Name: "Example cross-account attachment",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.VpcAttachmentAccepter("example",
///     transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
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
///     var example = new Aws.Ec2TransitGateway.VpcAttachmentAccepter("example", new()
///     {
///         TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
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
/// 		_, err := ec2transitgateway.NewVpcAttachmentAccepter(ctx, "example", &ec2transitgateway.VpcAttachmentAccepterArgs{
/// 			TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
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
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentAccepter;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentAccepterArgs;
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
///         var example = new VpcAttachmentAccepter("example", VpcAttachmentAccepterArgs.builder()
///             .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
///             .tags(Map.of("Name", "Example cross-account attachment"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:VpcAttachmentAccepter
///     properties:
///       transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
///       tags:
///         Name: Example cross-account attachment
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.VpcAttachmentAccepter` using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter example tgw-attach-12345678
/// ```
class VpcAttachmentAccepter extends pulumi.CustomResource {
  /// Whether Appliance Mode support is enabled. Valid values: `disable`, `enable`.
  late final pulumi.Output<String> applianceModeSupport;

  /// Whether DNS support is enabled. Valid values: `disable`, `enable`.
  late final pulumi.Output<String> dnsSupport;

  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`.
  late final pulumi.Output<String> ipv6Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  late final pulumi.Output<String> securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  late final pulumi.Output<List<String>> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the EC2 Transit Gateway Attachment to manage.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  late final pulumi.Output<bool?> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  late final pulumi.Output<bool?> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  /// Identifier of EC2 VPC.
  late final pulumi.Output<String> vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  late final pulumi.Output<String> vpcOwnerId;

  /// Creates a new [VpcAttachmentAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcAttachmentAccepter]. {@macro pulumi_ec2transitgateway_vpc_attachment_accepter_vpc_attachment_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcAttachmentAccepter(
    String name, {
    VpcAttachmentAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applianceModeSupport = registerOutput<String>('applianceModeSupport');
    dnsSupport = registerOutput<String>('dnsSupport');
    ipv6Support = registerOutput<String>('ipv6Support');
    region = registerOutput<String>('region');
    securityGroupReferencingSupport = registerOutput<String>(
      'securityGroupReferencingSupport',
    );
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayAttachmentId = registerOutput<String>(
      'transitGatewayAttachmentId',
    );
    transitGatewayDefaultRouteTableAssociation = registerOutput<bool?>(
      'transitGatewayDefaultRouteTableAssociation',
    );
    transitGatewayDefaultRouteTablePropagation = registerOutput<bool?>(
      'transitGatewayDefaultRouteTablePropagation',
    );
    transitGatewayId = registerOutput<String>('transitGatewayId');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }

  /// Gets an existing [VpcAttachmentAccepter] resource's state with the given [name] and [id].
  static VpcAttachmentAccepter get(
    String name,
    pulumi.Input<String> id, {
    VpcAttachmentAccepterState? state,
  }) {
    return VpcAttachmentAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcAttachmentAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2transitgateway/vpcAttachmentAccepter:VpcAttachmentAccepter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applianceModeSupport = registerOutput<String>('applianceModeSupport');
    dnsSupport = registerOutput<String>('dnsSupport');
    ipv6Support = registerOutput<String>('ipv6Support');
    region = registerOutput<String>('region');
    securityGroupReferencingSupport = registerOutput<String>(
      'securityGroupReferencingSupport',
    );
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayAttachmentId = registerOutput<String>(
      'transitGatewayAttachmentId',
    );
    transitGatewayDefaultRouteTableAssociation = registerOutput<bool?>(
      'transitGatewayDefaultRouteTableAssociation',
    );
    transitGatewayDefaultRouteTablePropagation = registerOutput<bool?>(
      'transitGatewayDefaultRouteTablePropagation',
    );
    transitGatewayId = registerOutput<String>('transitGatewayId');
    vpcId = registerOutput<String>('vpcId');
    vpcOwnerId = registerOutput<String>('vpcOwnerId');
  }
}
