import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_match_set_args.dart';
import 'regex_match_set_regex_match_tuple.dart';
import 'regex_match_set_state.dart';

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
///     regexMatchTuples: [{
///         fieldToMatch: {
///             data: "User-Agent",
///             type: "HEADER",
///         },
///         regexPatternSetId: exampleRegexPatternSet.id,
///         textTransformation: "NONE",
///     }],
///     name: "example",
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
///     regex_match_tuples=[{
///         "field_to_match": {
///             "data": "User-Agent",
///             "type": "HEADER",
///         },
///         "regex_pattern_set_id": example_regex_pattern_set.id,
///         "text_transformation": "NONE",
///     }],
///     name="example")
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
///         Name = "example",
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
/// 			RegexMatchTuples: waf.RegexMatchSetRegexMatchTupleArray{
/// 				&waf.RegexMatchSetRegexMatchTupleArgs{
/// 					FieldToMatch: &waf.RegexMatchSetRegexMatchTupleFieldToMatchArgs{
/// 						Data: pulumi.String("User-Agent"),
/// 						Type: pulumi.String("HEADER"),
/// 					},
/// 					RegexPatternSetId:  exampleRegexPatternSet.ID().ToIDOutput().ToStringOutput(),
/// 					TextTransformation: pulumi.String("NONE"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_waf_regexmatchset" "example" {
///   regex_match_tuples {
///     field_to_match = {
///       data = "User-Agent"
///       type = "HEADER"
///     }
///     regex_pattern_set_id = aws_waf_regexpatternset.example.id
///     text_transformation  = "NONE"
///   }
///   name = "example"
/// }
/// resource "aws_waf_regexpatternset" "example" {
///   name                  = "example"
///   regex_pattern_strings = ["one", "two"]
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
///         var exampleRegexPatternSet = new RegexPatternSet("exampleRegexPatternSet", RegexPatternSetArgs.builder()
///             .name("example")
///             .regexPatternStrings(
///                 "one",
///                 "two")
///             .build());
///
///         var example = new RegexMatchSet("example", RegexMatchSetArgs.builder()
///             .regexMatchTuples(RegexMatchSetRegexMatchTupleArgs.builder()
///                 .fieldToMatch(RegexMatchSetRegexMatchTupleFieldToMatchArgs.builder()
///                     .data("User-Agent")
///                     .type("HEADER")
///                     .build())
///                 .regexPatternSetId(exampleRegexPatternSet.id())
///                 .textTransformation("NONE")
///                 .build())
///             .name("example")
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
///       regexMatchTuples:
///         - fieldToMatch:
///             data: User-Agent
///             type: HEADER
///           regexPatternSetId: ${exampleRegexPatternSet.id}
///           textTransformation: NONE
///       name: example
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
  /// ARN
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    regexMatchTuples = registerOutput<List<RegexMatchSetRegexMatchTuple>?>('regexMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(guardedValue, (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [RegexMatchSet] resource's state with the given [name] and [id].
  static RegexMatchSet get(
    String name,
    pulumi.Input<String> id, {
    RegexMatchSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegexMatchSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegexMatchSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/regexMatchSet:RegexMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    regexMatchTuples = registerOutput<List<RegexMatchSetRegexMatchTuple>?>('regexMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(guardedValue, (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RegexMatchSet] resource.
  RegexMatchSet.reference(String urn)
    : super(
        'aws:waf/regexMatchSet:RegexMatchSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    regexMatchTuples = registerOutput<List<RegexMatchSetRegexMatchTuple>?>('regexMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegexMatchSetRegexMatchTuple>(guardedValue, (value) => RegexMatchSetRegexMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
