import 'package:pulumi/pulumi.dart';
import '../byte_match_set_byte_match_tuple/byte_match_set_byte_match_tuple.dart';
import 'byte_match_set_args.dart';

/// Provides a WAF Byte Match Set Resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byteSet = new aws.waf.ByteMatchSet("byte_set", {
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
/// byte_set = aws.waf.ByteMatchSet("byte_set",
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
/// var byteSet = new Aws.Waf.ByteMatchSet("byte_set", new()
/// {
/// Name = "my_waf_byte_match_set",
/// ByteMatchTuples = new[]
/// {
/// new Aws.Waf.Inputs.ByteMatchSetByteMatchTupleArgs
/// {
/// TextTransformation = "NONE",
/// TargetString = "badrefer1",
/// PositionalConstraint = "CONTAINS",
/// FieldToMatch = new Aws.Waf.Inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := waf.NewByteMatchSet(ctx, "byte_set", &waf.ByteMatchSetArgs{
/// Name: pulumi.String("my_waf_byte_match_set"),
/// ByteMatchTuples: waf.ByteMatchSetByteMatchTupleArray{
/// &waf.ByteMatchSetByteMatchTupleArgs{
/// TextTransformation:   pulumi.String("NONE"),
/// TargetString:         pulumi.String("badrefer1"),
/// PositionalConstraint: pulumi.String("CONTAINS"),
/// FieldToMatch: &waf.ByteMatchSetByteMatchTupleFieldToMatchArgs{
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
/// import com.pulumi.aws.waf.ByteMatchSet;
/// import com.pulumi.aws.waf.ByteMatchSetArgs;
/// import com.pulumi.aws.waf.inputs.ByteMatchSetByteMatchTupleArgs;
/// import com.pulumi.aws.waf.inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs;
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
/// type: aws:waf:ByteMatchSet
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
/// Using `pulumi import`, import WAF Byte Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/byteMatchSet:ByteMatchSet byte_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class ByteMatchSet extends CustomResource {
  /// Amazon Resource Name (ARN) of the byte match set.
  late final Output<String> arn;

  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  late final Output<List<ByteMatchSetByteMatchTuple>?> byteMatchTuples;

  /// The name or description of the Byte Match Set.
  late final Output<String> name;

  ByteMatchSet(
    String name, {
    ByteMatchSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/byteMatchSet:ByteMatchSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.byteMatchTuples =
        registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples');
    this.name = registerOutput<String>('name');
  }
}
