import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_args.dart';
import 'member_state.dart';

/// Provides a resource to manage a GuardDuty member. To accept invitations in member accounts, see the `aws.guardduty.InviteAccepter` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.guardduty.Detector("primary", {enable: true});
/// const member = new aws.guardduty.Detector("member", {enable: true});
/// const memberMember = new aws.guardduty.Member("member", {
///     accountId: member.accountId,
///     detectorId: primary.id,
///     email: "required@example.com",
///     invite: true,
///     invitationMessage: "please accept guardduty invitation",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.guardduty.Detector("primary", enable=True)
/// member = aws.guardduty.Detector("member", enable=True)
/// member_member = aws.guardduty.Member("member",
///     account_id=member.account_id,
///     detector_id=primary.id,
///     email="required@example.com",
///     invite=True,
///     invitation_message="please accept guardduty invitation")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.GuardDuty.Detector("primary", new()
///     {
///         Enable = true,
///     });
///
///     var member = new Aws.GuardDuty.Detector("member", new()
///     {
///         Enable = true,
///     });
///
///     var memberMember = new Aws.GuardDuty.Member("member", new()
///     {
///         AccountId = member.AccountId,
///         DetectorId = primary.Id,
///         Email = "required@example.com",
///         Invite = true,
///         InvitationMessage = "please accept guardduty invitation",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := guardduty.NewDetector(ctx, "primary", &guardduty.DetectorArgs{
/// 			Enable: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		member, err := guardduty.NewDetector(ctx, "member", &guardduty.DetectorArgs{
/// 			Enable: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewMember(ctx, "member", &guardduty.MemberArgs{
/// 			AccountId:         member.AccountId,
/// 			DetectorId:        primary.ID(),
/// 			Email:             pulumi.String("required@example.com"),
/// 			Invite:            pulumi.Bool(true),
/// 			InvitationMessage: pulumi.String("please accept guardduty invitation"),
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
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.DetectorArgs;
/// import com.pulumi.aws.guardduty.Member;
/// import com.pulumi.aws.guardduty.MemberArgs;
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
///         var primary = new Detector("primary", DetectorArgs.builder()
///             .enable(true)
///             .build());
///
///         var member = new Detector("member", DetectorArgs.builder()
///             .enable(true)
///             .build());
///
///         var memberMember = new Member("memberMember", MemberArgs.builder()
///             .accountId(member.accountId())
///             .detectorId(primary.id())
///             .email("required@example.com")
///             .invite(true)
///             .invitationMessage("please accept guardduty invitation")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:guardduty:Detector
///     properties:
///       enable: true
///   member:
///     type: aws:guardduty:Detector
///     properties:
///       enable: true
///   memberMember:
///     type: aws:guardduty:Member
///     name: member
///     properties:
///       accountId: ${member.accountId}
///       detectorId: ${primary.id}
///       email: required@example.com
///       invite: true
///       invitationMessage: please accept guardduty invitation
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty members using the primary GuardDuty detector ID and member AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/member:Member MyMember 00b00fd5aecc0ab60a708659477e9617:123456789012
/// ```
class Member extends pulumi.CustomResource {
  /// AWS account ID for member account.
  late final pulumi.Output<String> accountId;
  /// The detector ID of the GuardDuty account where you want to create member accounts.
  late final pulumi.Output<String> detectorId;
  /// Boolean whether an email notification is sent to the accounts. Defaults to `false`.
  late final pulumi.Output<bool?> disableEmailNotification;
  /// Email address for member account.
  late final pulumi.Output<String> email;
  /// Message for invitation.
  late final pulumi.Output<String?> invitationMessage;
  /// Boolean whether to invite the account to GuardDuty as a member. Defaults to `false`. To detect if an invitation needs to be (re-)sent, the this provider state value is `true` based on a `relationship_status` of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  late final pulumi.Output<bool?> invite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The status of the relationship between the member account and its primary account. More information can be found in [Amazon GuardDuty API Reference](https://docs.aws.amazon.com/guardduty/latest/ug/get-members.html).
  late final pulumi.Output<String> relationshipStatus;

  /// Creates a new [Member].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Member]. {@macro pulumi_guardduty_member_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Member(
    String name, {
    MemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/member:Member',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    detectorId = registerOutput<String>('detectorId');
    disableEmailNotification = registerOutput<bool?>('disableEmailNotification');
    email = registerOutput<String>('email');
    invitationMessage = registerOutput<String?>('invitationMessage');
    invite = registerOutput<bool?>('invite');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
  }

  /// Gets an existing [Member] resource's state with the given [name] and [id].
  static Member get(
    String name,
    pulumi.Input<String> id, {
    MemberState? state,
  }) {
    return Member._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Member._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/member:Member',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    detectorId = registerOutput<String>('detectorId');
    disableEmailNotification = registerOutput<bool?>('disableEmailNotification');
    email = registerOutput<String>('email');
    invitationMessage = registerOutput<String?>('invitationMessage');
    invite = registerOutput<bool?>('invite');
    region = registerOutput<String>('region');
    relationshipStatus = registerOutput<String>('relationshipStatus');
  }
}
