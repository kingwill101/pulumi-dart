import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_args.dart';
import 'size_constraint_set_size_constraint.dart';
import 'size_constraint_set_state.dart';

/// Use the `aws.waf.SizeConstraintSet` resource to manage WAF size constraint sets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sizeConstraintSet = new aws.waf.SizeConstraintSet("size_constraint_set", {
///     sizeConstraints: [{
///         fieldToMatch: {
///             type: "BODY",
///         },
///         textTransformation: "NONE",
///         comparisonOperator: "EQ",
///         size: 4096,
///     }],
///     name: "tfsize_constraints",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// size_constraint_set = aws.waf.SizeConstraintSet("size_constraint_set",
///     size_constraints=[{
///         "field_to_match": {
///             "type": "BODY",
///         },
///         "text_transformation": "NONE",
///         "comparison_operator": "EQ",
///         "size": 4096,
///     }],
///     name="tfsize_constraints")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sizeConstraintSet = new Aws.Waf.SizeConstraintSet("size_constraint_set", new()
///     {
///         SizeConstraints = new[]
///         {
///             new Aws.Waf.Inputs.SizeConstraintSetSizeConstraintArgs
///             {
///                 FieldToMatch = new Aws.Waf.Inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs
///                 {
///                     Type = "BODY",
///                 },
///                 TextTransformation = "NONE",
///                 ComparisonOperator = "EQ",
///                 Size = 4096,
///             },
///         },
///         Name = "tfsize_constraints",
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
/// 		_, err := waf.NewSizeConstraintSet(ctx, "size_constraint_set", &waf.SizeConstraintSetArgs{
/// 			SizeConstraints: waf.SizeConstraintSetSizeConstraintArray{
/// 				&waf.SizeConstraintSetSizeConstraintArgs{
/// 					FieldToMatch: &waf.SizeConstraintSetSizeConstraintFieldToMatchArgs{
/// 						Type: pulumi.String("BODY"),
/// 					},
/// 					TextTransformation: pulumi.String("NONE"),
/// 					ComparisonOperator: pulumi.String("EQ"),
/// 					Size:               pulumi.Int(4096),
/// 				},
/// 			},
/// 			Name: pulumi.String("tfsize_constraints"),
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
/// resource "aws_waf_sizeconstraintset" "size_constraint_set" {
///   size_constraints {
///     field_to_match = {
///       type = "BODY"
///     }
///     text_transformation = "NONE"
///     comparison_operator = "EQ"
///     size                = "4096"
///   }
///   name = "tfsize_constraints"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.waf.SizeConstraintSet;
/// import com.pulumi.aws.waf.SizeConstraintSetArgs;
/// import com.pulumi.aws.waf.inputs.SizeConstraintSetSizeConstraintArgs;
/// import com.pulumi.aws.waf.inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs;
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
///         var sizeConstraintSet = new SizeConstraintSet("sizeConstraintSet", SizeConstraintSetArgs.builder()
///             .sizeConstraints(SizeConstraintSetSizeConstraintArgs.builder()
///                 .fieldToMatch(SizeConstraintSetSizeConstraintFieldToMatchArgs.builder()
///                     .type("BODY")
///                     .build())
///                 .textTransformation("NONE")
///                 .comparisonOperator("EQ")
///                 .size(4096)
///                 .build())
///             .name("tfsize_constraints")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sizeConstraintSet:
///     type: aws:waf:SizeConstraintSet
///     name: size_constraint_set
///     properties:
///       sizeConstraints:
///         - fieldToMatch:
///             type: BODY
///           textTransformation: NONE
///           comparisonOperator: EQ
///           size: '4096'
///       name: tfsize_constraints
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF Size Constraint Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/sizeConstraintSet:SizeConstraintSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SizeConstraintSet extends pulumi.CustomResource {
  /// ARN.
  late final pulumi.Output<String> arn;
  /// Name or description of the Size Constraint Set.
  late final pulumi.Output<String> name;
  /// Parts of web requests that you want to inspect the size of.
  late final pulumi.Output<List<SizeConstraintSetSizeConstraint>?> sizeConstraints;

  /// Creates a new [SizeConstraintSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SizeConstraintSet]. {@macro pulumi_waf_size_constraint_set_size_constraint_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SizeConstraintSet(
    String name, {
    SizeConstraintSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/sizeConstraintSet:SizeConstraintSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    sizeConstraints = registerOutput<List<SizeConstraintSetSizeConstraint>?>('sizeConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SizeConstraintSetSizeConstraint>(guardedValue, (value) => SizeConstraintSetSizeConstraint.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [SizeConstraintSet] resource's state with the given [name] and [id].
  static SizeConstraintSet get(
    String name,
    pulumi.Input<String> id, {
    SizeConstraintSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SizeConstraintSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SizeConstraintSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/sizeConstraintSet:SizeConstraintSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    sizeConstraints = registerOutput<List<SizeConstraintSetSizeConstraint>?>('sizeConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SizeConstraintSetSizeConstraint>(guardedValue, (value) => SizeConstraintSetSizeConstraint.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SizeConstraintSet] resource.
  SizeConstraintSet.reference(String urn)
    : super(
        'aws:waf/sizeConstraintSet:SizeConstraintSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    sizeConstraints = registerOutput<List<SizeConstraintSetSizeConstraint>?>('sizeConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SizeConstraintSetSizeConstraint>(guardedValue, (value) => SizeConstraintSetSizeConstraint.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
