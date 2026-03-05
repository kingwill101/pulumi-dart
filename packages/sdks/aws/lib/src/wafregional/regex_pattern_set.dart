import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_pattern_set_args.dart';
import 'regex_pattern_set_state.dart';

/// Provides a WAF Regional Regex Pattern Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafregional.RegexPatternSet("example", {
///     name: "example",
///     regexPatternStrings: [
///         "one",
///         "two",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.RegexPatternSet("example",
///     name="example",
///     regex_pattern_strings=[
///         "one",
///         "two",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafRegional.RegexPatternSet("example", new()
///     {
///         Name = "example",
///         RegexPatternStrings = new[]
///         {
///             "one",
///             "two",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.NewRegexPatternSet(ctx, "example", &wafregional.RegexPatternSetArgs{
/// 			Name: pulumi.String("example"),
/// 			RegexPatternStrings: pulumi.StringArray{
/// 				pulumi.String("one"),
/// 				pulumi.String("two"),
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
/// import com.pulumi.aws.wafregional.RegexPatternSet;
/// import com.pulumi.aws.wafregional.RegexPatternSetArgs;
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
///             .regexPatternStrings(
///                 "one",
///                 "two")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafregional:RegexPatternSet
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
/// Using `pulumi import`, import WAF Regional Regex Pattern Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/regexPatternSet:RegexPatternSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexPatternSet extends pulumi.CustomResource {
  /// The name or description of the Regex Pattern Set.
  late final pulumi.Output<String> name;
  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  late final pulumi.Output<List<String>?> regexPatternStrings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [RegexPatternSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegexPatternSet]. {@macro pulumi_wafregional_regex_pattern_set_regex_pattern_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegexPatternSet(
    String name, {
    RegexPatternSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexPatternSet:RegexPatternSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    regexPatternStrings = registerOutput<List<String>?>('regexPatternStrings');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [RegexPatternSet] resource's state with the given [name] and [id].
  static RegexPatternSet get(
    String name,
    pulumi.Input<String> id, {
    RegexPatternSetState? state,
  }) {
    return RegexPatternSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegexPatternSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexPatternSet:RegexPatternSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    regexPatternStrings = registerOutput<List<String>?>('regexPatternStrings');
    region = registerOutput<String>('region');
  }
}
