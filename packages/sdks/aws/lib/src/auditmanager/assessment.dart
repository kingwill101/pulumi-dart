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
///     assessmentReportsDestination: {
///         destination: `s3://${testAwsS3Bucket.id}`,
///         destinationType: "S3",
///     },
///     scope: {
///         awsAccounts: [{
///             id: current.accountId,
///         }],
///         awsServices: [{
///             serviceName: "S3",
///         }],
///     },
///     roles: [{
///         roleArn: testAwsIamRole.arn,
///         roleType: "PROCESS_OWNER",
///     }],
///     name: "example",
///     frameworkId: testAwsAuditmanagerFramework.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.Assessment("test",
///     assessment_reports_destination={
///         "destination": f"s3://{test_aws_s3_bucket['id']}",
///         "destination_type": "S3",
///     },
///     scope={
///         "aws_accounts": [{
///             "id": current["accountId"],
///         }],
///         "aws_services": [{
///             "service_name": "S3",
///         }],
///     },
///     roles=[{
///         "role_arn": test_aws_iam_role["arn"],
///         "role_type": "PROCESS_OWNER",
///     }],
///     name="example",
///     framework_id=test_aws_auditmanager_framework["id"])
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
///         AssessmentReportsDestination = new Aws.Auditmanager.Inputs.AssessmentAssessmentReportsDestinationArgs
///         {
///             Destination = $"s3://{testAwsS3Bucket.Id}",
///             DestinationType = "S3",
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
///         Roles = new[]
///         {
///             new Aws.Auditmanager.Inputs.AssessmentRoleArgs
///             {
///                 RoleArn = testAwsIamRole.Arn,
///                 RoleType = "PROCESS_OWNER",
///             },
///         },
///         Name = "example",
///         FrameworkId = testAwsAuditmanagerFramework.Id,
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
/// 			AssessmentReportsDestination: &auditmanager.AssessmentAssessmentReportsDestinationArgs{
/// 				Destination:     pulumi.Sprintf("s3://%v", testAwsS3Bucket.Id),
/// 				DestinationType: pulumi.String("S3"),
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
/// 			Roles: auditmanager.AssessmentRoleArray{
/// 				&auditmanager.AssessmentRoleArgs{
/// 					RoleArn:  pulumi.Any(testAwsIamRole.Arn),
/// 					RoleType: pulumi.String("PROCESS_OWNER"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			FrameworkId: pulumi.Any(testAwsAuditmanagerFramework.Id),
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
/// resource "aws_auditmanager_assessment" "test" {
///   assessment_reports_destination = {
///     destination      ="s3://${testAwsS3Bucket.id}"
///     destination_type = "S3"
///   }
///   scope = {
///     aws_accounts = [{
///       "id" = current.accountId
///     }]
///     aws_services = [{
///       "serviceName" = "S3"
///     }]
///   }
///   roles {
///     role_arn  = testAwsIamRole.arn
///     role_type = "PROCESS_OWNER"
///   }
///   name         = "example"
///   framework_id = testAwsAuditmanagerFramework.id
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
/// import com.pulumi.aws.auditmanager.inputs.AssessmentScopeArgs;
/// import com.pulumi.aws.auditmanager.inputs.AssessmentScopeAwsAccountArgs;
/// import com.pulumi.aws.auditmanager.inputs.AssessmentScopeAwsServiceArgs;
/// import com.pulumi.aws.auditmanager.inputs.AssessmentRoleArgs;
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
///         var test = new Assessment("test", AssessmentArgs.builder()
///             .assessmentReportsDestination(AssessmentAssessmentReportsDestinationArgs.builder()
///                 .destination(String.format("s3://%s", testAwsS3Bucket.id()))
///                 .destinationType("S3")
///                 .build())
///             .scope(AssessmentScopeArgs.builder()
///                 .awsAccounts(AssessmentScopeAwsAccountArgs.builder()
///                     .id(current.accountId())
///                     .build())
///                 .awsServices(AssessmentScopeAwsServiceArgs.builder()
///                     .serviceName("S3")
///                     .build())
///                 .build())
///             .roles(AssessmentRoleArgs.builder()
///                 .roleArn(testAwsIamRole.arn())
///                 .roleType("PROCESS_OWNER")
///                 .build())
///             .name("example")
///             .frameworkId(testAwsAuditmanagerFramework.id())
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
///       assessmentReportsDestination:
///         destination: s3://${testAwsS3Bucket.id}
///         destinationType: S3
///       scope:
///         awsAccounts:
///           - id: ${current.accountId}
///         awsServices:
///           - serviceName: S3
///       roles:
///         - roleArn: ${testAwsIamRole.arn}
///           roleType: PROCESS_OWNER
///       name: example
///       frameworkId: ${testAwsAuditmanagerFramework.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Unique identifier for the assessment.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Audit Manager Assessments using the assessment `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessment:Assessment example abc123-de45
/// ```
class Assessment extends pulumi.CustomResource {
  /// ARN of the assessment.
  late final pulumi.Output<String> arn;
  /// Assessment report storage destination configuration. See `assessmentReportsDestination` below.
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
  /// A map of tags to assign to the assessment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    assessmentReportsDestination = registerOutput<AssessmentAssessmentReportsDestination?>('assessmentReportsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentAssessmentReportsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    frameworkId = registerOutput<String>('frameworkId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roles = registerOutput<List<AssessmentRole>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentRole>(guardedValue, (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>())); });
    rolesAlls = registerOutput<List<AssessmentRolesAll>>('rolesAlls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentRolesAll>(guardedValue, (value) => AssessmentRolesAll.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<AssessmentScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Assessment] resource's state with the given [name] and [id].
  static Assessment get(
    String name,
    pulumi.Input<String> id, {
    AssessmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Assessment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    assessmentReportsDestination = registerOutput<AssessmentAssessmentReportsDestination?>('assessmentReportsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentAssessmentReportsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    frameworkId = registerOutput<String>('frameworkId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roles = registerOutput<List<AssessmentRole>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentRole>(guardedValue, (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>())); });
    rolesAlls = registerOutput<List<AssessmentRolesAll>>('rolesAlls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentRolesAll>(guardedValue, (value) => AssessmentRolesAll.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<AssessmentScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Assessment] resource.
  Assessment.reference(String urn)
    : super(
        'aws:auditmanager/assessment:Assessment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    assessmentReportsDestination = registerOutput<AssessmentAssessmentReportsDestination?>('assessmentReportsDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentAssessmentReportsDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    frameworkId = registerOutput<String>('frameworkId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roles = registerOutput<List<AssessmentRole>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentRole>(guardedValue, (value) => AssessmentRole.fromMap((value as Map).cast<String, dynamic>())); });
    rolesAlls = registerOutput<List<AssessmentRolesAll>>('rolesAlls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssessmentRolesAll>(guardedValue, (value) => AssessmentRolesAll.fromMap((value as Map).cast<String, dynamic>())); });
    scope = registerOutput<AssessmentScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
