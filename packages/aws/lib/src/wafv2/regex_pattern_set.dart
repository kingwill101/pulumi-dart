import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_args.dart';
import 'regex_pattern_set_regular_expression.dart';

/// Provides an AWS WAFv2 Regex Pattern Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.RegexPatternSet("example", {
///     name: "example",
///     description: "Example regex pattern set",
///     scope: "REGIONAL",
///     regularExpressions: [
///         {
///             regexString: "one",
///         },
///         {
///             regexString: "two",
///         },
///     ],
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.RegexPatternSet("example",
///     name="example",
///     description="Example regex pattern set",
///     scope="REGIONAL",
///     regular_expressions=[
///         {
///             "regex_string": "one",
///         },
///         {
///             "regex_string": "two",
///         },
///     ],
///     tags={
///         "Tag1": "Value1",
///         "Tag2": "Value2",
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
///     var example = new Aws.WafV2.RegexPatternSet("example", new()
///     {
///         Name = "example",
///         Description = "Example regex pattern set",
///         Scope = "REGIONAL",
///         RegularExpressions = new[]
///         {
///             new Aws.WafV2.Inputs.RegexPatternSetRegularExpressionArgs
///             {
///                 RegexString = "one",
///             },
///             new Aws.WafV2.Inputs.RegexPatternSetRegularExpressionArgs
///             {
///                 RegexString = "two",
///             },
///         },
///         Tags =
///         {
///             { "Tag1", "Value1" },
///             { "Tag2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewRegexPatternSet(ctx, "example", &wafv2.RegexPatternSetArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example regex pattern set"),
/// 			Scope:       pulumi.String("REGIONAL"),
/// 			RegularExpressions: wafv2.RegexPatternSetRegularExpressionArray{
/// 				&wafv2.RegexPatternSetRegularExpressionArgs{
/// 					RegexString: pulumi.String("one"),
/// 				},
/// 				&wafv2.RegexPatternSetRegularExpressionArgs{
/// 					RegexString: pulumi.String("two"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 				"Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.wafv2.RegexPatternSet;
/// import com.pulumi.aws.wafv2.RegexPatternSetArgs;
/// import com.pulumi.aws.wafv2.inputs.RegexPatternSetRegularExpressionArgs;
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
///         var example = new RegexPatternSet("example", RegexPatternSetArgs.builder()
///             .name("example")
///             .description("Example regex pattern set")
///             .scope("REGIONAL")
///             .regularExpressions(
///                 RegexPatternSetRegularExpressionArgs.builder()
///                     .regexString("one")
///                     .build(),
///                 RegexPatternSetRegularExpressionArgs.builder()
///                     .regexString("two")
///                     .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Tag1", "Value1"),
///                 Map.entry("Tag2", "Value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:RegexPatternSet
///     properties:
///       name: example
///       description: Example regex pattern set
///       scope: REGIONAL
///       regularExpressions:
///         - regexString: one
///         - regexString: two
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Regex Pattern Sets using `ID/name/scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/regexPatternSet:RegexPatternSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class RegexPatternSet extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the cluster.
  late final pulumi.Output<String> arn;

  /// A friendly description of the regular expression pattern set.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> lockToken;

  /// A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  late final pulumi.Output<List<RegexPatternSetRegularExpression>?>
  regularExpressions;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final pulumi.Output<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RegexPatternSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegexPatternSet]. {@macro pulumi_wafv2_regex_pattern_set_regex_pattern_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegexPatternSet(
    String name, {
    RegexPatternSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:wafv2/regexPatternSet:RegexPatternSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.regularExpressions =
        registerOutput<List<RegexPatternSetRegularExpression>?>(
          'regularExpressions',
        );
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
