import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_args.dart';
import 'assessment_assessment_reports_destination.dart';
import 'assessment_role.dart';
import 'assessment_roles_all.dart';
import 'assessment_scope.dart';
import 'assessment_state.dart';

/// Resource for managing an AWS Audit Manager Assessment.
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
/// const test = new aws.auditmanager.Assessment("test", {
///     name: "example",
///     assessmentReportsDestination: {
///         destination: `s3://${testAwsS3Bucket.id}`,
///         destinationType: "S3",
///     },
///     frameworkId: testAwsAuditmanagerFramework.id,
///     roles: [{
///         roleArn: testAwsIamRole.arn,
///         roleType: "PROCESS_OWNER",
///     }],
///     scope: {
///         awsAccounts: [{
///             id: current.accountId,
///         }],
///         awsServices: [{
///             serviceName: "S3",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.Assessment("test",
///     name="example",
///     assessment_reports_destination={
///         "destination": f"s3://{test_aws_s3_bucket['id']}",
///         "destination_type": "S3",
///     },
///     framework_id=test_aws_auditmanager_framework["id"],
///     roles=[{
///         "role_arn": test_aws_iam_role["arn"],
///         "role_type": "PROCESS_OWNER",
///     }],
///     scope={
///         "aws_accounts": [{
///             "id": current["accountId"],
///         }],
///         "aws_services": [{
///             "service_name": "S3",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Auditmanager.Assessment("test", new()
///     {
///         Name = "example",
///         AssessmentReportsDestination = new Aws.Auditmanager.Inputs.AssessmentAssessmentReportsDestinationArgs
///         {
///             Destination = $"s3://{testAwsS3Bucket.Id}",
///             DestinationType = "S3",
///         },
///         FrameworkId = testAwsAuditmanagerFramework.Id,
///         Roles = new[]
///         {
///             new Aws.Auditmanager.Inputs.AssessmentRoleArgs
///             {
///                 RoleArn = testAwsIamRole.Arn,
///                 RoleType = "PROCESS_OWNER",
///             },
///         },
///         Scope = new Aws.Auditmanager.Inputs.AssessmentScopeArgs
///         {
///             AwsAccounts = new[]
///             {
///                 new Aws.Auditmanager.Inputs.AssessmentScopeAwsAccountArgs
///                 {
///                     Id = current.AccountId,
///                 },
///             },
///             AwsServices = new[]
///             {
///                 new Aws.Auditmanager.Inputs.AssessmentScopeAwsServiceArgs
///                 {
///                     ServiceName = "S3",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewAssessment(ctx, "test", &auditmanager.AssessmentArgs{
/// 			Name: pulumi.String("example"),
/// 			AssessmentReportsDestination: &auditmanager.AssessmentAssessmentReportsDestinationArgs{
/// 				Destination:     pulumi.Sprintf("s3://%v", testAwsS3Bucket.Id),
/// 				DestinationType: pulumi.String("S3"),
/// 			},
/// 			FrameworkId: pulumi.Any(testAwsAuditmanagerFramework.Id),
/// 			Roles: auditmanager.AssessmentRoleArray{
/// 				&auditmanager.AssessmentRoleArgs{
/// 					RoleArn:  pulumi.Any(testAwsIamRole.Arn),
/// 					RoleType: pulumi.String("PROCESS_OWNER"),
/// 				},
/// 			},
/// 			Scope: &auditmanager.AssessmentScopeArgs{
/// 				AwsAccounts: auditmanager.AssessmentScopeAwsAccountArray{
/// 					&auditmanager.AssessmentScopeAwsAccountArgs{
/// 						Id: pulumi.Any(current.AccountId),
/// 					},
/// 				},
/// 				AwsServices: auditmanager.AssessmentScopeAwsServiceArray{
/// 					&auditmanager.AssessmentScopeAwsServiceArgs{
/// 						ServiceName: pulumi.String("S3"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Assessment("test", AssessmentArgs.builder()
///             .name("example")
///             .assessmentReportsDestination(AssessmentAssessmentReportsDestinationArgs.builder()
///                 .destination(String.format("s3://%s", testAwsS3Bucket.id()))
///                 .destinationType("S3")
///                 .build())
///             .frameworkId(testAwsAuditmanagerFramework.id())
///             .roles(AssessmentRoleArgs.builder()
///                 .roleArn(testAwsIamRole.arn())
///                 .roleType("PROCESS_OWNER")
///                 .build())
///             .scope(AssessmentScopeArgs.builder()
///                 .awsAccounts(AssessmentScopeAwsAccountArgs.builder()
///                     .id(current.accountId())
///                     .build())
///                 .awsServices(AssessmentScopeAwsServiceArgs.builder()
///                     .serviceName("S3")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:auditmanager:Assessment
///     properties:
///       name: example
///       assessmentReportsDestination:
///         destination: s3://${testAwsS3Bucket.id}
///         destinationType: S3
///       frameworkId: ${testAwsAuditmanagerFramework.id}
///       roles:
///         - roleArn: ${testAwsIamRole.arn}
///           roleType: PROCESS_OWNER
///       scope:
///         awsAccounts:
///           - id: ${current.accountId}
///         awsServices:
///           - serviceName: S3
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessments using the assessment `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessment:Assessment example abc123-de45
/// ```
class Assessment extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the assessment.
  late final pulumi.Output<String> arn;
  /// Assessment report storage destination configuration. See `assessment_reports_destination` below.
  late final pulumi.Output<AssessmentAssessmentReportsDestination?> assessmentReportsDestination;
  /// Description of the assessment.
  late final pulumi.Output<String?> description;
  /// Unique identifier of the framework the assessment will be created from.
  late final pulumi.Output<String> frameworkId;
  /// Name of the assessment.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of roles for the assessment. See `roles` below.
  late final pulumi.Output<List<AssessmentRole>> roles;
  /// Complete list of all roles with access to the assessment. This includes both roles explicitly configured via the `roles` block, and any roles which have access to all Audit Manager assessments by default.
  late final pulumi.Output<List<AssessmentRolesAll>> rolesAlls;
  /// Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AssessmentScope?> scope;
  /// Status of the assessment. Valid values are `ACTIVE` and `INACTIVE`.
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Assessment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assessment]. {@macro pulumi_auditmanager_assessment_assessment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessment:Assessment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assessmentReportsDestination = registerOutput<AssessmentAssessmentReportsDestination?>('assessmentReportsDestination');
    this.description = registerOutput<String?>('description');
    this.frameworkId = registerOutput<String>('frameworkId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roles = registerOutput<List<AssessmentRole>>('roles');
    this.rolesAlls = registerOutput<List<AssessmentRolesAll>>('rolesAlls');
    this.scope = registerOutput<AssessmentScope?>('scope');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Assessment] resource's state with the given [name] and [id].
  static Assessment get(
    String name,
    pulumi.Input<String> id, {
    AssessmentState? state,
  }) {
    return Assessment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Assessment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessment:Assessment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assessmentReportsDestination = registerOutput<AssessmentAssessmentReportsDestination?>('assessmentReportsDestination');
    this.description = registerOutput<String?>('description');
    this.frameworkId = registerOutput<String>('frameworkId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roles = registerOutput<List<AssessmentRole>>('roles');
    this.rolesAlls = registerOutput<List<AssessmentRolesAll>>('rolesAlls');
    this.scope = registerOutput<AssessmentScope?>('scope');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
