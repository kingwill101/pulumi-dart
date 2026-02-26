import 'package:pulumi/pulumi.dart';
import 'vpc_link_args2.dart';

/// Manages an Amazon API Gateway Version 2 VPC Link.
///
/// > **Note:** Amazon API Gateway Version 2 VPC Links enable private integrations that connect HTTP APIs to private resources in a VPC.
/// To enable private integration for REST APIs, use the Amazon API Gateway Version 1 VPC Link resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.VpcLink("example", {
/// name: "example",
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// subnetIds: exampleAwsSubnets.ids,
/// tags: {
/// Usage: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.VpcLink("example",
/// name="example",
/// security_group_ids=[example_aws_security_group["id"]],
/// subnet_ids=example_aws_subnets["ids"],
/// tags={
/// "Usage": "example",
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
/// var example = new Aws.ApiGatewayV2.VpcLink("example", new()
/// {
/// Name = "example",
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds = exampleAwsSubnets.Ids,
/// Tags =
/// {
/// { "Usage", "example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewVpcLink(ctx, "example", &apigatewayv2.VpcLinkArgs{
/// Name: pulumi.String("example"),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds: pulumi.Any(exampleAwsSubnets.Ids),
/// Tags: pulumi.StringMap{
/// "Usage": pulumi.String("example"),
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
/// import com.pulumi.aws.apigatewayv2.VpcLink;
/// import com.pulumi.aws.apigatewayv2.VpcLinkArgs;
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
/// var example = new VpcLink("example", VpcLinkArgs.builder()
/// .name("example")
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .subnetIds(exampleAwsSubnets.ids())
/// .tags(Map.of("Usage", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:VpcLink
/// properties:
/// name: example
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// subnetIds: ${exampleAwsSubnets.ids}
/// tags:
/// Usage: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.VpcLink`" pulumi-lang-dotnet="`aws.apigatewayv2.VpcLink`" pulumi-lang-go="`apigatewayv2.VpcLink`" pulumi-lang-python="`apigatewayv2.VpcLink`" pulumi-lang-yaml="`aws.apigatewayv2.VpcLink`" pulumi-lang-java="`aws.apigatewayv2.VpcLink`">`aws.apigatewayv2.VpcLink`</span> using the VPC Link identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/vpcLink:VpcLink example aabbccddee
/// ```
class VpcLink2 extends CustomResource {
  /// VPC Link ARN.
  late final Output<String> arn;

  /// Name of the VPC Link. Must be between 1 and 128 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Security group IDs for the VPC Link.
  late final Output<List<String>> securityGroupIds;

  /// Subnet IDs for the VPC Link.
  late final Output<List<String>> subnetIds;

  /// Map of tags to assign to the VPC Link. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcLink2(
    String name, {
    VpcLinkArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/vpcLink:VpcLink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
