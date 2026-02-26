import 'package:pulumi/pulumi.dart';
import 'invite_accepter_args2.dart';

/// > **Note:** AWS accounts can only be associated with a single Security Hub master account. Destroying this resource will disassociate the member account from the master account.
///
/// Accepts a Security Hub invitation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleMember = new aws.securityhub.Member("example", {
/// accountId: "123456789012",
/// email: "example@example.com",
/// invite: true,
/// });
/// const invitee = new aws.securityhub.Account("invitee", {});
/// const inviteeInviteAccepter = new aws.securityhub.InviteAccepter("invitee", {masterId: exampleMember.masterId}, {
/// dependsOn: [invitee],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_member = aws.securityhub.Member("example",
/// account_id="123456789012",
/// email="example@example.com",
/// invite=True)
/// invitee = aws.securityhub.Account("invitee")
/// invitee_invite_accepter = aws.securityhub.InviteAccepter("invitee", master_id=example_member.master_id,
/// opts = pulumi.ResourceOptions(depends_on=[invitee]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityHub.Account("example");
///
/// var exampleMember = new Aws.SecurityHub.Member("example", new()
/// {
/// AccountId = "123456789012",
/// Email = "example@example.com",
/// Invite = true,
/// });
///
/// var invitee = new Aws.SecurityHub.Account("invitee");
///
/// var inviteeInviteAccepter = new Aws.SecurityHub.InviteAccepter("invitee", new()
/// {
/// MasterId = exampleMember.MasterId,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// invitee,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleMember, err := securityhub.NewMember(ctx, "example", &securityhub.MemberArgs{
/// AccountId: pulumi.String("123456789012"),
/// Email:     pulumi.String("example@example.com"),
/// Invite:    pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// invitee, err := securityhub.NewAccount(ctx, "invitee", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewInviteAccepter(ctx, "invitee", &securityhub.InviteAccepterArgs{
/// MasterId: exampleMember.MasterId,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// invitee,
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.Member;
/// import com.pulumi.aws.securityhub.MemberArgs;
/// import com.pulumi.aws.securityhub.InviteAccepter;
/// import com.pulumi.aws.securityhub.InviteAccepterArgs;
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
/// .accountId("123456789012")
/// .email("example@example.com")
/// .invite(true)
/// .build());
///
/// var invitee = new Account("invitee");
///
/// var inviteeInviteAccepter = new InviteAccepter("inviteeInviteAccepter", InviteAccepterArgs.builder()
/// .masterId(exampleMember.masterId())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(invitee)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// exampleMember:
/// type: aws:securityhub:Member
/// name: example
/// properties:
/// accountId: '123456789012'
/// email: example@example.com
/// invite: true
/// invitee:
/// type: aws:securityhub:Account
/// inviteeInviteAccepter:
/// type: aws:securityhub:InviteAccepter
/// name: invitee
/// properties:
/// masterId: ${exampleMember.masterId}
/// options:
/// dependsOn:
/// - ${invitee}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub invite acceptance using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/inviteAccepter:InviteAccepter example 123456789012
/// ```
class InviteAccepter2 extends CustomResource {
  /// The ID of the invitation.
  late final Output<String> invitationId;

  /// The account ID of the master Security Hub account whose invitation you're accepting.
  late final Output<String> masterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InviteAccepter2(
    String name, {
    InviteAccepterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/inviteAccepter:InviteAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.invitationId = registerOutput<String>('invitationId');
    this.masterId = registerOutput<String>('masterId');
    this.region = registerOutput<String>('region');
  }
}
