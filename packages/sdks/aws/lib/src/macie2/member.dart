import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_args.dart';
import 'member_state.dart';

/// Provides a resource to manage an [Amazon Macie Member](https://docs.aws.amazon.com/macie/latest/APIReference/members-id.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const exampleMember = new aws.macie2.Member("example", {
///     accountId: "AWS ACCOUNT ID",
///     email: "EMAIL",
///     invite: true,
///     invitationMessage: "Message of the invitation",
///     invitationDisableEmailNotification: true,
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// example_member = aws.macie2.Member("example",
///     account_id="AWS ACCOUNT ID",
///     email="EMAIL",
///     invite=True,
///     invitation_message="Message of the invitation",
///     invitation_disable_email_notification=True,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Macie2.Account("example");
///
///     var exampleMember = new Aws.Macie2.Member("example", new()
///     {
///         AccountId = "AWS ACCOUNT ID",
///         Email = "EMAIL",
///         Invite = true,
///         InvitationMessage = "Message of the invitation",
///         InvitationDisableEmailNotification = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := macie2.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie2.NewMember(ctx, "example", &macie2.MemberArgs{
/// 			AccountId:                          pulumi.String("AWS ACCOUNT ID"),
/// 			Email:                              pulumi.String("EMAIL"),
/// 			Invite:                             pulumi.Bool(true),
/// 			InvitationMessage:                  pulumi.String("Message of the invitation"),
/// 			InvitationDisableEmailNotification: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_macie2_account" "example" {
/// }
/// resource "aws_macie2_member" "example" {
///   depends_on                            = [aws_macie2_account.example]
///   account_id                            = "AWS ACCOUNT ID"
///   email                                 = "EMAIL"
///   invite                                = true
///   invitation_message                    = "Message of the invitation"
///   invitation_disable_email_notification = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.Member;
/// import com.pulumi.aws.macie2.MemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         var exampleMember = new Member("exampleMember", MemberArgs.builder()
///             .accountId("AWS ACCOUNT ID")
///             .email("EMAIL")
///             .invite(true)
///             .invitationMessage("Message of the invitation")
///             .invitationDisableEmailNotification(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:macie2:Account
///   exampleMember:
///     type: aws:macie2:Member
///     name: example
///     properties:
///       accountId: AWS ACCOUNT ID
///       email: EMAIL
///       invite: true
///       invitationMessage: Message of the invitation
///       invitationDisableEmailNotification: true
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.Member` using the account ID of the member account. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/member:Member example 123456789012
/// ```
class Member extends pulumi.CustomResource {
  /// The AWS account ID for the account.
  late final pulumi.Output<String> accountId;
  /// The AWS account ID for the administrator account.
  late final pulumi.Output<String> administratorAccountId;
  /// ARN of the account.
  late final pulumi.Output<String> arn;
  /// The email address for the account.
  late final pulumi.Output<String> email;
  /// Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  late final pulumi.Output<bool?> invitationDisableEmailNotification;
  /// A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  late final pulumi.Output<String?> invitationMessage;
  /// Send an invitation to a member
  late final pulumi.Output<bool> invite;
  /// The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  late final pulumi.Output<String> invitedAt;
  late final pulumi.Output<String> masterAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The current status of the relationship between the account and the administrator account.
  late final pulumi.Output<String> relationshipStatus;
  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [Member].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Member]. {@macro pulumi_macie2_member_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Member(
    String name, {
    MemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/member:Member',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    administratorAccountId = registerOutput<String>('administratorAccountId');
    arn = registerOutput<String>('arn');
    email = registerOutput<String>('email');
    invitationDisableEmailNotification = registerOutput<bool?>('invitationDisableEmailNotification');
    invitationMessage = registerOutput<String?>('invitationMessage');
    invite = registerOutput<bool>('invite');
    invitedAt = registerOutput<String>('invitedAt');
    masterAccountId = registerOutput<String>('masterAccountId');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [Member] resource's state with the given [name] and [id].
  static Member get(
    String name,
    pulumi.Input<String> id, {
    MemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Member._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Member._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/member:Member',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    administratorAccountId = registerOutput<String>('administratorAccountId');
    arn = registerOutput<String>('arn');
    email = registerOutput<String>('email');
    invitationDisableEmailNotification = registerOutput<bool?>('invitationDisableEmailNotification');
    invitationMessage = registerOutput<String?>('invitationMessage');
    invite = registerOutput<bool>('invite');
    invitedAt = registerOutput<String>('invitedAt');
    masterAccountId = registerOutput<String>('masterAccountId');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [Member] resource.
  Member.reference(String urn)
    : super(
        'aws:macie2/member:Member',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    administratorAccountId = registerOutput<String>('administratorAccountId');
    arn = registerOutput<String>('arn');
    email = registerOutput<String>('email');
    invitationDisableEmailNotification = registerOutput<bool?>('invitationDisableEmailNotification');
    invitationMessage = registerOutput<String?>('invitationMessage');
    invite = registerOutput<bool>('invite');
    invitedAt = registerOutput<String>('invitedAt');
    masterAccountId = registerOutput<String>('masterAccountId');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
