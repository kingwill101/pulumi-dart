import 'package:pulumi/pulumi.dart' as pulumi;
import 'xss_match_set_args.dart';
import 'xss_match_set_state.dart';
import 'xss_match_set_xss_match_tuple.dart';

/// Provides a WAF XSS Match Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const xssMatchSet = new aws.waf.XssMatchSet("xss_match_set", {
///     xssMatchTuples: [
///         {
///             fieldToMatch: {
///                 type: "URI",
///             },
///             textTransformation: "NONE",
///         },
///         {
///             fieldToMatch: {
///                 type: "QUERY_STRING",
///             },
///             textTransformation: "NONE",
///         },
///     ],
///     name: "xss_match_set",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// xss_match_set = aws.waf.XssMatchSet("xss_match_set",
///     xss_match_tuples=[
///         {
///             "field_to_match": {
///                 "type": "URI",
///             },
///             "text_transformation": "NONE",
///         },
///         {
///             "field_to_match": {
///                 "type": "QUERY_STRING",
///             },
///             "text_transformation": "NONE",
///         },
///     ],
///     name="xss_match_set")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var xssMatchSet = new Aws.Waf.XssMatchSet("xss_match_set", new()
///     {
///         XssMatchTuples = new[]
///         {
///             new Aws.Waf.Inputs.XssMatchSetXssMatchTupleArgs
///             {
///                 FieldToMatch = new Aws.Waf.Inputs.XssMatchSetXssMatchTupleFieldToMatchArgs
///                 {
///                     Type = "URI",
///                 },
///                 TextTransformation = "NONE",
///             },
///             new Aws.Waf.Inputs.XssMatchSetXssMatchTupleArgs
///             {
///                 FieldToMatch = new Aws.Waf.Inputs.XssMatchSetXssMatchTupleFieldToMatchArgs
///                 {
///                     Type = "QUERY_STRING",
///                 },
///                 TextTransformation = "NONE",
///             },
///         },
///         Name = "xss_match_set",
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
/// 		_, err := waf.NewXssMatchSet(ctx, "xss_match_set", &waf.XssMatchSetArgs{
/// 			XssMatchTuples: waf.XssMatchSetXssMatchTupleArray{
/// 				&waf.XssMatchSetXssMatchTupleArgs{
/// 					FieldToMatch: &waf.XssMatchSetXssMatchTupleFieldToMatchArgs{
/// 						Type: pulumi.String("URI"),
/// 					},
/// 					TextTransformation: pulumi.String("NONE"),
/// 				},
/// 				&waf.XssMatchSetXssMatchTupleArgs{
/// 					FieldToMatch: &waf.XssMatchSetXssMatchTupleFieldToMatchArgs{
/// 						Type: pulumi.String("QUERY_STRING"),
/// 					},
/// 					TextTransformation: pulumi.String("NONE"),
/// 				},
/// 			},
/// 			Name: pulumi.String("xss_match_set"),
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
/// resource "aws_waf_xssmatchset" "xss_match_set" {
///   xss_match_tuples {
///     field_to_match = {
///       type = "URI"
///     }
///     text_transformation = "NONE"
///   }
///   xss_match_tuples {
///     field_to_match = {
///       type = "QUERY_STRING"
///     }
///     text_transformation = "NONE"
///   }
///   name = "xss_match_set"
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
///         var xssMatchSet = new XssMatchSet("xssMatchSet", XssMatchSetArgs.builder()
///             .xssMatchTuples(
///                 XssMatchSetXssMatchTupleArgs.builder()
///                     .fieldToMatch(XssMatchSetXssMatchTupleFieldToMatchArgs.builder()
///                         .type("URI")
///                         .build())
///                     .textTransformation("NONE")
///                     .build(),
///                 XssMatchSetXssMatchTupleArgs.builder()
///                     .fieldToMatch(XssMatchSetXssMatchTupleFieldToMatchArgs.builder()
///                         .type("QUERY_STRING")
///                         .build())
///                     .textTransformation("NONE")
///                     .build())
///             .name("xss_match_set")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   xssMatchSet:
///     type: aws:waf:XssMatchSet
///     name: xss_match_set
///     properties:
///       xssMatchTuples:
///         - fieldToMatch:
///             type: URI
///           textTransformation: NONE
///         - fieldToMatch:
///             type: QUERY_STRING
///           textTransformation: NONE
///       name: xss_match_set
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF XSS Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/xssMatchSet:XssMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class XssMatchSet extends pulumi.CustomResource {
  /// ARN
  late final pulumi.Output<String> arn;
  /// The name or description of the SizeConstraintSet.
  late final pulumi.Output<String> name;
  /// The parts of web requests that you want to inspect for cross-site scripting attacks.
  late final pulumi.Output<List<XssMatchSetXssMatchTuple>?> xssMatchTuples;

  /// Creates a new [XssMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [XssMatchSet]. {@macro pulumi_waf_xss_match_set_xss_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  XssMatchSet(
    String name, {
    XssMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/xssMatchSet:XssMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    xssMatchTuples = registerOutput<List<XssMatchSetXssMatchTuple>?>('xssMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(guardedValue, (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [XssMatchSet] resource's state with the given [name] and [id].
  static XssMatchSet get(
    String name,
    pulumi.Input<String> id, {
    XssMatchSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return XssMatchSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  XssMatchSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/xssMatchSet:XssMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    xssMatchTuples = registerOutput<List<XssMatchSetXssMatchTuple>?>('xssMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(guardedValue, (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [XssMatchSet] resource.
  XssMatchSet.reference(String urn)
    : super(
        'aws:waf/xssMatchSet:XssMatchSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    xssMatchTuples = registerOutput<List<XssMatchSetXssMatchTuple>?>('xssMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<XssMatchSetXssMatchTuple>(guardedValue, (value) => XssMatchSetXssMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
