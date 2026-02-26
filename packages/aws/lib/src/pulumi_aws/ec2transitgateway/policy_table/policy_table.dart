import 'package:pulumi/pulumi.dart';
import 'policy_table_args.dart';

/// Manages an EC2 Transit Gateway Policy Table.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PolicyTable("example", {
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
/// tags: {
/// Name: "Example Policy Table",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PolicyTable("example",
/// transit_gateway_id=example_aws_ec2_transit_gateway["id"],
/// tags={
/// "Name": "Example Policy Table",
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
/// var example = new Aws.Ec2TransitGateway.PolicyTable("example", new()
/// {
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
/// Tags =
/// {
/// { "Name", "Example Policy Table" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewPolicyTable(ctx, "example", &ec2transitgateway.PolicyTableArgs{
/// TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example Policy Table"),
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
/// import com.pulumi.aws.ec2transitgateway.PolicyTable;
/// import com.pulumi.aws.ec2transitgateway.PolicyTableArgs;
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
/// var example = new PolicyTable("example", PolicyTableArgs.builder()
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .tags(Map.of("Name", "Example Policy Table"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:PolicyTable
/// properties:
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// tags:
/// Name: Example Policy Table
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.PolicyTable`" pulumi-lang-dotnet="`aws.ec2transitgateway.PolicyTable`" pulumi-lang-go="`ec2transitgateway.PolicyTable`" pulumi-lang-python="`ec2transitgateway.PolicyTable`" pulumi-lang-yaml="`aws.ec2transitgateway.PolicyTable`" pulumi-lang-java="`aws.ec2transitgateway.PolicyTable`">`aws.ec2transitgateway.PolicyTable`</span> using the EC2 Transit Gateway Policy Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTable:PolicyTable example tgw-rtb-12345678
/// ```
class PolicyTable extends CustomResource {
  /// EC2 Transit Gateway Policy Table Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The state of the EC2 Transit Gateway Policy Table.
  late final Output<String> state;

  /// Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// EC2 Transit Gateway identifier.
  late final Output<String> transitGatewayId;

  PolicyTable(
    String name, {
    PolicyTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTable:PolicyTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
