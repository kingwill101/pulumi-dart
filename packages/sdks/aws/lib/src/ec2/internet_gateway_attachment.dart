import 'package:pulumi/pulumi.dart' as pulumi;
import 'internet_gateway_attachment_args.dart';
import 'internet_gateway_attachment_state.dart';

/// Provides a resource to create a VPC Internet Gateway Attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.1.0.0/16"});
/// const exampleInternetGateway = new aws.ec2.InternetGateway("example", {});
/// const example = new aws.ec2.InternetGatewayAttachment("example", {
///     internetGatewayId: exampleInternetGateway.id,
///     vpcId: exampleVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.1.0.0/16")
/// example_internet_gateway = aws.ec2.InternetGateway("example")
/// example = aws.ec2.InternetGatewayAttachment("example",
///     internet_gateway_id=example_internet_gateway.id,
///     vpc_id=example_vpc.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var exampleInternetGateway = new Aws.Ec2.InternetGateway("example");
///
///     var example = new Aws.Ec2.InternetGatewayAttachment("example", new()
///     {
///         InternetGatewayId = exampleInternetGateway.Id,
///         VpcId = exampleVpc.Id,
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
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInternetGateway, err := ec2.NewInternetGateway(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInternetGatewayAttachment(ctx, "example", &ec2.InternetGatewayAttachmentArgs{
/// 			InternetGatewayId: exampleInternetGateway.ID().ToIDOutput().ToStringOutput(),
/// 			VpcId:             exampleVpc.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_ec2_internetgatewayattachment" "example" {
///   internet_gateway_id = aws_ec2_internetgateway.example.id
///   vpc_id              = aws_ec2_vpc.example.id
/// }
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.1.0.0/16"
/// }
/// resource "aws_ec2_internetgateway" "example" {
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
/// import com.pulumi.aws.ec2.InternetGateway;
/// import com.pulumi.aws.ec2.InternetGatewayAttachment;
/// import com.pulumi.aws.ec2.InternetGatewayAttachmentArgs;
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
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var exampleInternetGateway = new InternetGateway("exampleInternetGateway");
///
///         var example = new InternetGatewayAttachment("example", InternetGatewayAttachmentArgs.builder()
///             .internetGatewayId(exampleInternetGateway.id())
///             .vpcId(exampleVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:InternetGatewayAttachment
///     properties:
///       internetGatewayId: ${exampleInternetGateway.id}
///       vpcId: ${exampleVpc.id}
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.1.0.0/16
///   exampleInternetGateway:
///     type: aws:ec2:InternetGateway
///     name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Internet Gateway Attachments using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/internetGatewayAttachment:InternetGatewayAttachment example igw-c0a643a9:vpc-123456
/// ```
class InternetGatewayAttachment extends pulumi.CustomResource {
  /// The ID of the internet gateway.
  late final pulumi.Output<String> internetGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [InternetGatewayAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InternetGatewayAttachment]. {@macro pulumi_ec2_internet_gateway_attachment_internet_gateway_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InternetGatewayAttachment(
    String name, {
    InternetGatewayAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/internetGatewayAttachment:InternetGatewayAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internetGatewayId = registerOutput<String>('internetGatewayId');
    region = registerOutput<String>('region');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [InternetGatewayAttachment] resource's state with the given [name] and [id].
  static InternetGatewayAttachment get(
    String name,
    pulumi.Input<String> id, {
    InternetGatewayAttachmentState? state,
  }) {
    return InternetGatewayAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InternetGatewayAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/internetGatewayAttachment:InternetGatewayAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internetGatewayId = registerOutput<String>('internetGatewayId');
    region = registerOutput<String>('region');
    vpcId = registerOutput<String>('vpcId');
  }
}
