import 'package:pulumi/pulumi.dart' as pulumi;
import 'lf_tag_expression_args.dart';
import 'lf_tag_expression_expression.dart';

/// Resource for managing an AWS Lake Formation LF Tag Expression.
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
/// const example = new aws.lakeformation.LfTag("example", {
///     key: "example",
///     values: ["value"],
/// });
/// const exampleLfTagExpression = new aws.lakeformation.LfTagExpression("example", {
///     name: "example",
///     expressions: [{
///         tagKey: example.key,
///         tagValues: example.values,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.LfTag("example",
///     key="example",
///     values=["value"])
/// example_lf_tag_expression = aws.lakeformation.LfTagExpression("example",
///     name="example",
///     expressions=[{
///         "tag_key": example.key,
///         "tag_values": example.values,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.LfTag("example", new()
///     {
///         Key = "example",
///         Values = new[]
///         {
///             "value",
///         },
///     });
///
///     var exampleLfTagExpression = new Aws.LakeFormation.LfTagExpression("example", new()
///     {
///         Name = "example",
///         Expressions = new[]
///         {
///             new Aws.LakeFormation.Inputs.LfTagExpressionExpressionArgs
///             {
///                 TagKey = example.Key,
///                 TagValues = example.Values,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := lakeformation.NewLfTag(ctx, "example", &lakeformation.LfTagArgs{
/// 			Key: pulumi.String("example"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lakeformation.NewLfTagExpression(ctx, "example", &lakeformation.LfTagExpressionArgs{
/// 			Name: pulumi.String("example"),
/// 			Expressions: lakeformation.LfTagExpressionExpressionArray{
/// 				&lakeformation.LfTagExpressionExpressionArgs{
/// 					TagKey:    example.Key,
/// 					TagValues: example.Values,
/// 				},
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
/// import com.pulumi.aws.lakeformation.LfTag;
/// import com.pulumi.aws.lakeformation.LfTagArgs;
/// import com.pulumi.aws.lakeformation.LfTagExpression;
/// import com.pulumi.aws.lakeformation.LfTagExpressionArgs;
/// import com.pulumi.aws.lakeformation.inputs.LfTagExpressionExpressionArgs;
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
///         var example = new LfTag("example", LfTagArgs.builder()
///             .key("example")
///             .values("value")
///             .build());
///
///         var exampleLfTagExpression = new LfTagExpression("exampleLfTagExpression", LfTagExpressionArgs.builder()
///             .name("example")
///             .expressions(LfTagExpressionExpressionArgs.builder()
///                 .tagKey(example.key())
///                 .tagValues(example.values())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:LfTag
///     properties:
///       key: example
///       values:
///         - value
///   exampleLfTagExpression:
///     type: aws:lakeformation:LfTagExpression
///     name: example
///     properties:
///       name: example
///       expressions:
///         - tagKey: ${example.key}
///           tagValues: ${example.values}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation LF Tag Expression using the `name,catalog_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/lfTagExpression:LfTagExpression example example-tag-expression,123456789012
/// ```
class LfTagExpression extends pulumi.CustomResource {
  /// ID of the Data Catalog. Defaults to the account ID if not specified.
  late final pulumi.Output<String> catalogId;

  /// Description of the LF-Tag Expression.
  late final pulumi.Output<String?> description;

  /// A list of LF-Tag conditions (key-value pairs). See expression for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<LfTagExpressionExpression>> expressions;

  /// Name of the LF-Tag Expression.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LfTagExpression].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LfTagExpression]. {@macro pulumi_lakeformation_lf_tag_expression_lf_tag_expression_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LfTagExpression(
    String name, {
    LfTagExpressionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/lfTagExpression:LfTagExpression',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.description = registerOutput<String?>('description');
    this.expressions =
        registerOutput<List<LfTagExpressionExpression>>('expressions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
