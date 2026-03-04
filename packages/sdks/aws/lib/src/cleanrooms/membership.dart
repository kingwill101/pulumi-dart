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
///     collaborationId: "1234abcd-12ab-34cd-56ef-1234567890ab",
///     queryLogStatus: "DISABLED",
///     defaultResultConfiguration: {
///         roleArn: "arn:aws:iam::123456789012:role/role-name",
///         outputConfiguration: {
///             s3: {
///                 bucket: "test-bucket",
///                 resultFormat: "PARQUET",
///                 keyPrefix: "test-prefix",
///             },
///         },
///     },
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
///     collaboration_id="1234abcd-12ab-34cd-56ef-1234567890ab",
///     query_log_status="DISABLED",
///     default_result_configuration={
///         "role_arn": "arn:aws:iam::123456789012:role/role-name",
///         "output_configuration": {
///             "s3": {
///                 "bucket": "test-bucket",
///                 "result_format": "PARQUET",
///                 "key_prefix": "test-prefix",
///             },
///         },
///     },
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
///         CollaborationId = "1234abcd-12ab-34cd-56ef-1234567890ab",
///         QueryLogStatus = "DISABLED",
///         DefaultResultConfiguration = new Aws.CleanRooms.Inputs.MembershipDefaultResultConfigurationArgs
///         {
///             RoleArn = "arn:aws:iam::123456789012:role/role-name",
///             OutputConfiguration = new Aws.CleanRooms.Inputs.MembershipDefaultResultConfigurationOutputConfigurationArgs
///             {
///                 S3 = new Aws.CleanRooms.Inputs.MembershipDefaultResultConfigurationOutputConfigurationS3Args
///                 {
///                     Bucket = "test-bucket",
///                     ResultFormat = "PARQUET",
///                     KeyPrefix = "test-prefix",
///                 },
///             },
///         },
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
/// 			CollaborationId: pulumi.String("1234abcd-12ab-34cd-56ef-1234567890ab"),
/// 			QueryLogStatus:  pulumi.String("DISABLED"),
/// 			DefaultResultConfiguration: &cleanrooms.MembershipDefaultResultConfigurationArgs{
/// 				RoleArn: pulumi.String("arn:aws:iam::123456789012:role/role-name"),
/// 				OutputConfiguration: &cleanrooms.MembershipDefaultResultConfigurationOutputConfigurationArgs{
/// 					S3: &cleanrooms.MembershipDefaultResultConfigurationOutputConfigurationS3Args{
/// 						Bucket:       pulumi.String("test-bucket"),
/// 						ResultFormat: pulumi.String("PARQUET"),
/// 						KeyPrefix:    pulumi.String("test-prefix"),
/// 					},
/// 				},
/// 			},
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
///         var testMembership = new Membership("testMembership", MembershipArgs.builder()
///             .collaborationId("1234abcd-12ab-34cd-56ef-1234567890ab")
///             .queryLogStatus("DISABLED")
///             .defaultResultConfiguration(MembershipDefaultResultConfigurationArgs.builder()
///                 .roleArn("arn:aws:iam::123456789012:role/role-name")
///                 .outputConfiguration(MembershipDefaultResultConfigurationOutputConfigurationArgs.builder()
///                     .s3(MembershipDefaultResultConfigurationOutputConfigurationS3Args.builder()
///                         .bucket("test-bucket")
///                         .resultFormat("PARQUET")
///                         .keyPrefix("test-prefix")
///                         .build())
///                     .build())
///                 .build())
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
///       collaborationId: 1234abcd-12ab-34cd-56ef-1234567890ab
///       queryLogStatus: DISABLED
///       defaultResultConfiguration:
///         roleArn: arn:aws:iam::123456789012:role/role-name
///         outputConfiguration:
///           s3:
///             bucket: test-bucket
///             resultFormat: PARQUET
///             keyPrefix: test-prefix
///       tags:
///         Project: Terraform
/// ```
///
///
/// ## Import
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
  late final pulumi.Output<MembershipDefaultResultConfiguration?>
  defaultResultConfiguration;

  /// The list of abilities for the invited member.
  late final pulumi.Output<List<String>> memberAbilities;
  late final pulumi.Output<MembershipPaymentConfiguration?>
  paymentConfiguration;

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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    collaborationArn = registerOutput<String>('collaborationArn');
    collaborationCreatorAccountId = registerOutput<String>(
      'collaborationCreatorAccountId',
    );
    collaborationCreatorDisplayName = registerOutput<String>(
      'collaborationCreatorDisplayName',
    );
    collaborationId = registerOutput<String>('collaborationId');
    collaborationName = registerOutput<String>('collaborationName');
    createTime = registerOutput<String>('createTime');
    defaultResultConfiguration =
        registerOutput<MembershipDefaultResultConfiguration?>(
          'defaultResultConfiguration',
        );
    memberAbilities = registerOutput<List<String>>('memberAbilities');
    paymentConfiguration = registerOutput<MembershipPaymentConfiguration?>(
      'paymentConfiguration',
    );
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Membership] resource's state with the given [name] and [id].
  static Membership get(
    String name,
    pulumi.Input<String> id, {
    MembershipState? state,
  }) {
    return Membership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    collaborationCreatorAccountId = registerOutput<String>(
      'collaborationCreatorAccountId',
    );
    collaborationCreatorDisplayName = registerOutput<String>(
      'collaborationCreatorDisplayName',
    );
    collaborationId = registerOutput<String>('collaborationId');
    collaborationName = registerOutput<String>('collaborationName');
    createTime = registerOutput<String>('createTime');
    defaultResultConfiguration =
        registerOutput<MembershipDefaultResultConfiguration?>(
          'defaultResultConfiguration',
        );
    memberAbilities = registerOutput<List<String>>('memberAbilities');
    paymentConfiguration = registerOutput<MembershipPaymentConfiguration?>(
      'paymentConfiguration',
    );
    queryLogStatus = registerOutput<String>('queryLogStatus');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }
}
