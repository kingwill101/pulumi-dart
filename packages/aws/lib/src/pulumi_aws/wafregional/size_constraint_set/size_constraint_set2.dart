import 'package:pulumi/pulumi.dart';
import '../size_constraint_set_size_constraint/size_constraint_set_size_constraint2.dart';
import 'size_constraint_set_args2.dart';

/// Provides a WAF Regional Size Constraint Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sizeConstraintSet = new aws.wafregional.SizeConstraintSet("size_constraint_set", {
/// name: "tfsize_constraints",
/// sizeConstraints: [{
/// textTransformation: "NONE",
/// comparisonOperator: "EQ",
/// size: 4096,
/// fieldToMatch: {
/// type: "BODY",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// size_constraint_set = aws.wafregional.SizeConstraintSet("size_constraint_set",
/// name="tfsize_constraints",
/// size_constraints=[{
/// "text_transformation": "NONE",
/// "comparison_operator": "EQ",
/// "size": 4096,
/// "field_to_match": {
/// "type": "BODY",
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
/// var sizeConstraintSet = new Aws.WafRegional.SizeConstraintSet("size_constraint_set", new()
/// {
/// Name = "tfsize_constraints",
/// SizeConstraints = new[]
/// {
/// new Aws.WafRegional.Inputs.SizeConstraintSetSizeConstraintArgs
/// {
/// TextTransformation = "NONE",
/// ComparisonOperator = "EQ",
/// Size = 4096,
/// FieldToMatch = new Aws.WafRegional.Inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs
/// {
/// Type = "BODY",
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
/// _, err := wafregional.NewSizeConstraintSet(ctx, "size_constraint_set", &wafregional.SizeConstraintSetArgs{
/// Name: pulumi.String("tfsize_constraints"),
/// SizeConstraints: wafregional.SizeConstraintSetSizeConstraintArray{
/// &wafregional.SizeConstraintSetSizeConstraintArgs{
/// TextTransformation: pulumi.String("NONE"),
/// ComparisonOperator: pulumi.String("EQ"),
/// Size:               pulumi.Int(4096),
/// FieldToMatch: &wafregional.SizeConstraintSetSizeConstraintFieldToMatchArgs{
/// Type: pulumi.String("BODY"),
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
/// import com.pulumi.aws.wafregional.SizeConstraintSet;
/// import com.pulumi.aws.wafregional.SizeConstraintSetArgs;
/// import com.pulumi.aws.wafregional.inputs.SizeConstraintSetSizeConstraintArgs;
/// import com.pulumi.aws.wafregional.inputs.SizeConstraintSetSizeConstraintFieldToMatchArgs;
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
/// var sizeConstraintSet = new SizeConstraintSet("sizeConstraintSet", SizeConstraintSetArgs.builder()
/// .name("tfsize_constraints")
/// .sizeConstraints(SizeConstraintSetSizeConstraintArgs.builder()
/// .textTransformation("NONE")
/// .comparisonOperator("EQ")
/// .size(4096)
/// .fieldToMatch(SizeConstraintSetSizeConstraintFieldToMatchArgs.builder()
/// .type("BODY")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sizeConstraintSet:
/// type: aws:wafregional:SizeConstraintSet
/// name: size_constraint_set
/// properties:
/// name: tfsize_constraints
/// sizeConstraints:
/// - textTransformation: NONE
/// comparisonOperator: EQ
/// size: '4096'
/// fieldToMatch:
/// type: BODY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WAF Size Constraint Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/sizeConstraintSet:SizeConstraintSet size_constraint_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SizeConstraintSet2 extends CustomResource {
  late final Output<String> arn;

  /// The name or description of the Size Constraint Set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the parts of web requests that you want to inspect the size of.
  late final Output<List<SizeConstraintSetSizeConstraint2>?> sizeConstraints;

  SizeConstraintSet2(
    String name, {
    SizeConstraintSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sizeConstraintSet:SizeConstraintSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sizeConstraints =
        registerOutput<List<SizeConstraintSetSizeConstraint2>?>(
            'sizeConstraints');
  }
}
