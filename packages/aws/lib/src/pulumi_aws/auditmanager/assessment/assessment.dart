import 'package:pulumi/pulumi.dart';
import '../assessment_assessment_reports_destination/assessment_assessment_reports_destination.dart';
import '../assessment_role/assessment_role.dart';
import '../assessment_roles_all/assessment_roles_all.dart';
import '../assessment_scope/assessment_scope.dart';
import 'assessment_args.dart';

/// Resource for managing an AWS Audit Manager Assessment.
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
/// const test = new aws.auditmanager.Assessment("test", {
/// name: "example",
/// assessmentReportsDestination: {
/// destination: `s3://${testAwsS3Bucket.id}`,
/// destinationType: "S3",
/// },
/// frameworkId: testAwsAuditmanagerFramework.id,
/// roles: [{
/// roleArn: testAwsIamRole.arn,
/// roleType: "PROCESS_OWNER",
/// }],
/// scope: {
/// awsAccounts: [{
/// id: current.accountId,
/// }],
/// awsServices: [{
/// serviceName: "S3",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.Assessment("test",
/// name="example",
/// assessment_reports_destination={
/// "destination": f"s3://{test_aws_s3_bucket['id']}",
/// "destination_type": "S3",
/// },
/// framework_id=test_aws_auditmanager_framework["id"],
/// roles=[{
/// "role_arn": test_aws_iam_role["arn"],
/// "role_type": "PROCESS_OWNER",
/// }],
/// scope={
/// "aws_accounts": [{
/// "id": current["accountId"],
/// }],
/// "aws_services": [{
/// "service_name": "S3",
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Auditmanager.Assessment("test", new()
/// {
/// Name = "example",
/// AssessmentReportsDestination = new Aws.Auditmanager.Inputs.AssessmentAssessmentReportsDestinationArgs
/// {
/// Destination = $"s3://{testAwsS3Bucket.Id}",
/// DestinationType = "S3",
/// },
/// FrameworkId = testAwsAuditmanagerFramework.Id,
/// Roles = new[]
/// {
/// new Aws.Auditmanager.Inputs.AssessmentRoleArgs
/// {
/// RoleArn = testAwsIamRole.Arn,
/// RoleType = "PROCESS_OWNER",
/// },
/// },
/// Scope = new Aws.Auditmanager.Inputs.AssessmentScopeArgs
/// {
/// AwsAccounts = new[]
/// {
/// new Aws.Auditmanager.Inputs.AssessmentScopeAwsAccountArgs
/// {
/// Id = current.AccountId,
/// },
/// },
/// AwsServices = new[]
/// {
/// new Aws.Auditmanager.Inputs.AssessmentScopeAwsServiceArgs
/// {
/// ServiceName = "S3",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := auditmanager.NewAssessment(ctx, "test", &auditmanager.AssessmentArgs{
/// Name: pulumi.String("example"),
/// AssessmentReportsDestination: &auditmanager.AssessmentAssessmentReportsDestinationArgs{
/// Destination:     pulumi.Sprintf("s3://%v", testAwsS3Bucket.Id),
/// DestinationType: pulumi.String("S3"),
/// },
/// FrameworkId: pulumi.Any(testAwsAuditmanagerFramework.Id),
/// Roles: auditmanager.AssessmentRoleArray{
/// &auditmanager.AssessmentRoleArgs{
/// RoleArn:  pulumi.Any(testAwsIamRole.Arn),
/// RoleType: pulumi.String("PROCESS_OWNER"),
/// },
/// },
/// Scope: &auditmanager.AssessmentScopeArgs{
/// AwsAccounts: auditmanager.AssessmentScopeAwsAccountArray{
/// &auditmanager.AssessmentScopeAwsAccountArgs{
/// Id: pulumi.Any(current.AccountId),
/// },
/// },
/// AwsServices: auditmanager.AssessmentScopeAwsServiceArray{
/// &auditmanager.AssessmentScopeAwsServiceArgs{
/// ServiceName: pulumi.String("S3"),
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
/// import com.pulumi.aws.auditmanager.Assessment;
/// import com.pulumi.aws.auditmanager.AssessmentArgs;
/// import com.pulumi.aws.auditmanager.inputs.AssessmentAssessmentReportsDestinationArgs;
/// import com.pulumi.aws.auditmanager.inputs.AssessmentRoleArgs;
/// import com.pulumi.aws.auditmanager.inputs.AssessmentScopeArgs;
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
/// var test = new Assessment("test", AssessmentArgs.builder()
/// .name("example")
/// .assessmentReportsDestination(AssessmentAssessmentReportsDestinationArgs.builder()
/// .destination(String.format("s3://%s", testAwsS3Bucket.id()))
/// .destinationType("S3")
/// .build())
/// .frameworkId(testAwsAuditmanagerFramework.id())
/// .roles(AssessmentRoleArgs.builder()
/// .roleArn(testAwsIamRole.arn())
/// .roleType("PROCESS_OWNER")
/// .build())
/// .scope(AssessmentScopeArgs.builder()
/// .awsAccounts(AssessmentScopeAwsAccountArgs.builder()
/// .id(current.accountId())
/// .build())
/// .awsServices(AssessmentScopeAwsServiceArgs.builder()
/// .serviceName("S3")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:auditmanager:Assessment
/// properties:
/// name: example
/// assessmentReportsDestination:
/// destination: s3://${testAwsS3Bucket.id}
/// destinationType: S3
/// frameworkId: ${testAwsAuditmanagerFramework.id}
/// roles:
/// - roleArn: ${testAwsIamRole.arn}
/// roleType: PROCESS_OWNER
/// scope:
/// awsAccounts:
/// - id: ${current.accountId}
/// awsServices:
/// - serviceName: S3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessments using the assessment <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessment:Assessment example abc123-de45
/// ```
class Assessment extends CustomResource {
  /// Amazon Resource Name (ARN) of the assessment.
  late final Output<String> arn;

  /// Assessment report storage destination configuration. See <span pulumi-lang-nodejs="`assessmentReportsDestination`" pulumi-lang-dotnet="`AssessmentReportsDestination`" pulumi-lang-go="`assessmentReportsDestination`" pulumi-lang-python="`assessment_reports_destination`" pulumi-lang-yaml="`assessmentReportsDestination`" pulumi-lang-java="`assessmentReportsDestination`">`assessment_reports_destination`</span> below.
  late final Output<AssessmentAssessmentReportsDestination?>
      assessmentReportsDestination;

  /// Description of the assessment.
  late final Output<String?> description;

  /// Unique identifier of the framework the assessment will be created from.
  late final Output<String> frameworkId;

  /// Name of the assessment.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of roles for the assessment. See <span pulumi-lang-nodejs="`roles`" pulumi-lang-dotnet="`Roles`" pulumi-lang-go="`roles`" pulumi-lang-python="`roles`" pulumi-lang-yaml="`roles`" pulumi-lang-java="`roles`">`roles`</span> below.
  late final Output<List<AssessmentRole>> roles;

  /// Complete list of all roles with access to the assessment. This includes both roles explicitly configured via the <span pulumi-lang-nodejs="`roles`" pulumi-lang-dotnet="`Roles`" pulumi-lang-go="`roles`" pulumi-lang-python="`roles`" pulumi-lang-yaml="`roles`" pulumi-lang-java="`roles`">`roles`</span> block, and any roles which have access to all Audit Manager assessments by default.
  late final Output<List<AssessmentRolesAll>> rolesAlls;

  /// Amazon Web Services accounts and services that are in scope for the assessment. See <span pulumi-lang-nodejs="`scope`" pulumi-lang-dotnet="`Scope`" pulumi-lang-go="`scope`" pulumi-lang-python="`scope`" pulumi-lang-yaml="`scope`" pulumi-lang-java="`scope`">`scope`</span> below.
  ///
  /// The following arguments are optional:
  late final Output<AssessmentScope?> scope;

  /// Status of the assessment. Valid values are `ACTIVE` and `INACTIVE`.
  late final Output<String> status;

  /// A map of tags to assign to the assessment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Assessment(
    String name, {
    AssessmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessment:Assessment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assessmentReportsDestination =
        Output.createUnknown<AssessmentAssessmentReportsDestination?>();
    this.description = Output.createUnknown<String?>();
    this.frameworkId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roles = Output.createUnknown<List<AssessmentRole>>();
    this.rolesAlls = Output.createUnknown<List<AssessmentRolesAll>>();
    this.scope = Output.createUnknown<AssessmentScope?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
