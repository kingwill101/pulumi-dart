import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_args.dart';
import 'byte_match_set_byte_match_tuple.dart';
import 'byte_match_set_state.dart';

/// Provides a WAF Regional Byte Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byteSet = new aws.wafregional.ByteMatchSet("byte_set", {
///     byteMatchTuples: [{
///         fieldToMatch: {
///             type: "HEADER",
///             data: "referer",
///         },
///         textTransformation: "NONE",
///         targetString: "badrefer1",
///         positionalConstraint: "CONTAINS",
///     }],
///     name: "my_waf_byte_match_set",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// byte_set = aws.wafregional.ByteMatchSet("byte_set",
///     byte_match_tuples=[{
///         "field_to_match": {
///             "type": "HEADER",
///             "data": "referer",
///         },
///         "text_transformation": "NONE",
///         "target_string": "badrefer1",
///         "positional_constraint": "CONTAINS",
///     }],
///     name="my_waf_byte_match_set")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byteSet = new Aws.WafRegional.ByteMatchSet("byte_set", new()
///     {
///         ByteMatchTuples = new[]
///         {
///             new Aws.WafRegional.Inputs.ByteMatchSetByteMatchTupleArgs
///             {
///                 FieldToMatch = new Aws.WafRegional.Inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs
///                 {
///                     Type = "HEADER",
///                     Data = "referer",
///                 },
///                 TextTransformation = "NONE",
///                 TargetString = "badrefer1",
///                 PositionalConstraint = "CONTAINS",
///             },
///         },
///         Name = "my_waf_byte_match_set",
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
/// 		_, err := wafregional.NewByteMatchSet(ctx, "byte_set", &wafregional.ByteMatchSetArgs{
/// 			ByteMatchTuples: wafregional.ByteMatchSetByteMatchTupleArray{
/// 				&wafregional.ByteMatchSetByteMatchTupleArgs{
/// 					FieldToMatch: &wafregional.ByteMatchSetByteMatchTupleFieldToMatchArgs{
/// 						Type: pulumi.String("HEADER"),
/// 						Data: pulumi.String("referer"),
/// 					},
/// 					TextTransformation:   pulumi.String("NONE"),
/// 					TargetString:         pulumi.String("badrefer1"),
/// 					PositionalConstraint: pulumi.String("CONTAINS"),
/// 				},
/// 			},
/// 			Name: pulumi.String("my_waf_byte_match_set"),
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
/// resource "aws_wafregional_bytematchset" "byte_set" {
///   byte_match_tuples {
///     field_to_match = {
///       type = "HEADER"
///       data = "referer"
///     }
///     text_transformation   = "NONE"
///     target_string         = "badrefer1"
///     positional_constraint = "CONTAINS"
///   }
///   name = "my_waf_byte_match_set"
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
///         var byteSet = new ByteMatchSet("byteSet", ByteMatchSetArgs.builder()
///             .byteMatchTuples(ByteMatchSetByteMatchTupleArgs.builder()
///                 .fieldToMatch(ByteMatchSetByteMatchTupleFieldToMatchArgs.builder()
///                     .type("HEADER")
///                     .data("referer")
///                     .build())
///                 .textTransformation("NONE")
///                 .targetString("badrefer1")
///                 .positionalConstraint("CONTAINS")
///                 .build())
///             .name("my_waf_byte_match_set")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   byteSet:
///     type: aws:wafregional:ByteMatchSet
///     name: byte_set
///     properties:
///       byteMatchTuples:
///         - fieldToMatch:
///             type: HEADER
///             data: referer
///           textTransformation: NONE
///           targetString: badrefer1
///           positionalConstraint: CONTAINS
///       name: my_waf_byte_match_set
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Byte Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/byteMatchSet:ByteMatchSet byte_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class ByteMatchSet extends pulumi.CustomResource {
  /// Settings for the ByteMatchSet, such as the bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests. ByteMatchTuple documented below.
  late final pulumi.Output<List<ByteMatchSetByteMatchTuple>?> byteMatchTuples;
  /// The name or description of the ByteMatchSet.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ByteMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ByteMatchSet]. {@macro pulumi_wafregional_byte_match_set_byte_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ByteMatchSet(
    String name, {
    ByteMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/byteMatchSet:ByteMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    byteMatchTuples = registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ByteMatchSet] resource's state with the given [name] and [id].
  static ByteMatchSet get(
    String name,
    pulumi.Input<String> id, {
    ByteMatchSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ByteMatchSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ByteMatchSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/byteMatchSet:ByteMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    byteMatchTuples = registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ByteMatchSet] resource.
  ByteMatchSet.reference(String urn)
    : super(
        'aws:wafregional/byteMatchSet:ByteMatchSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    byteMatchTuples = registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
