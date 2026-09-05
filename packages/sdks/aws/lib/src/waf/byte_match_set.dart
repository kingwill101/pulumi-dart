import 'package:pulumi/pulumi.dart' as pulumi;
import 'byte_match_set_args.dart';
import 'byte_match_set_byte_match_tuple.dart';
import 'byte_match_set_state.dart';

/// Provides a WAF Byte Match Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byteSet = new aws.waf.ByteMatchSet("byte_set", {
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
/// byte_set = aws.waf.ByteMatchSet("byte_set",
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
///     var byteSet = new Aws.Waf.ByteMatchSet("byte_set", new()
///     {
///         ByteMatchTuples = new[]
///         {
///             new Aws.Waf.Inputs.ByteMatchSetByteMatchTupleArgs
///             {
///                 FieldToMatch = new Aws.Waf.Inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.NewByteMatchSet(ctx, "byte_set", &waf.ByteMatchSetArgs{
/// 			ByteMatchTuples: waf.ByteMatchSetByteMatchTupleArray{
/// 				&waf.ByteMatchSetByteMatchTupleArgs{
/// 					FieldToMatch: &waf.ByteMatchSetByteMatchTupleFieldToMatchArgs{
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
/// resource "aws_waf_bytematchset" "byte_set" {
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
/// import com.pulumi.aws.waf.ByteMatchSet;
/// import com.pulumi.aws.waf.ByteMatchSetArgs;
/// import com.pulumi.aws.waf.inputs.ByteMatchSetByteMatchTupleArgs;
/// import com.pulumi.aws.waf.inputs.ByteMatchSetByteMatchTupleFieldToMatchArgs;
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
///     type: aws:waf:ByteMatchSet
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
/// Using `pulumi import`, import WAF Byte Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/byteMatchSet:ByteMatchSet byte_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class ByteMatchSet extends pulumi.CustomResource {
  /// ARN of the byte match set.
  late final pulumi.Output<String> arn;
  /// Specifies the bytes (typically a string that corresponds
  /// with ASCII characters) that you want to search for in web requests,
  /// the location in requests that you want to search, and other settings.
  late final pulumi.Output<List<ByteMatchSetByteMatchTuple>?> byteMatchTuples;
  /// The name or description of the Byte Match Set.
  late final pulumi.Output<String> name;

  /// Creates a new [ByteMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ByteMatchSet]. {@macro pulumi_waf_byte_match_set_byte_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ByteMatchSet(
    String name, {
    ByteMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/byteMatchSet:ByteMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    byteMatchTuples = registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
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
          'aws:waf/byteMatchSet:ByteMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    byteMatchTuples = registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [ByteMatchSet] resource.
  ByteMatchSet.reference(String urn)
    : super(
        'aws:waf/byteMatchSet:ByteMatchSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    byteMatchTuples = registerOutput<List<ByteMatchSetByteMatchTuple>?>('byteMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ByteMatchSetByteMatchTuple>(guardedValue, (value) => ByteMatchSetByteMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }
}
