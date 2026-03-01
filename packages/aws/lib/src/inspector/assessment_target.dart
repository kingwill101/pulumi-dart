import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_target_args.dart';

/// Provides an Inspector Classic Assessment Target
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.inspector.ResourceGroup("bar", {tags: {
///     Name: "foo",
///     Env: "bar",
/// }});
/// const foo = new aws.inspector.AssessmentTarget("foo", {
///     name: "assessment target",
///     resourceGroupArn: bar.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.inspector.ResourceGroup("bar", tags={
///     "Name": "foo",
///     "Env": "bar",
/// })
/// foo = aws.inspector.AssessmentTarget("foo",
///     name="assessment target",
///     resource_group_arn=bar.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.Inspector.ResourceGroup("bar", new()
///     {
///         Tags =
///         {
///             { "Name", "foo" },
///             { "Env", "bar" },
///         },
///     });
///
///     var foo = new Aws.Inspector.AssessmentTarget("foo", new()
///     {
///         Name = "assessment target",
///         ResourceGroupArn = bar.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bar, err := inspector.NewResourceGroup(ctx, "bar", &inspector.ResourceGroupArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo"),
/// 				"Env":  pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = inspector.NewAssessmentTarget(ctx, "foo", &inspector.AssessmentTargetArgs{
/// 			Name:             pulumi.String("assessment target"),
/// 			ResourceGroupArn: bar.Arn,
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
/// import com.pulumi.aws.inspector.ResourceGroup;
/// import com.pulumi.aws.inspector.ResourceGroupArgs;
/// import com.pulumi.aws.inspector.AssessmentTarget;
/// import com.pulumi.aws.inspector.AssessmentTargetArgs;
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
///         var bar = new ResourceGroup("bar", ResourceGroupArgs.builder()
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "foo"),
///                 Map.entry("Env", "bar")
///             ))
///             .build());
///
///         var foo = new AssessmentTarget("foo", AssessmentTargetArgs.builder()
///             .name("assessment target")
///             .resourceGroupArn(bar.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:inspector:ResourceGroup
///     properties:
///       tags:
///         Name: foo
///         Env: bar
///   foo:
///     type: aws:inspector:AssessmentTarget
///     properties:
///       name: assessment target
///       resourceGroupArn: ${bar.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Inspector assessment target.
///
///
/// Using `pulumi import`, import Inspector Classic Assessment Targets using their Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:inspector/assessmentTarget:AssessmentTarget example arn:aws:inspector:us-east-1:123456789012:target/0-xxxxxxx
/// ```
class AssessmentTarget extends pulumi.CustomResource {
  /// The target assessment ARN.
  late final pulumi.Output<String> arn;

  /// The name of the assessment target.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  late final pulumi.Output<String?> resourceGroupArn;

  /// Creates a new [AssessmentTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentTarget]. {@macro pulumi_inspector_assessment_target_assessment_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentTarget(
    String name, {
    AssessmentTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:inspector/assessmentTarget:AssessmentTarget',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceGroupArn = registerOutput<String?>('resourceGroupArn');
  }
}
