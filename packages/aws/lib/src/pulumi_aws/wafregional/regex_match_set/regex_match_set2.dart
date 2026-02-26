import 'package:pulumi/pulumi.dart';
import '../regex_match_set_regex_match_tuple/regex_match_set_regex_match_tuple2.dart';
import 'regex_match_set_args2.dart';

/// Provides a WAF Regional Regex Match Set Resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRegexPatternSet = new aws.wafregional.RegexPatternSet("example", {
/// name: "example",
/// regexPatternStrings: [
/// "one",
/// "two",
/// ],
/// });
/// const example = new aws.wafregional.RegexMatchSet("example", {
/// name: "example",
/// regexMatchTuples: [{
/// fieldToMatch: {
/// data: "User-Agent",
/// type: "HEADER",
/// },
/// regexPatternSetId: exampleRegexPatternSet.id,
/// textTransformation: "NONE",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_regex_pattern_set = aws.wafregional.RegexPatternSet("example",
/// name="example",
/// regex_pattern_strings=[
/// "one",
/// "two",
/// ])
/// example = aws.wafregional.RegexMatchSet("example",
/// name="example",
/// regex_match_tuples=[{
/// "field_to_match": {
/// "data": "User-Agent",
/// "type": "HEADER",
/// },
/// "regex_pattern_set_id": example_regex_pattern_set.id,
/// "text_transformation": "NONE",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleRegexPatternSet = new Aws.WafRegional.RegexPatternSet("example", new()
/// {
/// Name = "example",
/// RegexPatternStrings = new[]
/// {
/// "one",
/// "two",
/// },
/// });
///
/// var example = new Aws.WafRegional.RegexMatchSet("example", new()
/// {
/// Name = "example",
/// RegexMatchTuples = new[]
/// {
/// new Aws.WafRegional.Inputs.RegexMatchSetRegexMatchTupleArgs
/// {
/// FieldToMatch = new Aws.WafRegional.Inputs.RegexMatchSetRegexMatchTupleFieldToMatchArgs
/// {
/// Data = "User-Agent",
/// Type = "HEADER",
/// },
/// RegexPatternSetId = exampleRegexPatternSet.Id,
/// TextTransformation = "NONE",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleRegexPatternSet, err := wafregional.NewRegexPatternSet(ctx, "example", &wafregional.RegexPatternSetArgs{
/// Name: pulumi.String("example"),
/// RegexPatternStrings: pulumi.StringArray{
/// pulumi.String("one"),
/// pulumi.String("two"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = wafregional.NewRegexMatchSet(ctx, "example", &wafregional.RegexMatchSetArgs{
/// Name: pulumi.String("example"),
/// RegexMatchTuples: wafregional.RegexMatchSetRegexMatchTupleArray{
/// &wafregional.RegexMatchSetRegexMatchTupleArgs{
/// FieldToMatch: &wafregional.RegexMatchSetRegexMatchTupleFieldToMatchArgs{
/// Data: pulumi.String("User-Agent"),
/// Type: pulumi.String("HEADER"),
/// },
/// RegexPatternSetId:  exampleRegexPatternSet.ID(),
/// TextTransformation: pulumi.String("NONE"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.wafregional.RegexMatchSet;
/// import com.pulumi.aws.wafregional.RegexMatchSetArgs;
/// import com.pulumi.aws.wafregional.inputs.RegexMatchSetRegexMatchTupleArgs;
/// import com.pulumi.aws.wafregional.inputs.RegexMatchSetRegexMatchTupleFieldToMatchArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleRegexPatternSet = new RegexPatternSet("exampleRegexPatternSet", RegexPatternSetArgs.builder()
/// .name("example")
/// .regexPatternStrings(
/// "one",
/// "two")
/// .build());
///
/// var example = new RegexMatchSet("example", RegexMatchSetArgs.builder()
/// .name("example")
/// .regexMatchTuples(RegexMatchSetRegexMatchTupleArgs.builder()
/// .fieldToMatch(RegexMatchSetRegexMatchTupleFieldToMatchArgs.builder()
/// .data("User-Agent")
/// .type("HEADER")
/// .build())
/// .regexPatternSetId(exampleRegexPatternSet.id())
/// .textTransformation("NONE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:wafregional:RegexMatchSet
/// properties:
/// name: example
/// regexMatchTuples:
/// - fieldToMatch:
/// data: User-Agent
/// type: HEADER
/// regexPatternSetId: ${exampleRegexPatternSet.id}
/// textTransformation: NONE
/// exampleRegexPatternSet:
/// type: aws:wafregional:RegexPatternSet
/// name: example
/// properties:
/// name: example
/// regexPatternStrings:
/// - one
/// - two
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Regex Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/regexMatchSet:RegexMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexMatchSet2 extends CustomResource {
  /// The name or description of the Regex Match Set.
  late final Output<String> name;

  /// The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. See below.
  late final Output<List<RegexMatchSetRegexMatchTuple2>?> regexMatchTuples;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RegexMatchSet2(
    String name, {
    RegexMatchSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexMatchSet:RegexMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.regexMatchTuples =
        registerOutput<List<RegexMatchSetRegexMatchTuple2>?>(
            'regexMatchTuples');
    this.region = registerOutput<String>('region');
  }
}
