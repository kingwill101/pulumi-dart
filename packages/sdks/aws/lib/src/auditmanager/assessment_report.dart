import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_report_args.dart';
import 'assessment_report_state.dart';

/// Resource for managing an AWS Audit Manager Assessment Report.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.auditmanager.AssessmentReport("test", {
///     name: "example",
///     assessmentId: testAwsAuditmanagerAssessment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.AssessmentReport("test",
///     name="example",
///     assessment_id=test_aws_auditmanager_assessment["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Auditmanager.AssessmentReport("test", new()
///     {
///         Name = "example",
///         AssessmentId = testAwsAuditmanagerAssessment.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewAssessmentReport(ctx, "test", &auditmanager.AssessmentReportArgs{
/// 			Name:         pulumi.String("example"),
/// 			AssessmentId: pulumi.Any(testAwsAuditmanagerAssessment.Id),
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
/// resource "aws_auditmanager_assessmentreport" "test" {
///   name          = "example"
///   assessment_id = testAwsAuditmanagerAssessment.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.auditmanager.AssessmentReport;
/// import com.pulumi.aws.auditmanager.AssessmentReportArgs;
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
///         var test = new AssessmentReport("test", AssessmentReportArgs.builder()
///             .name("example")
///             .assessmentId(testAwsAuditmanagerAssessment.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:auditmanager:AssessmentReport
///     properties:
///       name: example
///       assessmentId: ${testAwsAuditmanagerAssessment.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessment Reports using the assessment report `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessmentReport:AssessmentReport example abc123-de45
/// ```
class AssessmentReport extends pulumi.CustomResource {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> assessmentId;
  /// Name of the user who created the assessment report.
  late final pulumi.Output<String> author;
  /// Description of the assessment report.
  late final pulumi.Output<String?> description;
  /// Name of the assessment report.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  late final pulumi.Output<String> status;

  /// Creates a new [AssessmentReport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentReport]. {@macro pulumi_auditmanager_assessment_report_assessment_report_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentReport(
    String name, {
    AssessmentReportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessmentReport:AssessmentReport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    assessmentId = registerOutput<String>('assessmentId');
    author = registerOutput<String>('author');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AssessmentReport] resource's state with the given [name] and [id].
  static AssessmentReport get(
    String name,
    pulumi.Input<String> id, {
    AssessmentReportState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AssessmentReport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AssessmentReport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessmentReport:AssessmentReport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessmentId = registerOutput<String>('assessmentId');
    author = registerOutput<String>('author');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [AssessmentReport] resource.
  AssessmentReport.reference(String urn)
    : super(
        'aws:auditmanager/assessmentReport:AssessmentReport',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    assessmentId = registerOutput<String>('assessmentId');
    author = registerOutput<String>('author');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }
}
