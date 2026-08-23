import 'package:pulumi/pulumi.dart' as pulumi;
import 'size_constraint_set_args.dart';
import 'size_constraint_set_state.dart';

/// Provides a WAF Regional Size Constraint Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sizeConstraintSet = new aws.wafregional.SizeConstraintSet("size_constraint_set", {
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
/// size_constraint_set = aws.wafregional.SizeConstraintSet("size_constraint_set",
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
///     var sizeConstraintSet = new Aws.WafRegional.SizeConstraintSet("size_constraint_set", new()
///     {
///         Name = "tfsize_constraints",
///         SizeConstraints = new[]
///         {
///             new Aws.WafRegional.Inputs.SizeConstraintSetSizeConstraintArgs
///             {
///                 TextTransformation = "NONE",
///                 ComparisonOperator = "EQ",
///                 Size = 4096,
///                 FieldToMatch = new Aws.WafRegional.Inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.NewSizeConstraintSet(ctx, "size_constraint_set", &wafregional.SizeConstraintSetArgs{
/// 			Name: pulumi.String("tfsize_constraints"),
/// 			SizeConstraints: wafregional.SizeConstraintSetSizeConstraintArray{
/// 				&wafregional.SizeConstraintSetSizeConstraintArgs{
/// 					TextTransformation: pulumi.String("NONE"),
/// 					ComparisonOperator: pulumi.String("EQ"),
/// 					Size:               pulumi.Int(4096),
/// 					FieldToMatch: &wafregional.SizeConstraintSetSizeConstraintFieldToMatchArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafregional_sizeconstraintset" "size_constraint_set" {
///   name = "tfsize_constraints"
///   size_constraints {
///     text_transformation = "NONE"
///     comparison_operator = "EQ"
///     size                = "4096"
///     field_to_match = {
///       type = "BODY"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.SizeConstraintSet;
/// import com.pulumi.aws.wafregional.SizeConstraintSetArgs;
/// import com.pulumi.aws.wafregional.inputs.SizeConstraintSetSizeConstraintArgs;
/// import com.pulumi.aws.wafregional.inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs;
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
///     type: aws:wafregional:SizeConstraintSet
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
/// Using `pulumi import`, import WAF Size Constraint Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/sizeConstraintSet:SizeConstraintSet size_constraint_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SizeConstraintSet extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// The name or description of the Size Constraint Set.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the parts of web requests that you want to inspect the size of.
  late final pulumi.Output<List<Map<String, dynamic>>?> sizeConstraints;

  /// Creates a new [SizeConstraintSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SizeConstraintSet]. {@macro pulumi_wafregional_size_constraint_set_size_constraint_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SizeConstraintSet(
    String name, {
    SizeConstraintSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sizeConstraintSet:SizeConstraintSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sizeConstraints = registerOutput<List<Map<String, dynamic>>?>('sizeConstraints');
  }

  /// Gets an existing [SizeConstraintSet] resource's state with the given [name] and [id].
  static SizeConstraintSet get(
    String name,
    pulumi.Input<String> id, {
    SizeConstraintSetState? state,
  }) {
    return SizeConstraintSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SizeConstraintSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sizeConstraintSet:SizeConstraintSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sizeConstraints = registerOutput<List<Map<String, dynamic>>?>('sizeConstraints');
  }
}
