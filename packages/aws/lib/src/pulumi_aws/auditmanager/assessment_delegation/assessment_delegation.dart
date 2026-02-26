import 'package:pulumi/pulumi.dart';
import 'assessment_delegation_args.dart';

/// Resource for managing an AWS Audit Manager Assessment Delegation.
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
/// const example = new aws.auditmanager.AssessmentDelegation("example", {
/// assessmentId: exampleAwsAuditmanagerAssessment.id,
/// roleArn: exampleAwsIamRole.arn,
/// roleType: "RESOURCE_OWNER",
/// controlSetId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.AssessmentDelegation("example",
/// assessment_id=example_aws_auditmanager_assessment["id"],
/// role_arn=example_aws_iam_role["arn"],
/// role_type="RESOURCE_OWNER",
/// control_set_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Auditmanager.AssessmentDelegation("example", new()
/// {
/// AssessmentId = exampleAwsAuditmanagerAssessment.Id,
/// RoleArn = exampleAwsIamRole.Arn,
/// RoleType = "RESOURCE_OWNER",
/// ControlSetId = "example",
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
/// _, err := auditmanager.NewAssessmentDelegation(ctx, "example", &auditmanager.AssessmentDelegationArgs{
/// AssessmentId: pulumi.Any(exampleAwsAuditmanagerAssessment.Id),
/// RoleArn:      pulumi.Any(exampleAwsIamRole.Arn),
/// RoleType:     pulumi.String("RESOURCE_OWNER"),
/// ControlSetId: pulumi.String("example"),
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
/// import com.pulumi.aws.auditmanager.AssessmentDelegation;
/// import com.pulumi.aws.auditmanager.AssessmentDelegationArgs;
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
/// var example = new AssessmentDelegation("example", AssessmentDelegationArgs.builder()
/// .assessmentId(exampleAwsAuditmanagerAssessment.id())
/// .roleArn(exampleAwsIamRole.arn())
/// .roleType("RESOURCE_OWNER")
/// .controlSetId("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:auditmanager:AssessmentDelegation
/// properties:
/// assessmentId: ${exampleAwsAuditmanagerAssessment.id}
/// roleArn: ${exampleAwsIamRole.arn}
/// roleType: RESOURCE_OWNER
/// controlSetId: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessment Delegation using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessmentDelegation:AssessmentDelegation example abcdef-123456,arn:aws:iam::123456789012:role/example,example
/// ```
class AssessmentDelegation extends CustomResource {
  /// Identifier for the assessment.
  late final Output<String> assessmentId;

  /// Comment describing the delegation request.
  late final Output<String?> comment;

  /// Assessment control set name. This value is the control set name used during assessment creation (not the AWS-generated ID). The `_id` suffix on this attribute has been preserved to be consistent with the underlying AWS API.
  late final Output<String> controlSetId;

  /// Unique identifier for the delegation.
  late final Output<String> delegationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM role.
  late final Output<String> roleArn;

  /// Type of customer persona. For assessment delegation, type must always be `RESOURCE_OWNER`.
  ///
  /// The following arguments are optional:
  late final Output<String> roleType;

  /// Status of the delegation.
  late final Output<String> status;

  AssessmentDelegation(
    String name, {
    AssessmentDelegationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessmentDelegation:AssessmentDelegation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assessmentId = Output.createUnknown<String>();
    this.comment = Output.createUnknown<String?>();
    this.controlSetId = Output.createUnknown<String>();
    this.delegationId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.roleType = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
