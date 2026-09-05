import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_args.dart';
import 'regex_pattern_set_regular_expression.dart';
import 'regex_pattern_set_state.dart';

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
///     regularExpressions: [
///         {
///             regexString: "one",
///         },
///         {
///             regexString: "two",
///         },
///     ],
///     name: "example",
///     description: "Example regex pattern set",
///     scope: "REGIONAL",
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
///     regular_expressions=[
///         {
///             "regex_string": "one",
///         },
///         {
///             "regex_string": "two",
///         },
///     ],
///     name="example",
///     description="Example regex pattern set",
///     scope="REGIONAL",
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
///         Name = "example",
///         Description = "Example regex pattern set",
///         Scope = "REGIONAL",
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
/// 			RegularExpressions: wafv2.RegexPatternSetRegularExpressionArray{
/// 				&wafv2.RegexPatternSetRegularExpressionArgs{
/// 					RegexString: pulumi.String("one"),
/// 				},
/// 				&wafv2.RegexPatternSetRegularExpressionArgs{
/// 					RegexString: pulumi.String("two"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example regex pattern set"),
/// 			Scope:       pulumi.String("REGIONAL"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafv2_regexpatternset" "example" {
///   regular_expressions {
///     regex_string = "one"
///   }
///   regular_expressions {
///     regex_string = "two"
///   }
///   name        = "example"
///   description = "Example regex pattern set"
///   scope       = "REGIONAL"
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
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
///         var example = new RegexPatternSet("example", RegexPatternSetArgs.builder()
///             .regularExpressions(
///                 RegexPatternSetRegularExpressionArgs.builder()
///                     .regexString("one")
///                     .build(),
///                 RegexPatternSetRegularExpressionArgs.builder()
///                     .regexString("two")
///                     .build())
///             .name("example")
///             .description("Example regex pattern set")
///             .scope("REGIONAL")
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
///       regularExpressions:
///         - regexString: one
///         - regexString: two
///       name: example
///       description: Example regex pattern set
///       scope: REGIONAL
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
  /// ARN that identifies the cluster.
  late final pulumi.Output<String> arn;
  /// A friendly description of the regular expression pattern set.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> lockToken;
  /// A friendly name of the regular expression pattern set. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// One or more blocks of regular expression patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`. See Regular Expression below for details.
  late final pulumi.Output<List<RegexPatternSetRegularExpression>?> regularExpressions;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final pulumi.Output<String> scope;
  /// An array of key:value pairs to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    regularExpressions = registerOutput<List<RegexPatternSetRegularExpression>?>('regularExpressions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegexPatternSetRegularExpression>(guardedValue, (value) => RegexPatternSetRegularExpression.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [RegexPatternSet] resource's state with the given [name] and [id].
  static RegexPatternSet get(
    String name,
    pulumi.Input<String> id, {
    RegexPatternSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegexPatternSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegexPatternSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/regexPatternSet:RegexPatternSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    regularExpressions = registerOutput<List<RegexPatternSetRegularExpression>?>('regularExpressions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegexPatternSetRegularExpression>(guardedValue, (value) => RegexPatternSetRegularExpression.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [RegexPatternSet] resource.
  RegexPatternSet.reference(String urn)
    : super(
        'aws:wafv2/regexPatternSet:RegexPatternSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    regularExpressions = registerOutput<List<RegexPatternSetRegularExpression>?>('regularExpressions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegexPatternSetRegularExpression>(guardedValue, (value) => RegexPatternSetRegularExpression.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
