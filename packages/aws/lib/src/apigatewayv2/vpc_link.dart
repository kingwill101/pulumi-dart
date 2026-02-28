import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_link_args.dart';

/// Manages an Amazon API Gateway Version 2 VPC Link.
///
/// > **Note:** Amazon API Gateway Version 2 VPC Links enable private integrations that connect HTTP APIs to private resources in a VPC.
/// To enable private integration for REST APIs, use the Amazon API Gateway Version 1 VPC Link resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.VpcLink("example", {
///     name: "example",
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     subnetIds: exampleAwsSubnets.ids,
///     tags: {
///         Usage: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.VpcLink("example",
///     name="example",
///     security_group_ids=[example_aws_security_group["id"]],
///     subnet_ids=example_aws_subnets["ids"],
///     tags={
///         "Usage": "example",
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
///     var example = new Aws.ApiGatewayV2.VpcLink("example", new()
///     {
///         Name = "example",
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         SubnetIds = exampleAwsSubnets.Ids,
///         Tags =
///         {
///             { "Usage", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewVpcLink(ctx, "example", &apigatewayv2.VpcLinkArgs{
/// 			Name: pulumi.String("example"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			SubnetIds: pulumi.Any(exampleAwsSubnets.Ids),
/// 			Tags: pulumi.StringMap{
/// 				"Usage": pulumi.String("example"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new VpcLink("example", VpcLinkArgs.builder()
///             .name("example")
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .subnetIds(exampleAwsSubnets.ids())
///             .tags(Map.of("Usage", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:VpcLink
///     properties:
///       name: example
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       subnetIds: ${exampleAwsSubnets.ids}
///       tags:
///         Usage: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.VpcLink` using the VPC Link identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/vpcLink:VpcLink example aabbccddee
/// ```
class VpcLink extends pulumi.CustomResource {
  /// VPC Link ARN.
  late final pulumi.Output<String> arn;

  /// Name of the VPC Link. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Security group IDs for the VPC Link.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Subnet IDs for the VPC Link.
  late final pulumi.Output<List<String>> subnetIds;

  /// Map of tags to assign to the VPC Link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcLink]. {@macro pulumi_apigatewayv2_vpc_link_vpc_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcLink(
    String name, {
    VpcLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/vpcLink:VpcLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
