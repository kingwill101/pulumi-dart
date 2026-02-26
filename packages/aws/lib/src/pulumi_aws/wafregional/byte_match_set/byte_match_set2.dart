import 'package:pulumi/pulumi.dart';
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple2.dart';
import 'byte_match_set_args2.dart';

/// Provides a WAF Regional Byte Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byteSet = new aws.wafregional.ByteMatchSet("byte_set", {
/// name: "my_waf_byte_match_set",
/// byteMatchTuples: [{
/// textTransformation: "NONE",
/// targetString: "badrefer1",
/// positionalConstraint: "CONTAINS",
/// fieldToMatch: {
/// type: "HEADER",
/// data: "referer",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// byte_set = aws.wafregional.ByteMatchSet("byte_set",
/// name="my_waf_byte_match_set",
/// byte_match_tuples=[{
/// "text_transformation": "NONE",
/// "target_string": "badrefer1",
/// "positional_constraint": "CONTAINS",
/// "field_to_match": {
/// "type": "HEADER",
/// "data": "referer",
/// },
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
/// var byteSet = new Aws.WafRegional.ByteMatchSet("byte_set", new()
/// {
/// Name = "my_waf_byte_match_set",
/// ByteMatchTuples = new[]
/// {
/// new Aws.WafRegional.Inputs.ByteMatchSetByteMatchTupleArgs
/// {
/// TextTransformation = "NONE",
/// TargetString = "badrefer1",
/// PositionalConstraint = "CONTAINS",
/// FieldToMatch = new Aws.WafRegional.Inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs
/// {
/// Type = "HEADER",
/// Data = "referer",
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
/// _, err := wafregional.NewByteMatchSet(ctx, "byte_set", &wafregional.ByteMatchSetArgs{
/// Name: pulumi.String("my_waf_byte_match_set"),
/// ByteMatchTuples: wafregional.ByteMatchSetByteMatchTupleArray{
/// &wafregional.ByteMatchSetByteMatchTupleArgs{
/// TextTransformation:   pulumi.String("NONE"),
/// TargetString:         pulumi.String("badrefer1"),
/// PositionalConstraint: pulumi.String("CONTAINS"),
/// FieldToMatch: &wafregional.ByteMatchSetByteMatchTupleFieldToMatchArgs{
/// Type: pulumi.String("HEADER"),
/// Data: pulumi.String("referer"),
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
/// import com.pulumi.aws.wafregional.ByteMatchSet;
/// import com.pulumi.aws.wafregional.ByteMatchSetArgs;
/// import com.pulumi.aws.wafregional.inputs.ByteMatchSetByteMatchTupleArgs;
/// import com.pulumi.aws.wafregional.inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs;
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
/// var byteSet = new ByteMatchSet("byteSet", ByteMatchSetArgs.builder()
/// .name("my_waf_byte_match_set")
/// .byteMatchTuples(ByteMatchSetByteMatchTupleArgs.builder()
/// .textTransformation("NONE")
/// .targetString("badrefer1")
/// .positionalConstraint("CONTAINS")
/// .fieldToMatch(ByteMatchSetByteMatchTupleFieldToMatchArgs.builder()
/// .type("HEADER")
/// .data("referer")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// byteSet:
/// type: aws:wafregional:ByteMatchSet
/// name: byte_set
/// properties:
/// name: my_waf_byte_match_set
/// byteMatchTuples:
/// - textTransformation: NONE
/// targetString: badrefer1
/// positionalConstraint: CONTAINS
/// fieldToMatch:
/// type: HEADER
/// data: referer
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Byte Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/byteMatchSet:ByteMatchSet byte_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class ByteMatchSet2 extends CustomResource {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  late final Output<List<ByteMatchSetByteMatchTuple2>?> byteMatchTuples;

  /// The name or description of the ByteMatchSet.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ByteMatchSet2(
    String name, {
    ByteMatchSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/byteMatchSet:ByteMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.byteMatchTuples =
        Output.createUnknown<List<ByteMatchSetByteMatchTuple2>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
