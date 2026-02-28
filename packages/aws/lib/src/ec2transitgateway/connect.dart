import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_args.dart';

/// Manages an EC2 Transit Gateway Connect.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.VpcAttachment("example", {
///     subnetIds: [exampleAwsSubnet.id],
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
///     vpcId: exampleAwsVpc.id,
/// });
/// const attachment = new aws.ec2transitgateway.Connect("attachment", {
///     transportAttachmentId: example.id,
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.VpcAttachment("example",
///     subnet_ids=[example_aws_subnet["id"]],
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"],
///     vpc_id=example_aws_vpc["id"])
/// attachment = aws.ec2transitgateway.Connect("attachment",
///     transport_attachment_id=example.id,
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.VpcAttachment("example", new()
///     {
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///         VpcId = exampleAwsVpc.Id,
///     });
///
///     var attachment = new Aws.Ec2TransitGateway.Connect("attachment", new()
///     {
///         TransportAttachmentId = example.Id,
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
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
/// 		example, err := ec2transitgateway.NewVpcAttachment(ctx, "example", &ec2transitgateway.VpcAttachmentArgs{
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// 			VpcId:            pulumi.Any(exampleAwsVpc.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2transitgateway.NewConnect(ctx, "attachment", &ec2transitgateway.ConnectArgs{
/// 			TransportAttachmentId: example.ID(),
/// 			TransitGatewayId:      pulumi.Any(exampleAwsEc2TransitGateway.Id),
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
/// import com.pulumi.aws.ec2transitgateway.VpcAttachment;
/// import com.pulumi.aws.ec2transitgateway.VpcAttachmentArgs;
/// import com.pulumi.aws.ec2transitgateway.Connect;
/// import com.pulumi.aws.ec2transitgateway.ConnectArgs;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetIds(exampleAwsSubnet.id())
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///         var attachment = new Connect("attachment", ConnectArgs.builder()
///             .transportAttachmentId(example.id())
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:VpcAttachment
///     properties:
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
///       vpcId: ${exampleAwsVpc.id}
///   attachment:
///     type: aws:ec2transitgateway:Connect
///     properties:
///       transportAttachmentId: ${example.id}
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.Connect` using the EC2 Transit Gateway Connect identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/connect:Connect example tgw-attach-12345678
/// ```
class Connect extends pulumi.CustomResource {
  /// The tunnel protocol. Valid values: `gre`. Default is `gre`.
  late final pulumi.Output<String?> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  late final pulumi.Output<bool?> transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  late final pulumi.Output<bool?> transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  /// The underlaying VPC attachment
  late final pulumi.Output<String> transportAttachmentId;

  /// Creates a new [Connect].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connect]. {@macro pulumi_ec2transitgateway_connect_connect_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connect(
    String name, {
    ConnectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/connect:Connect',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.protocol = registerOutput<String?>('protocol');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayDefaultRouteTableAssociation =
        registerOutput<bool?>('transitGatewayDefaultRouteTableAssociation');
    this.transitGatewayDefaultRouteTablePropagation =
        registerOutput<bool?>('transitGatewayDefaultRouteTablePropagation');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
    this.transportAttachmentId =
        registerOutput<String>('transportAttachmentId');
  }
}
