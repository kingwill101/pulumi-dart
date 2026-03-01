import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_block_public_access_options_args.dart';
import 'vpc_block_public_access_options_timeouts.dart';

/// Resource for managing an AWS VPC Block Public Access Options.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcBlockPublicAccessOptions("example", {internetGatewayBlockMode: "block-bidirectional"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcBlockPublicAccessOptions("example", internet_gateway_block_mode="block-bidirectional")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcBlockPublicAccessOptions("example", new()
///     {
///         InternetGatewayBlockMode = "block-bidirectional",
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
/// 		_, err := ec2.NewVpcBlockPublicAccessOptions(ctx, "example", &ec2.VpcBlockPublicAccessOptionsArgs{
/// 			InternetGatewayBlockMode: pulumi.String("block-bidirectional"),
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
/// import com.pulumi.aws.ec2.VpcBlockPublicAccessOptions;
/// import com.pulumi.aws.ec2.VpcBlockPublicAccessOptionsArgs;
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
///         var example = new VpcBlockPublicAccessOptions("example", VpcBlockPublicAccessOptionsArgs.builder()
///             .internetGatewayBlockMode("block-bidirectional")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcBlockPublicAccessOptions
///     properties:
///       internetGatewayBlockMode: block-bidirectional
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Block Public Access Options using the `aws.getRegion`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcBlockPublicAccessOptions:VpcBlockPublicAccessOptions example us-east-1
/// ```
class VpcBlockPublicAccessOptions extends pulumi.CustomResource {
  /// The AWS account id to which these options apply.
  late final pulumi.Output<String> awsAccountId;
  /// The AWS region to which these options apply.
  late final pulumi.Output<String> awsRegion;
  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  late final pulumi.Output<String> internetGatewayBlockMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<VpcBlockPublicAccessOptionsTimeouts?> timeouts;

  /// Creates a new [VpcBlockPublicAccessOptions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcBlockPublicAccessOptions]. {@macro pulumi_ec2_vpc_block_public_access_options_vpc_block_public_access_options_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcBlockPublicAccessOptions(
    String name, {
    VpcBlockPublicAccessOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessOptions:VpcBlockPublicAccessOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.awsRegion = registerOutput<String>('awsRegion');
    this.internetGatewayBlockMode = registerOutput<String>('internetGatewayBlockMode');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<VpcBlockPublicAccessOptionsTimeouts?>('timeouts');
  }
}
