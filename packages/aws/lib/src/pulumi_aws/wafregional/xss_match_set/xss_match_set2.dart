import 'package:pulumi/pulumi.dart';
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple2.dart';
import 'xss_match_set_args2.dart';

/// Provides a WAF Regional XSS Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const xssMatchSet = new aws.wafregional.XssMatchSet("xss_match_set", {
/// name: "xss_match_set",
/// xssMatchTuples: [
/// {
/// textTransformation: "NONE",
/// fieldToMatch: {
/// type: "URI",
/// },
/// },
/// {
/// textTransformation: "NONE",
/// fieldToMatch: {
/// type: "QUERY_STRING",
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// xss_match_set = aws.wafregional.XssMatchSet("xss_match_set",
/// name="xss_match_set",
/// xss_match_tuples=[
/// {
/// "text_transformation": "NONE",
/// "field_to_match": {
/// "type": "URI",
/// },
/// },
/// {
/// "text_transformation": "NONE",
/// "field_to_match": {
/// "type": "QUERY_STRING",
/// },
/// },
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
/// var xssMatchSet = new Aws.WafRegional.XssMatchSet("xss_match_set", new()
/// {
/// Name = "xss_match_set",
/// XssMatchTuples = new[]
/// {
/// new Aws.WafRegional.Inputs.XssMatchSetXssMatchTupleArgs
/// {
/// TextTransformation = "NONE",
/// FieldToMatch = new Aws.WafRegional.Inputs.XssMatchSetXssMatchTupleFieldToMatchArgs
/// {
/// Type = "URI",
/// },
/// },
/// new Aws.WafRegional.Inputs.XssMatchSetXssMatchTupleArgs
/// {
/// TextTransformation = "NONE",
/// FieldToMatch = new Aws.WafRegional.Inputs.XssMatchSetXssMatchTupleFieldToMatchArgs
/// {
/// Type = "QUERY_STRING",
/// },
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
/// _, err := wafregional.NewXssMatchSet(ctx, "xss_match_set", &wafregional.XssMatchSetArgs{
/// Name: pulumi.String("xss_match_set"),
/// XssMatchTuples: wafregional.XssMatchSetXssMatchTupleArray{
/// &wafregional.XssMatchSetXssMatchTupleArgs{
/// TextTransformation: pulumi.String("NONE"),
/// FieldToMatch: &wafregional.XssMatchSetXssMatchTupleFieldToMatchArgs{
/// Type: pulumi.String("URI"),
/// },
/// },
/// &wafregional.XssMatchSetXssMatchTupleArgs{
/// TextTransformation: pulumi.String("NONE"),
/// FieldToMatch: &wafregional.XssMatchSetXssMatchTupleFieldToMatchArgs{
/// Type: pulumi.String("QUERY_STRING"),
/// },
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
/// import com.pulumi.aws.wafregional.XssMatchSet;
/// import com.pulumi.aws.wafregional.XssMatchSetArgs;
/// import com.pulumi.aws.wafregional.inputs.XssMatchSetXssMatchTupleArgs;
/// import com.pulumi.aws.wafregional.inputs.XssMatchSetXssMatchTupleFieldToMatchArgs;
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
/// var xssMatchSet = new XssMatchSet("xssMatchSet", XssMatchSetArgs.builder()
/// .name("xss_match_set")
/// .xssMatchTuples(
/// XssMatchSetXssMatchTupleArgs.builder()
/// .textTransformation("NONE")
/// .fieldToMatch(XssMatchSetXssMatchTupleFieldToMatchArgs.builder()
/// .type("URI")
/// .build())
/// .build(),
/// XssMatchSetXssMatchTupleArgs.builder()
/// .textTransformation("NONE")
/// .fieldToMatch(XssMatchSetXssMatchTupleFieldToMatchArgs.builder()
/// .type("QUERY_STRING")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// xssMatchSet:
/// type: aws:wafregional:XssMatchSet
/// name: xss_match_set
/// properties:
/// name: xss_match_set
/// xssMatchTuples:
/// - textTransformation: NONE
/// fieldToMatch:
/// type: URI
/// - textTransformation: NONE
/// fieldToMatch:
/// type: QUERY_STRING
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF Regional XSS Match using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/xssMatchSet:XssMatchSet example 12345abcde
/// ```
class XssMatchSet2 extends CustomResource {
  /// The name of the set
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  late final Output<List<XssMatchSetXssMatchTuple2>?> xssMatchTuples;

  XssMatchSet2(
    String name, {
    XssMatchSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/xssMatchSet:XssMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.xssMatchTuples =
        registerOutput<List<XssMatchSetXssMatchTuple2>?>('xssMatchTuples');
  }
}
