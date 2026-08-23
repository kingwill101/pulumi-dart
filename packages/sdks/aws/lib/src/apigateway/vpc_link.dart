import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_link_args.dart';
import 'vpc_link_state.dart';

/// Provides an API Gateway VPC Link.
///
/// &gt; **Note:** Amazon API Gateway Version 1 VPC Links enable private integrations that connect REST APIs to private resources in a VPC.
/// To enable private integration for HTTP APIs, use the Amazon API Gateway Version 2 VPC Link resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
///     name: "example",
///     internal: true,
///     loadBalancerType: "network",
///     subnetMappings: [{
///         subnetId: "12345",
///     }],
/// });
/// const exampleVpcLink = new aws.apigateway.VpcLink("example", {
///     name: "example",
///     description: "example description",
///     targetArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
///     name="example",
///     internal=True,
///     load_balancer_type="network",
///     subnet_mappings=[{
///         "subnet_id": "12345",
///     }])
/// example_vpc_link = aws.apigateway.VpcLink("example",
///     name="example",
///     description="example description",
///     target_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LB.LoadBalancer("example", new()
///     {
///         Name = "example",
///         Internal = true,
///         LoadBalancerType = "network",
///         SubnetMappings = new[]
///         {
///             new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
///             {
///                 SubnetId = "12345",
///             },
///         },
///     });
///
///     var exampleVpcLink = new Aws.ApiGateway.VpcLink("example", new()
///     {
///         Name = "example",
///         Description = "example description",
///         TargetArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:             pulumi.String("example"),
/// 			Internal:         pulumi.Bool(true),
/// 			LoadBalancerType: pulumi.String("network"),
/// 			SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// 				&lb.LoadBalancerSubnetMappingArgs{
/// 					SubnetId: pulumi.String("12345"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewVpcLink(ctx, "example", &apigateway.VpcLinkArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example description"),
/// 			TargetArn:   example.Arn,
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
/// resource "aws_lb_loadbalancer" "example" {
///   name               = "example"
///   internal           = true
///   load_balancer_type = "network"
///   subnet_mappings {
///     subnet_id = "12345"
///   }
/// }
/// resource "aws_apigateway_vpclink" "example" {
///   name        = "example"
///   description = "example description"
///   target_arn  = aws_lb_loadbalancer.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.inputs.LoadBalancerSubnetMappingArgs;
/// import com.pulumi.aws.apigateway.VpcLink;
/// import com.pulumi.aws.apigateway.VpcLinkArgs;
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
///         var example = new LoadBalancer("example", LoadBalancerArgs.builder()
///             .name("example")
///             .internal(true)
///             .loadBalancerType("network")
///             .subnetMappings(LoadBalancerSubnetMappingArgs.builder()
///                 .subnetId("12345")
///                 .build())
///             .build());
///
///         var exampleVpcLink = new VpcLink("exampleVpcLink", VpcLinkArgs.builder()
///             .name("example")
///             .description("example description")
///             .targetArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lb:LoadBalancer
///     properties:
///       name: example
///       internal: true
///       loadBalancerType: network
///       subnetMappings:
///         - subnetId: '12345'
///   exampleVpcLink:
///     type: aws:apigateway:VpcLink
///     name: example
///     properties:
///       name: example
///       description: example description
///       targetArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway VPC Link using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/vpcLink:VpcLink example 12345abcde
/// ```
class VpcLink extends pulumi.CustomResource {
  /// ARN of the VPC link.
  late final pulumi.Output<String> arn;
  /// Description of the VPC link.
  late final pulumi.Output<String?> description;
  /// Name used to label and identify the VPC link.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  late final pulumi.Output<String> targetArn;

  /// Creates a new [VpcLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcLink]. {@macro pulumi_apigateway_vpc_link_vpc_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcLink(
    String name, {
    VpcLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/vpcLink:VpcLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
  }

  /// Gets an existing [VpcLink] resource's state with the given [name] and [id].
  static VpcLink get(
    String name,
    pulumi.Input<String> id, {
    VpcLinkState? state,
  }) {
    return VpcLink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcLink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/vpcLink:VpcLink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
  }
}
