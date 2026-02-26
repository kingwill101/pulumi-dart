import 'package:pulumi/pulumi.dart';
import 'carrier_gateway_args.dart';

/// Manages an EC2 Carrier Gateway. See the AWS [documentation](https://docs.aws.amazon.com/vpc/latest/userguide/Carrier_Gateway.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.CarrierGateway("example", {
/// vpcId: exampleAwsVpc.id,
/// tags: {
/// Name: "example-carrier-gateway",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.CarrierGateway("example",
/// vpc_id=example_aws_vpc["id"],
/// tags={
/// "Name": "example-carrier-gateway",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.CarrierGateway("example", new()
/// {
/// VpcId = exampleAwsVpc.Id,
/// Tags =
/// {
/// { "Name", "example-carrier-gateway" },
/// },
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
/// _, err := ec2.NewCarrierGateway(ctx, "example", &ec2.CarrierGatewayArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-carrier-gateway"),
/// },
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
/// import com.pulumi.aws.ec2.CarrierGateway;
/// import com.pulumi.aws.ec2.CarrierGatewayArgs;
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
/// var example = new CarrierGateway("example", CarrierGatewayArgs.builder()
/// .vpcId(exampleAwsVpc.id())
/// .tags(Map.of("Name", "example-carrier-gateway"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:CarrierGateway
/// properties:
/// vpcId: ${exampleAwsVpc.id}
/// tags:
/// Name: example-carrier-gateway
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2.CarrierGateway`" pulumi-lang-dotnet="`aws.ec2.CarrierGateway`" pulumi-lang-go="`ec2.CarrierGateway`" pulumi-lang-python="`ec2.CarrierGateway`" pulumi-lang-yaml="`aws.ec2.CarrierGateway`" pulumi-lang-java="`aws.ec2.CarrierGateway`">`aws.ec2.CarrierGateway`</span> using the carrier gateway's ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/carrierGateway:CarrierGateway example cgw-12345
/// ```
class CarrierGateway extends CustomResource {
  /// The ARN of the carrier gateway.
  late final Output<String> arn;

  /// The AWS account ID of the owner of the carrier gateway.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the VPC to associate with the carrier gateway.
  late final Output<String> vpcId;

  CarrierGateway(
    String name, {
    CarrierGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/carrierGateway:CarrierGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
