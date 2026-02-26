import 'package:pulumi/pulumi.dart';
import 'assessment_report_args.dart';

/// Resource for managing an AWS Audit Manager Assessment Report.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.auditmanager.AssessmentReport("test", {
/// name: "example",
/// assessmentId: testAwsAuditmanagerAssessment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.AssessmentReport("test",
/// name="example",
/// assessment_id=test_aws_auditmanager_assessment["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Auditmanager.AssessmentReport("test", new()
/// {
/// Name = "example",
/// AssessmentId = testAwsAuditmanagerAssessment.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := auditmanager.NewAssessmentReport(ctx, "test", &auditmanager.AssessmentReportArgs{
/// Name:         pulumi.String("example"),
/// AssessmentId: pulumi.Any(testAwsAuditmanagerAssessment.Id),
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
/// import com.pulumi.aws.auditmanager.AssessmentReport;
/// import com.pulumi.aws.auditmanager.AssessmentReportArgs;
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
/// var test = new AssessmentReport("test", AssessmentReportArgs.builder()
/// .name("example")
/// .assessmentId(testAwsAuditmanagerAssessment.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:auditmanager:AssessmentReport
/// properties:
/// name: example
/// assessmentId: ${testAwsAuditmanagerAssessment.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessment Reports using the assessment report <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessmentReport:AssessmentReport example abc123-de45
/// ```
class AssessmentReport extends CustomResource {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  late final Output<String> assessmentId;

  /// Name of the user who created the assessment report.
  late final Output<String> author;

  /// Description of the assessment report.
  late final Output<String?> description;

  /// Name of the assessment report.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  late final Output<String> status;

  AssessmentReport(
    String name, {
    AssessmentReportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessmentReport:AssessmentReport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assessmentId = registerOutput<String>('assessmentId');
    this.author = registerOutput<String>('author');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
