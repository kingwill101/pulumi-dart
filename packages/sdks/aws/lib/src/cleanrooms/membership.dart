import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_args.dart';
import 'membership_default_result_configuration.dart';
import 'membership_payment_configuration.dart';
import 'membership_state.dart';

/// Provides a AWS Clean Rooms membership. Memberships are used to join a Clean Rooms collaboration by the invited member.
///
/// ## Example Usage
///
/// ### Membership with tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testMembership = new aws.cleanrooms.Membership("test_membership", {
///     defaultResultConfiguration: {
///         outputConfiguration: {
///             s3: {
///                 bucket: "test-bucket",
///                 resultFormat: "PARQUET",
///                 keyPrefix: "test-prefix",
///             },
///         },
///         roleArn: "arn:aws:iam::123456789012:role/role-name",
///     },
///     collaborationId: "1234abcd-12ab-34cd-56ef-1234567890ab",
///     queryLogStatus: "DISABLED",
///     tags: {
///         Project: "Terraform",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_membership = aws.cleanrooms.Membership("test_membership",
///     default_result_configuration={
///         "output_configuration": {
///             "s3": {
///                 "bucket": "test-bucket",
///                 "result_format": "PARQUET",
///                 "key_prefix": "test-prefix",
///             },
///         },
///         "role_arn": "arn:aws:iam::123456789012:role/role-name",
///     },
///     collaboration_id="1234abcd-12ab-34cd-56ef-1234567890ab",
///     query_log_status="DISABLED",
///     tags={
///         "Project": "Terraform",
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
///     var testMembership = new Aws.CleanRooms.Membership("test_membership", new()
///     {
///         DefaultResultConfiguration = new Aws.CleanRooms.Inputs.MembershipDefaultResultConfigurationArgs
///         {
///             OutputConfiguration = new Aws.CleanRooms.Inputs.MembershipDefaultResultConfigurationOutputConfigurationArgs
///             {
///                 S3 = new Aws.CleanRooms.Inputs.MembershipDefaultResultConfigurationOutputConfigurationS3Args
///                 {
///                     Bucket = "test-bucket",
///                     ResultFormat = "PARQUET",
///                     KeyPrefix = "test-prefix",
///                 },
///             },
///             RoleArn = "arn:aws:iam::123456789012:role/role-name",
///         },
///         CollaborationId = "1234abcd-12ab-34cd-56ef-1234567890ab",
///         QueryLogStatus = "DISABLED",
///         Tags =
///         {
///             { "Project", "Terraform" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cleanrooms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cleanrooms.NewMembership(ctx, "test_membership", &cleanrooms.MembershipArgs{
/// 			DefaultResultConfiguration: &cleanrooms.MembershipDefaultResultConfigurationArgs{
/// 				OutputConfiguration: &cleanrooms.MembershipDefaultResultConfigurationOutputConfigurationArgs{
/// 					S3: &cleanrooms.MembershipDefaultResultConfigurationOutputConfigurationS3Args{
/// 						Bucket:       pulumi.String("test-bucket"),
/// 						ResultFormat: pulumi.String("PARQUET"),
/// 						KeyPrefix:    pulumi.String("test-prefix"),
/// 					},
/// 				},
/// 				RoleArn: pulumi.String("arn:aws:iam::123456789012:role/role-name"),
/// 			},
/// 			CollaborationId: pulumi.String("1234abcd-12ab-34cd-56ef-1234567890ab"),
/// 			QueryLogStatus:  pulumi.String("DISABLED"),
/// 			Tags: pulumi.StringMap{
/// 				"Project": pulumi.String("Terraform"),
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
/// resource "aws_cleanrooms_membership" "test_membership" {
///   default_result_configuration = {
///     output_configuration = {
///       s3 = {
///         bucket        = "test-bucket"
///         result_format = "PARQUET"
///         key_prefix    = "test-prefix"
///       }
///     }
///     role_arn = "arn:aws:iam::123456789012:role/role-name"
///   }
///   collaboration_id = "1234abcd-12ab-34cd-56ef-1234567890ab"
///   query_log_status = "DISABLED"
///   tags = {
///     "Project" = "Terraform"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cleanrooms.Membership;
/// import com.pulumi.aws.cleanrooms.MembershipArgs;
/// import com.pulumi.aws.cleanrooms.inputs.MembershipDefaultResultConfigurationArgs;
/// import com.pulumi.aws.cleanrooms.inputs.MembershipDefaultResultConfigurationOutputConfigurationArgs;
/// import com.pulumi.aws.cleanrooms.inputs.MembershipDefaultResultConfigurationOutputConfigurationS3Args;
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
///         var testMembership = new Membership("testMembership", MembershipArgs.builder()
///             .defaultResultConfiguration(MembershipDefaultResultConfigurationArgs.builder()
///                 .outputConfiguration(MembershipDefaultResultConfigurationOutputConfigurationArgs.builder()
///                     .s3(MembershipDefaultResultConfigurationOutputConfigurationS3Args.builder()
///                         .bucket("test-bucket")
///                         .resultFormat("PARQUET")
///                         .keyPrefix("test-prefix")
///                         .build())
///                     .build())
///                 .roleArn("arn:aws:iam::123456789012:role/role-name")
///                 .build())
///             .collaborationId("1234abcd-12ab-34cd-56ef-1234567890ab")
///             .queryLogStatus("DISABLED")
///             .tags(Map.of("Project", "Terraform"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testMembership:
///     type: aws:cleanrooms:Membership
///     name: test_membership
///     properties:
///       defaultResultConfiguration:
///         outputConfiguration:
///           s3:
///             bucket: test-bucket
///             resultFormat: PARQUET
///             keyPrefix: test-prefix
///         roleArn: arn:aws:iam::123456789012:role/role-name
///       collaborationId: 1234abcd-12ab-34cd-56ef-1234567890ab
///       queryLogStatus: DISABLED
///       tags:
///         Project: Terraform
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the membership.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.cleanrooms.Membership` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cleanrooms/membership:Membership membership 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class Membership extends pulumi.CustomResource {
  /// The ARN of the membership.
  late final pulumi.Output<String> arn;
  /// The ARN of the joined collaboration.
  late final pulumi.Output<String> collaborationArn;
  /// The account ID of the collaboration's creator.
  late final pulumi.Output<String> collaborationCreatorAccountId;
  /// The display name of the collaboration's creator.
  late final pulumi.Output<String> collaborationCreatorDisplayName;
  /// The ID of the collaboration to which the member was invited.
  late final pulumi.Output<String> collaborationId;
  /// The name of the joined collaboration.
  late final pulumi.Output<String> collaborationName;
  /// The date and time the membership was created.
  late final pulumi.Output<String> createTime;
  /// The default configuration for a query result.
  late final pulumi.Output<MembershipDefaultResultConfiguration?> defaultResultConfiguration;
  /// The list of abilities for the invited member.
  late final pulumi.Output<List<String>> memberAbilities;
  late final pulumi.Output<MembershipPaymentConfiguration?> paymentConfiguration;
  /// An indicator as to whether query logging has been enabled or disabled for the membership.
  late final pulumi.Output<String> queryLogStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The status of the membership.
  late final pulumi.Output<String> status;
  /// Key value pairs which tag the membership.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The date and time the membership was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Membership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Membership]. {@macro pulumi_cleanrooms_membership_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Membership(
    String name, {
    MembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/membership:Membership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    collaborationArn = registerOutput<String>('collaborationArn');
    collaborationCreatorAccountId = registerOutput<String>('collaborationCreatorAccountId');
    collaborationCreatorDisplayName = registerOutput<String>('collaborationCreatorDisplayName');
    collaborationId = registerOutput<String>('collaborationId');
    collaborationName = registerOutput<String>('collaborationName');
    createTime = registerOutput<String>('createTime');
    defaultResultConfiguration = registerOutput<MembershipDefaultResultConfiguration?>('defaultResultConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MembershipDefaultResultConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memberAbilities = registerOutput<List<String>>('memberAbilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    paymentConfiguration = registerOutput<MembershipPaymentConfiguration?>('paymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MembershipPaymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Membership] resource's state with the given [name] and [id].
  static Membership get(
    String name,
    pulumi.Input<String> id, {
    MembershipState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Membership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Membership._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/membership:Membership',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    collaborationArn = registerOutput<String>('collaborationArn');
    collaborationCreatorAccountId = registerOutput<String>('collaborationCreatorAccountId');
    collaborationCreatorDisplayName = registerOutput<String>('collaborationCreatorDisplayName');
    collaborationId = registerOutput<String>('collaborationId');
    collaborationName = registerOutput<String>('collaborationName');
    createTime = registerOutput<String>('createTime');
    defaultResultConfiguration = registerOutput<MembershipDefaultResultConfiguration?>('defaultResultConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MembershipDefaultResultConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memberAbilities = registerOutput<List<String>>('memberAbilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    paymentConfiguration = registerOutput<MembershipPaymentConfiguration?>('paymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MembershipPaymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Membership] resource.
  Membership.reference(String urn)
    : super(
        'aws:cleanrooms/membership:Membership',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    collaborationArn = registerOutput<String>('collaborationArn');
    collaborationCreatorAccountId = registerOutput<String>('collaborationCreatorAccountId');
    collaborationCreatorDisplayName = registerOutput<String>('collaborationCreatorDisplayName');
    collaborationId = registerOutput<String>('collaborationId');
    collaborationName = registerOutput<String>('collaborationName');
    createTime = registerOutput<String>('createTime');
    defaultResultConfiguration = registerOutput<MembershipDefaultResultConfiguration?>('defaultResultConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MembershipDefaultResultConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memberAbilities = registerOutput<List<String>>('memberAbilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    paymentConfiguration = registerOutput<MembershipPaymentConfiguration?>('paymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MembershipPaymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
