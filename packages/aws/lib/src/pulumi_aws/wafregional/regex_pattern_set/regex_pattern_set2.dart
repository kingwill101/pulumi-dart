import 'package:pulumi/pulumi.dart';
import 'regex_pattern_set_args2.dart';

/// Provides a WAF Regional Regex Pattern Set Resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafregional.RegexPatternSet("example", {
/// name: "example",
/// regexPatternStrings: [
/// "one",
/// "two",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.RegexPatternSet("example",
/// name="example",
/// regex_pattern_strings=[
/// "one",
/// "two",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.WafRegional.RegexPatternSet("example", new()
/// {
/// Name = "example",
/// RegexPatternStrings = new[]
/// {
/// "one",
/// "two",
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
/// _, err := wafregional.NewRegexPatternSet(ctx, "example", &wafregional.RegexPatternSetArgs{
/// Name: pulumi.String("example"),
/// RegexPatternStrings: pulumi.StringArray{
/// pulumi.String("one"),
/// pulumi.String("two"),
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
/// var example = new RegexPatternSet("example", RegexPatternSetArgs.builder()
/// .name("example")
/// .regexPatternStrings(
/// "one",
/// "two")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:wafregional:RegexPatternSet
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
/// Using `pulumi import`, import WAF Regional Regex Pattern Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/regexPatternSet:RegexPatternSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RegexPatternSet2 extends CustomResource {
  /// The name or description of the Regex Pattern Set.
  late final Output<String> name;

  /// A list of regular expression (regex) patterns that you want AWS WAF to search for, such as `B[a@]dB[o0]t`.
  late final Output<List<String>?> regexPatternStrings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RegexPatternSet2(
    String name, {
    RegexPatternSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/regexPatternSet:RegexPatternSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.regexPatternStrings =
        registerOutput<List<String>?>('regexPatternStrings');
    this.region = registerOutput<String>('region');
  }
}
