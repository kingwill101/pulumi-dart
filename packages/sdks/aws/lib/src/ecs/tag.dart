import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Manages an individual ECS resource tag. This resource should only be used in cases where ECS resources are created outside the provider (e.g., ECS Clusters implicitly created by Batch Compute Environments).
///
/// &gt; **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.ecs.Cluster` and `aws.ecs.Tag` to manage tags of the same ECS Cluster will cause a perpetual difference where the `aws.ecs.Cluster` resource will try to remove the tag being added by the `aws.ecs.Tag` resource.
///
/// &gt; **NOTE:** This tagging resource does not use the provider `ignoreTags` configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.batch.ComputeEnvironment("example", {
///     name: "example",
///     serviceRole: exampleAwsIamRole.arn,
///     type: "UNMANAGED",
/// });
/// const exampleTag = new aws.ecs.Tag("example", {
///     resourceArn: example.ecsClusterArn,
///     key: "Name",
///     value: "Hello World",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.batch.ComputeEnvironment("example",
///     name="example",
///     service_role=example_aws_iam_role["arn"],
///     type="UNMANAGED")
/// example_tag = aws.ecs.Tag("example",
///     resource_arn=example.ecs_cluster_arn,
///     key="Name",
///     value="Hello World")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Batch.ComputeEnvironment("example", new()
///     {
///         Name = "example",
///         ServiceRole = exampleAwsIamRole.Arn,
///         Type = "UNMANAGED",
///     });
///
///     var exampleTag = new Aws.Ecs.Tag("example", new()
///     {
///         ResourceArn = example.EcsClusterArn,
///         Key = "Name",
///         Value = "Hello World",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := batch.NewComputeEnvironment(ctx, "example", &batch.ComputeEnvironmentArgs{
/// 			Name:        pulumi.String("example"),
/// 			ServiceRole: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Type:        pulumi.String("UNMANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewTag(ctx, "example", &ecs.TagArgs{
/// 			ResourceArn: example.EcsClusterArn,
/// 			Key:         pulumi.String("Name"),
/// 			Value:       pulumi.String("Hello World"),
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
/// resource "aws_batch_computeenvironment" "example" {
///   name         = "example"
///   service_role = exampleAwsIamRole.arn
///   type         = "UNMANAGED"
/// }
/// resource "aws_ecs_tag" "example" {
///   resource_arn = aws_batch_computeenvironment.example.ecs_cluster_arn
///   key          = "Name"
///   value        = "Hello World"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.batch.ComputeEnvironment;
/// import com.pulumi.aws.batch.ComputeEnvironmentArgs;
/// import com.pulumi.aws.ecs.Tag;
/// import com.pulumi.aws.ecs.TagArgs;
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
///         var example = new ComputeEnvironment("example", ComputeEnvironmentArgs.builder()
///             .name("example")
///             .serviceRole(exampleAwsIamRole.arn())
///             .type("UNMANAGED")
///             .build());
///
///         var exampleTag = new Tag("exampleTag", TagArgs.builder()
///             .resourceArn(example.ecsClusterArn())
///             .key("Name")
///             .value("Hello World")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:batch:ComputeEnvironment
///     properties:
///       name: example
///       serviceRole: ${exampleAwsIamRole.arn}
///       type: UNMANAGED
///   exampleTag:
///     type: aws:ecs:Tag
///     name: example
///     properties:
///       resourceArn: ${example.ecsClusterArn}
///       key: Name
///       value: Hello World
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ecs.Tag` using the ECS resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ecs/tag:Tag example arn:aws:ecs:us-east-1:123456789012:cluster/example,Name
/// ```
class Tag extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of the ECS resource to tag.
  late final pulumi.Output<String> resourceArn;
  /// Tag value.
  late final pulumi.Output<String> value;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_ecs_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    value = registerOutput<String>('value');
  }
}
