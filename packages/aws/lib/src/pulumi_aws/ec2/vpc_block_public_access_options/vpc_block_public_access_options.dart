import 'package:pulumi/pulumi.dart';
import '../vpc_block_public_access_options_timeouts/vpc_block_public_access_options_timeouts.dart';
import 'vpc_block_public_access_options_args.dart';

/// Resource for managing an AWS VPC Block Public Access Options.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Ec2.VpcBlockPublicAccessOptions("example", new()
/// {
/// InternetGatewayBlockMode = "block-bidirectional",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewVpcBlockPublicAccessOptions(ctx, "example", &ec2.VpcBlockPublicAccessOptionsArgs{
/// InternetGatewayBlockMode: pulumi.String("block-bidirectional"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new VpcBlockPublicAccessOptions("example", VpcBlockPublicAccessOptionsArgs.builder()
/// .internetGatewayBlockMode("block-bidirectional")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcBlockPublicAccessOptions
/// properties:
/// internetGatewayBlockMode: block-bidirectional
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Block Public Access Options using the <span pulumi-lang-nodejs="`aws.getRegion`" pulumi-lang-dotnet="`aws.getRegion`" pulumi-lang-go="`getRegion`" pulumi-lang-python="`get_region`" pulumi-lang-yaml="`aws.getRegion`" pulumi-lang-java="`aws.getRegion`">`aws.getRegion`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcBlockPublicAccessOptions:VpcBlockPublicAccessOptions example us-east-1
/// ```
class VpcBlockPublicAccessOptions extends CustomResource {
  /// The AWS account id to which these options apply.
  late final Output<String> awsAccountId;

  /// The AWS region to which these options apply.
  late final Output<String> awsRegion;

  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span>. If this resource is deleted, then this value will be set to <span pulumi-lang-nodejs="`off`" pulumi-lang-dotnet="`Off`" pulumi-lang-go="`off`" pulumi-lang-python="`off`" pulumi-lang-yaml="`off`" pulumi-lang-java="`off`">`off`</span> in the AWS account and region.
  late final Output<String> internetGatewayBlockMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<VpcBlockPublicAccessOptionsTimeouts?> timeouts;

  VpcBlockPublicAccessOptions(
    String name, {
    VpcBlockPublicAccessOptionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessOptions:VpcBlockPublicAccessOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = Output.createUnknown<String>();
    this.awsRegion = Output.createUnknown<String>();
    this.internetGatewayBlockMode = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.timeouts =
        Output.createUnknown<VpcBlockPublicAccessOptionsTimeouts?>();
  }
}
