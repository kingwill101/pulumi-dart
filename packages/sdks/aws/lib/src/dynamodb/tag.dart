import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Manages an individual DynamoDB resource tag. This resource should only be used in cases where DynamoDB resources are created outside the provider (e.g., Table replicas in other regions).
///
/// &gt; **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using `aws.dynamodb.Table` and `aws.dynamodb.Tag` to manage tags of the same DynamoDB Table in the same region will cause a perpetual difference where the `aws.dynamodb.Table` resource will try to remove the tag being added by the `aws.dynamodb.Tag` resource.
///
/// &gt; **NOTE:** This tagging resource does not use the provider `ignoreTags` configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const replica = aws.getRegion({});
/// const current = aws.getRegion({});
/// const example = new aws.dynamodb.Table("example", {replicas: [{
///     regionName: replica.then(replica => replica.region),
/// }]});
/// const test = new aws.dynamodb.Tag("test", {
///     resourceArn: std.replaceOutput({
///         text: example.arn,
///         search: current.then(current => current.region),
///         replace: replica.then(replica => replica.region),
///     }).result,
///     key: "testkey",
///     value: "testvalue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// replica = aws.get_region()
/// current = aws.get_region()
/// example = aws.dynamodb.Table("example", replicas=[{
///     "region_name": replica.region,
/// }])
/// test = aws.dynamodb.Tag("test",
///     resource_arn=std.replace_output(text=example.arn,
///         search=current.region,
///         replace=replica.region).result,
///     key="testkey",
///     value="testvalue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replica = Aws.GetRegion.Invoke();
///
///     var current = Aws.GetRegion.Invoke();
///
///     var example = new Aws.DynamoDB.Table("example", new()
///     {
///         Replicas = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableReplicaArgs
///             {
///                 RegionName = replica.Apply(getRegionResult => getRegionResult.Region),
///             },
///         },
///     });
///
///     var test = new Aws.DynamoDB.Tag("test", new()
///     {
///         ResourceArn = Std.Replace.Invoke(new()
///         {
///             Text = example.Arn,
///             Search = current.Apply(getRegionResult => getRegionResult.Region),
///             Replace = replica.Apply(getRegionResult => getRegionResult.Region),
///         }).Apply(invoke => invoke.Result),
///         Key = "testkey",
///         Value = "testvalue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		replica, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// 			Replicas: dynamodb.TableReplicaTypeArray{
/// 				&dynamodb.TableReplicaTypeArgs{
/// 					RegionName: pulumi.String(replica.Region),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dynamodb.NewTag(ctx, "test", &dynamodb.TagArgs{
/// 			ResourceArn: std.ReplaceOutput(ctx, std.ReplaceOutputArgs{
/// 				Text:    example.Arn,
/// 				Search:  pulumi.String(current.Region),
/// 				Replace: pulumi.String(replica.Region),
/// 			}, nil).Result(),
/// 			Key:   pulumi.String("testkey"),
/// 			Value: pulumi.String("testvalue"),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_getregion" "replica" {
/// }
/// data "aws_getregion" "current" {
/// }
///
/// resource "aws_dynamodb_table" "example" {
///   replicas {
///     region_name = data.aws_getregion.replica.region
///   }
/// }
/// resource "aws_dynamodb_tag" "test" {
///   resource_arn = replace(aws_dynamodb_table.example.arn, data.aws_getregion.current.region, data.aws_getregion.replica.region)
///   key          = "testkey"
///   value        = "testvalue"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableReplicaArgs;
/// import com.pulumi.aws.dynamodb.Tag;
/// import com.pulumi.aws.dynamodb.TagArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
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
///         final var replica = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Table("example", TableArgs.builder()
///             .replicas(TableReplicaArgs.builder()
///                 .regionName(replica.region())
///                 .build())
///             .build());
///
///         var test = new Tag("test", TagArgs.builder()
///             .resourceArn(StdFunctions.replace(ReplaceArgs.builder()
///                 .text(example.arn())
///                 .search(current.region())
///                 .replace(replica.region())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .key("testkey")
///             .value("testvalue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dynamodb:Table
///     properties:
///       replicas:
///         - regionName: ${replica.region}
///   test:
///     type: aws:dynamodb:Tag
///     properties:
///       resourceArn:
///         fn::invoke:
///           function: std:replace
///           arguments:
///             text: ${example.arn}
///             search: ${current.region}
///             replace: ${replica.region}
///           return: result
///       key: testkey
///       value: testvalue
/// variables:
///   replica:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.dynamodb.Tag` using the DynamoDB resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/tag:Tag example arn:aws:dynamodb:us-east-1:123456789012:table/example,Name
/// ```
class Tag extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of the DynamoDB resource to tag.
  late final pulumi.Output<String> resourceArn;
  /// Tag value.
  late final pulumi.Output<String> value;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_dynamodb_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tag:Tag',
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
          'aws:dynamodb/tag:Tag',
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
