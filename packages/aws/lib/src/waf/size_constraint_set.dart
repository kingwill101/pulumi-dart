import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_args.dart';
import 'size_constraint_set_size_constraint.dart';

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
///     name: "tfsize_constraints",
///     sizeConstraints: [{
///         textTransformation: "NONE",
///         comparisonOperator: "EQ",
///         size: 4096,
///         fieldToMatch: {
///             type: "BODY",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// size_constraint_set = aws.waf.SizeConstraintSet("size_constraint_set",
///     name="tfsize_constraints",
///     size_constraints=[{
///         "text_transformation": "NONE",
///         "comparison_operator": "EQ",
///         "size": 4096,
///         "field_to_match": {
///             "type": "BODY",
///         },
///     }])
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
///         Name = "tfsize_constraints",
///         SizeConstraints = new[]
///         {
///             new Aws.Waf.Inputs.SizeConstraintSetSizeConstraintArgs
///             {
///                 TextTransformation = "NONE",
///                 ComparisonOperator = "EQ",
///                 Size = 4096,
///                 FieldToMatch = new Aws.Waf.Inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs
///                 {
///                     Type = "BODY",
///                 },
///             },
///         },
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
/// 			Name: pulumi.String("tfsize_constraints"),
/// 			SizeConstraints: waf.SizeConstraintSetSizeConstraintArray{
/// 				&waf.SizeConstraintSetSizeConstraintArgs{
/// 					TextTransformation: pulumi.String("NONE"),
/// 					ComparisonOperator: pulumi.String("EQ"),
/// 					Size:               pulumi.Int(4096),
/// 					FieldToMatch: &waf.SizeConstraintSetSizeConstraintFieldToMatchArgs{
/// 						Type: pulumi.String("BODY"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("tfsize_constraints")
///             .sizeConstraints(SizeConstraintSetSizeConstraintArgs.builder()
///                 .textTransformation("NONE")
///                 .comparisonOperator("EQ")
///                 .size(4096)
///                 .fieldToMatch(SizeConstraintSetSizeConstraintFieldToMatchArgs.builder()
///                     .type("BODY")
///                     .build())
///                 .build())
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
///       name: tfsize_constraints
///       sizeConstraints:
///         - textTransformation: NONE
///           comparisonOperator: EQ
///           size: '4096'
///           fieldToMatch:
///             type: BODY
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
  /// Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// Name or description of the Size Constraint Set.
  late final pulumi.Output<String> name;

  /// Parts of web requests that you want to inspect the size of.
  late final pulumi.Output<List<SizeConstraintSetSizeConstraint>?>
      sizeConstraints;

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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.sizeConstraints =
        registerOutput<List<SizeConstraintSetSizeConstraint>?>(
            'sizeConstraints');
  }
}
