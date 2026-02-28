import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_association_args.dart';

/// Associates the specified subnet and transit gateway attachment with the specified transit gateway multicast domain.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.TransitGateway("example", {multicastSupport: "enable"});
/// const exampleVpcAttachment = new aws.ec2transitgateway.VpcAttachment("example", {
///     subnetIds: [exampleAwsSubnet.id],
///     transitGatewayId: example.id,
///     vpcId: exampleAwsVpc.id,
/// });
/// const exampleMulticastDomain = new aws.ec2transitgateway.MulticastDomain("example", {transitGatewayId: example.id});
/// const exampleMulticastDomainAssociation = new aws.ec2transitgateway.MulticastDomainAssociation("example", {
///     subnetId: exampleAwsSubnet.id,
///     transitGatewayAttachmentId: exampleVpcAttachment.id,
///     transitGatewayMulticastDomainId: exampleMulticastDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.TransitGateway("example", multicast_support="enable")
/// example_vpc_attachment = aws.ec2transitgateway.VpcAttachment("example",
///     subnet_ids=[example_aws_subnet["id"]],
///     transit_gateway_id=example.id,
///     vpc_id=example_aws_vpc["id"])
/// example_multicast_domain = aws.ec2transitgateway.MulticastDomain("example", transit_gateway_id=example.id)
/// example_multicast_domain_association = aws.ec2transitgateway.MulticastDomainAssociation("example",
///     subnet_id=example_aws_subnet["id"],
///     transit_gateway_attachment_id=example_vpc_attachment.id,
///     transit_gateway_multicast_domain_id=example_multicast_domain.id)
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
///         MulticastSupport = "enable",
///     });
///
///     var exampleVpcAttachment = new Aws.Ec2TransitGateway.VpcAttachment("example", new()
///     {
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         TransitGatewayId = example.Id,
///         VpcId = exampleAwsVpc.Id,
///     });
///
///     var exampleMulticastDomain = new Aws.Ec2TransitGateway.MulticastDomain("example", new()
///     {
///         TransitGatewayId = example.Id,
///     });
///
///     var exampleMulticastDomainAssociation = new Aws.Ec2TransitGateway.MulticastDomainAssociation("example", new()
///     {
///         SubnetId = exampleAwsSubnet.Id,
///         TransitGatewayAttachmentId = exampleVpcAttachment.Id,
///         TransitGatewayMulticastDomainId = exampleMulticastDomain.Id,
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
/// 		example, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			MulticastSupport: pulumi.String("enable"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpcAttachment, err := ec2transitgateway.NewVpcAttachment(ctx, "example", &ec2transitgateway.VpcAttachmentArgs{
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			TransitGatewayId: example.ID(),
/// 			VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMulticastDomain, err := ec2transitgateway.NewMulticastDomain(ctx, "example", &ec2transitgateway.MulticastDomainArgs{
/// 			TransitGatewayId: example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2transitgateway.NewMulticastDomainAssociation(ctx, "example", &ec2transitgateway.MulticastDomainAssociationArgs{
/// 			SubnetId:                        pulumi.Any(exampleAwsSubnet.Id),
/// 			TransitGatewayAttachmentId:      exampleVpcAttachment.ID(),
/// 			TransitGatewayMulticastDomainId: exampleMulticastDomain.ID(),
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
/// import com.pulumi.aws.ec2transitgateway.VpcAttachment;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentArgs;
/// import com.pulumi.aws.ec2transitgateway.MulticastDomain;
/// import com.pulumi.aws.ec2transitgateway.MulticastDomainArgs;
/// import com.pulumi.aws.ec2transitgateway.MulticastDomainAssociation;
/// import com.pulumi.aws.ec2transitgateway.MulticastDomainAssociationArgs;
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
///             .multicastSupport("enable")
///             .build());
///
///         var exampleVpcAttachment = new VpcAttachment("exampleVpcAttachment", VpcAttachmentArgs.builder()
///             .subnetIds(exampleAwsSubnet.id())
///             .transitGatewayId(example.id())
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///         var exampleMulticastDomain = new MulticastDomain("exampleMulticastDomain", MulticastDomainArgs.builder()
///             .transitGatewayId(example.id())
///             .build());
///
///         var exampleMulticastDomainAssociation = new MulticastDomainAssociation("exampleMulticastDomainAssociation", MulticastDomainAssociationArgs.builder()
///             .subnetId(exampleAwsSubnet.id())
///             .transitGatewayAttachmentId(exampleVpcAttachment.id())
///             .transitGatewayMulticastDomainId(exampleMulticastDomain.id())
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
///       multicastSupport: enable
///   exampleVpcAttachment:
///     type: aws:ec2transitgateway:VpcAttachment
///     name: example
///     properties:
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       transitGatewayId: ${example.id}
///       vpcId: ${exampleAwsVpc.id}
///   exampleMulticastDomain:
///     type: aws:ec2transitgateway:MulticastDomain
///     name: example
///     properties:
///       transitGatewayId: ${example.id}
///   exampleMulticastDomainAssociation:
///     type: aws:ec2transitgateway:MulticastDomainAssociation
///     name: example
///     properties:
///       subnetId: ${exampleAwsSubnet.id}
///       transitGatewayAttachmentId: ${exampleVpcAttachment.id}
///       transitGatewayMulticastDomainId: ${exampleMulticastDomain.id}
/// ```
class MulticastDomainAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the subnet to associate with the transit gateway multicast domain.
  late final pulumi.Output<String> subnetId;

  /// The ID of the transit gateway attachment.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// The ID of the transit gateway multicast domain.
  late final pulumi.Output<String> transitGatewayMulticastDomainId;

  /// Creates a new [MulticastDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastDomainAssociation]. {@macro pulumi_ec2transitgateway_multicast_domain_association_multicast_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastDomainAssociation(
    String name, {
    MulticastDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastDomainAssociation:MulticastDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
    this.transitGatewayMulticastDomainId =
        registerOutput<String>('transitGatewayMulticastDomainId');
  }
}
