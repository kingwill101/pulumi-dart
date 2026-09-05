import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_packages_args.dart';
import 'get_rules_packages_result.dart';

/// The Amazon Inspector Classic Rules Packages data source allows access to the list of AWS
/// Inspector Rules Packages which can be used by Amazon Inspector Classic within the region
/// configured in the provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const rules = aws.inspector.getRulesPackages({});
/// // e.g., Use in aws_inspector_assessment_template
/// const group = new aws.inspector.ResourceGroup("group", {tags: {
///     test: "test",
/// }});
/// const assessment = new aws.inspector.AssessmentTarget("assessment", {
///     name: "test",
///     resourceGroupArn: group.arn,
/// });
/// const assessmentAssessmentTemplate = new aws.inspector.AssessmentTemplate("assessment", {
///     name: "Test",
///     targetArn: assessment.arn,
///     duration: 60,
///     rulesPackageArns: rules.then(rules => rules.arns),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// rules = aws.inspector.get_rules_packages()
/// # e.g., Use in aws_inspector_assessment_template
/// group = aws.inspector.ResourceGroup("group", tags={
///     "test": "test",
/// })
/// assessment = aws.inspector.AssessmentTarget("assessment",
///     name="test",
///     resource_group_arn=group.arn)
/// assessment_assessment_template = aws.inspector.AssessmentTemplate("assessment",
///     name="Test",
///     target_arn=assessment.arn,
///     duration=60,
///     rules_package_arns=rules.arns)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var rules = Aws.Inspector.GetRulesPackages.Invoke();
///
///     // e.g., Use in aws_inspector_assessment_template
///     var @group = new Aws.Inspector.ResourceGroup("group", new()
///     {
///         Tags =
///         {
///             { "test", "test" },
///         },
///     });
///
///     var assessment = new Aws.Inspector.AssessmentTarget("assessment", new()
///     {
///         Name = "test",
///         ResourceGroupArn = @group.Arn,
///     });
///
///     var assessmentAssessmentTemplate = new Aws.Inspector.AssessmentTemplate("assessment", new()
///     {
///         Name = "Test",
///         TargetArn = assessment.Arn,
///         Duration = 60,
///         RulesPackageArns = rules.Apply(getRulesPackagesResult => getRulesPackagesResult.Arns),
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
/// 		// Declare the data source
/// 		rules, err := inspector.GetRulesPackages(ctx, &inspector.GetRulesPackagesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// e.g., Use in aws_inspector_assessment_template
/// 		group, err := inspector.NewResourceGroup(ctx, "group", &inspector.ResourceGroupArgs{
/// 			Tags: pulumi.StringMap{
/// 				"test": pulumi.String("test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assessment, err := inspector.NewAssessmentTarget(ctx, "assessment", &inspector.AssessmentTargetArgs{
/// 			Name:             pulumi.String("test"),
/// 			ResourceGroupArn: group.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = inspector.NewAssessmentTemplate(ctx, "assessment", &inspector.AssessmentTemplateArgs{
/// 			Name:             pulumi.String("Test"),
/// 			TargetArn:        assessment.Arn,
/// 			Duration:         pulumi.Int(60),
/// 			RulesPackageArns: toPulumiStringArray(rules.Arns),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiStringArray(arr []string) pulumi.StringArray {
/// 	var pulumiArr pulumi.StringArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.String(v))
/// 	}
/// 	return pulumiArr
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
/// data "aws_inspector_getrulespackages" "rules" {
/// }
///
/// # e.g., Use in aws_inspector_assessment_template
/// resource "aws_inspector_resourcegroup" "group" {
///   tags = {
///     "test" = "test"
///   }
/// }
/// resource "aws_inspector_assessmenttarget" "assessment" {
///   name               = "test"
///   resource_group_arn = aws_inspector_resourcegroup.group.arn
/// }
/// resource "aws_inspector_assessmenttemplate" "assessment" {
///   name               = "Test"
///   target_arn         = aws_inspector_assessmenttarget.assessment.arn
///   duration           = "60"
///   rules_package_arns = data.aws_inspector_getrulespackages.rules.arns
/// }
/// # Declare the data source
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.inspector.InspectorFunctions;
/// import com.pulumi.aws.inspector.inputs.GetRulesPackagesArgs;
/// import com.pulumi.aws.inspector.ResourceGroup;
/// import com.pulumi.aws.inspector.ResourceGroupArgs;
/// import com.pulumi.aws.inspector.AssessmentTarget;
/// import com.pulumi.aws.inspector.AssessmentTargetArgs;
/// import com.pulumi.aws.inspector.AssessmentTemplate;
/// import com.pulumi.aws.inspector.AssessmentTemplateArgs;
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
///         // Declare the data source
///         final var rules = InspectorFunctions.getRulesPackages(GetRulesPackagesArgs.builder()
///             .build());
///
///         // e.g., Use in aws_inspector_assessment_template
///         var group = new ResourceGroup("group", ResourceGroupArgs.builder()
///             .tags(Map.of("test", "test"))
///             .build());
///
///         var assessment = new AssessmentTarget("assessment", AssessmentTargetArgs.builder()
///             .name("test")
///             .resourceGroupArn(group.arn())
///             .build());
///
///         var assessmentAssessmentTemplate = new AssessmentTemplate("assessmentAssessmentTemplate", AssessmentTemplateArgs.builder()
///             .name("Test")
///             .targetArn(assessment.arn())
///             .duration(60)
///             .rulesPackageArns(rules.arns())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # e.g., Use in aws_inspector_assessment_template
///   group:
///     type: aws:inspector:ResourceGroup
///     properties:
///       tags:
///         test: test
///   assessment:
///     type: aws:inspector:AssessmentTarget
///     properties:
///       name: test
///       resourceGroupArn: ${group.arn}
///   assessmentAssessmentTemplate:
///     type: aws:inspector:AssessmentTemplate
///     name: assessment
///     properties:
///       name: Test
///       targetArn: ${assessment.arn}
///       duration: '60'
///       rulesPackageArns: ${rules.arns}
/// variables:
///   # Declare the data source
///   rules:
///     fn::invoke:
///       function: aws:inspector:getRulesPackages
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_inspector_get_rules_packages_get_rules_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesPackagesResult> getRulesPackages(
  GetRulesPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:inspector/getRulesPackages:getRulesPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesPackagesResult.fromMap(result);
}

pulumi.Output<GetRulesPackagesResult> getRulesPackagesOutput(
  GetRulesPackagesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:inspector/getRulesPackages:getRulesPackages',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRulesPackagesResult.fromMap);
}
