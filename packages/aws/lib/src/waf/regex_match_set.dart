import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_match_set_args.dart';
import 'regex_match_set_regex_match_tuple.dart';

/// Provides a WAF Regex Match Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRegexPatternSet = new aws.waf.RegexPatternSet("example", {
///     name: "example",
///     regexPatternStrings: [
///         "one",
///         "two",
///     ],
/// });
/// const example = new aws.waf.RegexMatchSet("example", {
///     name: "example",
///     regexMatchTuples: [{
///         fieldToMatch: {
///             data: "User-Agent",
///             type: "HEADER",
///         },
///         regexPatternSetId: exampleRegexPatternSet.id,
///         textTransformation: "NONE",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_regex_pattern_set = aws.waf.RegexPatternSet("example",
///     name="example",
///     regex_pattern_strings=[
///         "one",
///         "two",
///     ])
/// example = aws.waf.RegexMatchSet("example",
///     name="example",
///     regex_match_tuples=[{
///         "field_to_match": {
///             "data": "User-Agent",
///             "type": "HEADER",
///         },
///         "regex_pattern_set_id": example_regex_pattern_set.id,
///         "text_transformation": "NONE",
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
///     var exampleRegexPatternSet = new Aws.Waf.RegexPatternSet("example", new()
///     {
///         Name = "example",
///         RegexPatternStrings = new[]
///         {
///             "one",
///             "two",
///         },
///     });
///
///     var example = new Aws.Waf.RegexMatchSet("example", new()
///     {
///         Name = "example",
///         RegexMatchTuples = new[]
///         {
///             new Aws.Waf.Inputs.RegexMatchSetRegexMatchTupleArgs
///             {
///                 FieldToMatch = new Aws.Waf.Inputs.RegexMatchSetRegexMatchTupleFieldToMatchArgs
///                 {
///                     Data = "User-Agent",
///                     Type = "HEADER",
///                 },
///                 RegexPatternSetId = exampleRegexPatternSet.Id,
///                 TextTransformation = "NONE",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleRegexPatternSet, err := waf.NewRegexPatternSet(ctx, "example", &waf.RegexPatternSetArgs{
/// 			Name: pulumi.String("example"),
/// 			RegexPatternStrings: pulumi.StringArray{
/// 				pulumi.String("one"),
/// 				pulumi.String("two"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.NewRegexMatchSet(ctx, "example", &waf.RegexMatchSetArgs{
/// 			Name: pulumi.String("example"),
/// 			RegexMatchTuples: waf.RegexMatchSetRegexMatchTupleArray{
/// 				&waf.RegexMatchSetRegexMatchTupleArgs{
/// 					FieldToMatch: &waf.RegexMatchSetRegexMatchTupleFieldToMatchArgs{
/// 						Data: pulumi.String("User-Agent"),
/// 						Type: pulumi.String("HEADER"),
/// 					},
/// 					RegexPatternSetId:  exampleRegexPatternSet.ID(),
/// 					TextTransformation: pulumi.String("NONE"),
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
/// import com.pulumi.aws.waf.RegexPatternSet;
/// import com.pulumi.aws.waf.RegexPatternSetArgs;
/// import com.pulumi.aws.waf.RegexMatchSet;
/// import com.pulumi.aws.waf.RegexMatchSetArgs;
/// import com.pulumi.aws.waf.inputs.RegexMatchSetRegexMatchTupleArgs;
/// import com.pulumi.aws.waf.inputs.RegexMatchSetRegexMatchTupleFieldToMatchArgs;
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
///         var exampleRegexPatternSet = new RegexPatternSet("exampleRegexPatternSet", RegexPatternSetArgs.builder()
///             .name("example")
///             .regexPatternStrings(
///                 "one",
///                 "two")
///             .build());
///
///         var example = new RegexMatchSet("example", RegexMatchSetArgs.builder()
///             .name("example")
///             .regexMatchTuples(RegexMatchSetRegexMatchTupleArgs.builder()
///                 .fieldToMatch(RegexMatchSetRegexMatchTupleFieldToMatchArgs.builder()
///                     .data("User-Agent")
///                     .type("HEADER")
///                     .build())
///                 .regexPatternSetId(exampleRegexPatternSet.id())
///                 .textTransformation("NONE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:waf:RegexMatchSet
///     properties:
///       name: example
///       regexMatchTuples:
///         - fieldToMatch:
///             data: User-Agent
///             type: HEADER
///           regexPatternSetId: ${exampleRegexPatternSet.id}
///           textTransformation: NONE
///   exampleRegexPatternSet:
///     type: aws:waf:RegexPatternSet
///     name: example
///     properties:
///       name: example
///       regexPatternStrings:
///         - one
///         - two
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regex Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/regexMatchSet:RegexMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexMatchSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;
  /// The name or description of the Regex Match Set.
  late final pulumi.Output<String> name;
  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  late final pulumi.Output<List<RegexMatchSetRegexMatchTuple>?> regexMatchTuples;

  /// Creates a new [RegexMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegexMatchSet]. {@macro pulumi_waf_regex_match_set_regex_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegexMatchSet(
    String name, {
    RegexMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/regexMatchSet:RegexMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.regexMatchTuples = registerOutput<List<RegexMatchSetRegexMatchTuple>?>('regexMatchTuples');
  }
}
