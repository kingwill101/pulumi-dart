import 'package:pulumi/pulumi.dart';
import 'member_args3.dart';

/// Provides a resource to manage an [Amazon Macie Member](https://docs.aws.amazon.com/macie/latest/APIReference/members-id.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const exampleMember = new aws.macie2.Member("example", {
/// accountId: "AWS ACCOUNT ID",
/// email: "EMAIL",
/// invite: true,
/// invitationMessage: "Message of the invitation",
/// invitationDisableEmailNotification: true,
/// }, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// example_member = aws.macie2.Member("example",
/// account_id="AWS ACCOUNT ID",
/// email="EMAIL",
/// invite=True,
/// invitation_message="Message of the invitation",
/// invitation_disable_email_notification=True,
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Macie2.Account("example");
///
/// var exampleMember = new Aws.Macie2.Member("example", new()
/// {
/// AccountId = "AWS ACCOUNT ID",
/// Email = "EMAIL",
/// Invite = true,
/// InvitationMessage = "Message of the invitation",
/// InvitationDisableEmailNotification = true,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := macie2.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = macie2.NewMember(ctx, "example", &macie2.MemberArgs{
/// AccountId:                          pulumi.String("AWS ACCOUNT ID"),
/// Email:                              pulumi.String("EMAIL"),
/// Invite:                             pulumi.Bool(true),
/// InvitationMessage:                  pulumi.String("Message of the invitation"),
/// InvitationDisableEmailNotification: pulumi.Bool(true),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.Member;
/// import com.pulumi.aws.macie2.MemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Account("example");
///
/// var exampleMember = new Member("exampleMember", MemberArgs.builder()
/// .accountId("AWS ACCOUNT ID")
/// .email("EMAIL")
/// .invite(true)
/// .invitationMessage("Message of the invitation")
/// .invitationDisableEmailNotification(true)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:macie2:Account
/// exampleMember:
/// type: aws:macie2:Member
/// name: example
/// properties:
/// accountId: AWS ACCOUNT ID
/// email: EMAIL
/// invite: true
/// invitationMessage: Message of the invitation
/// invitationDisableEmailNotification: true
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.macie2.Member`" pulumi-lang-dotnet="`aws.macie2.Member`" pulumi-lang-go="`macie2.Member`" pulumi-lang-python="`macie2.Member`" pulumi-lang-yaml="`aws.macie2.Member`" pulumi-lang-java="`aws.macie2.Member`">`aws.macie2.Member`</span> using the account ID of the member account. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/member:Member example 123456789012
/// ```
class Member3 extends CustomResource {
  /// The AWS account ID for the account.
  late final Output<String> accountId;

  /// The AWS account ID for the administrator account.
  late final Output<String> administratorAccountId;

  /// The Amazon Resource Name (ARN) of the account.
  late final Output<String> arn;

  /// The email address for the account.
  late final Output<String> email;

  /// Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> invitationDisableEmailNotification;

  /// A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  late final Output<String?> invitationMessage;

  /// Send an invitation to a member
  late final Output<bool> invite;

  /// The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  late final Output<String> invitedAt;
  late final Output<String> masterAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current status of the relationship between the account and the administrator account.
  late final Output<String> relationshipStatus;

  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  late final Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  late final Output<String> updatedAt;

  Member3(
    String name, {
    MemberArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/member:Member',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.administratorAccountId =
        registerOutput<String>('administratorAccountId');
    this.arn = registerOutput<String>('arn');
    this.email = registerOutput<String>('email');
    this.invitationDisableEmailNotification =
        registerOutput<bool?>('invitationDisableEmailNotification');
    this.invitationMessage = registerOutput<String?>('invitationMessage');
    this.invite = registerOutput<bool>('invite');
    this.invitedAt = registerOutput<String>('invitedAt');
    this.masterAccountId = registerOutput<String>('masterAccountId');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
