import 'package:pulumi/pulumi.dart';
import '../xss_match_set_xss_match_tuple/xss_match_set_xss_match_tuple.dart';
import 'xss_match_set_args.dart';

/// Provides a WAF XSS Match Set Resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const xssMatchSet = new aws.waf.XssMatchSet("xss_match_set", {
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
/// xss_match_set = aws.waf.XssMatchSet("xss_match_set",
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
/// var xssMatchSet = new Aws.Waf.XssMatchSet("xss_match_set", new()
/// {
/// Name = "xss_match_set",
/// XssMatchTuples = new[]
/// {
/// new Aws.Waf.Inputs.XssMatchSetXssMatchTupleArgs
/// {
/// TextTransformation = "NONE",
/// FieldToMatch = new Aws.Waf.Inputs.XssMatchSetXssMatchTupleFieldToMatchArgs
/// {
/// Type = "URI",
/// },
/// },
/// new Aws.Waf.Inputs.XssMatchSetXssMatchTupleArgs
/// {
/// TextTransformation = "NONE",
/// FieldToMatch = new Aws.Waf.Inputs.XssMatchSetXssMatchTupleFieldToMatchArgs
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := waf.NewXssMatchSet(ctx, "xss_match_set", &waf.XssMatchSetArgs{
/// Name: pulumi.String("xss_match_set"),
/// XssMatchTuples: waf.XssMatchSetXssMatchTupleArray{
/// &waf.XssMatchSetXssMatchTupleArgs{
/// TextTransformation: pulumi.String("NONE"),
/// FieldToMatch: &waf.XssMatchSetXssMatchTupleFieldToMatchArgs{
/// Type: pulumi.String("URI"),
/// },
/// },
/// &waf.XssMatchSetXssMatchTupleArgs{
/// TextTransformation: pulumi.String("NONE"),
/// FieldToMatch: &waf.XssMatchSetXssMatchTupleFieldToMatchArgs{
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
/// import com.pulumi.aws.waf.XssMatchSet;
/// import com.pulumi.aws.waf.XssMatchSetArgs;
/// import com.pulumi.aws.waf.inputs.XssMatchSetXssMatchTupleArgs;
/// import com.pulumi.aws.waf.inputs.XssMatchSetXssMatchTupleFieldToMatchArgs;
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
/// type: aws:waf:XssMatchSet
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
/// Using `pulumi import`, import WAF XSS Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/xssMatchSet:XssMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class XssMatchSet extends CustomResource {
  /// Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// The name or description of the SizeConstraintSet.
  late final Output<String> name;

  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  late final Output<List<XssMatchSetXssMatchTuple>?> xssMatchTuples;

  XssMatchSet(
    String name, {
    XssMatchSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/xssMatchSet:XssMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.xssMatchTuples =
        Output.createUnknown<List<XssMatchSetXssMatchTuple>?>();
  }
}
