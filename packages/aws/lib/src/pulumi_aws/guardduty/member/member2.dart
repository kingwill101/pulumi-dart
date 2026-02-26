import 'package:pulumi/pulumi.dart';
import 'member_args2.dart';

/// Provides a resource to manage a GuardDuty member. To accept invitations in member accounts, see the <span pulumi-lang-nodejs="`aws.guardduty.InviteAccepter`" pulumi-lang-dotnet="`aws.guardduty.InviteAccepter`" pulumi-lang-go="`guardduty.InviteAccepter`" pulumi-lang-python="`guardduty.InviteAccepter`" pulumi-lang-yaml="`aws.guardduty.InviteAccepter`" pulumi-lang-java="`aws.guardduty.InviteAccepter`">`aws.guardduty.InviteAccepter`</span> resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.guardduty.Detector("primary", {enable: true});
/// const member = new aws.guardduty.Detector("member", {enable: true});
/// const memberMember = new aws.guardduty.Member("member", {
/// accountId: member.accountId,
/// detectorId: primary.id,
/// email: "required@example.com",
/// invite: true,
/// invitationMessage: "please accept guardduty invitation",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.guardduty.Detector("primary", enable=True)
/// member = aws.guardduty.Detector("member", enable=True)
/// member_member = aws.guardduty.Member("member",
/// account_id=member.account_id,
/// detector_id=primary.id,
/// email="required@example.com",
/// invite=True,
/// invitation_message="please accept guardduty invitation")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var primary = new Aws.GuardDuty.Detector("primary", new()
/// {
/// Enable = true,
/// });
///
/// var member = new Aws.GuardDuty.Detector("member", new()
/// {
/// Enable = true,
/// });
///
/// var memberMember = new Aws.GuardDuty.Member("member", new()
/// {
/// AccountId = member.AccountId,
/// DetectorId = primary.Id,
/// Email = "required@example.com",
/// Invite = true,
/// InvitationMessage = "please accept guardduty invitation",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// primary, err := guardduty.NewDetector(ctx, "primary", &guardduty.DetectorArgs{
/// Enable: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// member, err := guardduty.NewDetector(ctx, "member", &guardduty.DetectorArgs{
/// Enable: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = guardduty.NewMember(ctx, "member", &guardduty.MemberArgs{
/// AccountId:         member.AccountId,
/// DetectorId:        primary.ID(),
/// Email:             pulumi.String("required@example.com"),
/// Invite:            pulumi.Bool(true),
/// InvitationMessage: pulumi.String("please accept guardduty invitation"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var primary = new Detector("primary", DetectorArgs.builder()
/// .enable(true)
/// .build());
///
/// var member = new Detector("member", DetectorArgs.builder()
/// .enable(true)
/// .build());
///
/// var memberMember = new Member("memberMember", MemberArgs.builder()
/// .accountId(member.accountId())
/// .detectorId(primary.id())
/// .email("required@example.com")
/// .invite(true)
/// .invitationMessage("please accept guardduty invitation")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: aws:guardduty:Detector
/// properties:
/// enable: true
/// member:
/// type: aws:guardduty:Detector
/// properties:
/// enable: true
/// memberMember:
/// type: aws:guardduty:Member
/// name: member
/// properties:
/// accountId: ${member.accountId}
/// detectorId: ${primary.id}
/// email: required@example.com
/// invite: true
/// invitationMessage: please accept guardduty invitation
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty members using the primary GuardDuty detector ID and member AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/member:Member MyMember 00b00fd5aecc0ab60a708659477e9617:123456789012
/// ```
class Member2 extends CustomResource {
  /// AWS account ID for member account.
  late final Output<String> accountId;

  /// The detector ID of the GuardDuty account where you want to create member accounts.
  late final Output<String> detectorId;

  /// Boolean whether an email notification is sent to the accounts. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> disableEmailNotification;

  /// Email address for member account.
  late final Output<String> email;

  /// Message for invitation.
  late final Output<String?> invitationMessage;

  /// Boolean whether to invite the account to GuardDuty as a member. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. To detect if an invitation needs to be (re-)sent, the this provider state value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> based on a <span pulumi-lang-nodejs="`relationshipStatus`" pulumi-lang-dotnet="`RelationshipStatus`" pulumi-lang-go="`relationshipStatus`" pulumi-lang-python="`relationship_status`" pulumi-lang-yaml="`relationshipStatus`" pulumi-lang-java="`relationshipStatus`">`relationship_status`</span> of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  late final Output<bool?> invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the relationship between the member account and its primary account. More information can be found in [Amazon GuardDuty API Reference](https://docs.aws.amazon.com/guardduty/latest/ug/get-members.html).
  late final Output<String> relationshipStatus;

  Member2(
    String name, {
    MemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/member:Member',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.detectorId = registerOutput<String>('detectorId');
    this.disableEmailNotification =
        registerOutput<bool?>('disableEmailNotification');
    this.email = registerOutput<String>('email');
    this.invitationMessage = registerOutput<String?>('invitationMessage');
    this.invite = registerOutput<bool?>('invite');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
  }
}
