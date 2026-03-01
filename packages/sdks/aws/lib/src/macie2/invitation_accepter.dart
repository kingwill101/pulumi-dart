import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_accepter_args.dart';
import 'invitation_accepter_state.dart';

/// Provides a resource to manage an [Amazon Macie Invitation Accepter](https://docs.aws.amazon.com/macie/latest/APIReference/invitations-accept.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.macie2.Account("primary", {});
/// const member = new aws.macie2.Account("member", {});
/// const primaryMember = new aws.macie2.Member("primary", {
///     accountId: "ACCOUNT ID",
///     email: "EMAIL",
///     invite: true,
///     invitationMessage: "Message of the invite",
/// }, {
///     dependsOn: [primary],
/// });
/// const memberInvitationAccepter = new aws.macie2.InvitationAccepter("member", {administratorAccountId: "ADMINISTRATOR ACCOUNT ID"}, {
///     dependsOn: [primaryMember],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.macie2.Account("primary")
/// member = aws.macie2.Account("member")
/// primary_member = aws.macie2.Member("primary",
///     account_id="ACCOUNT ID",
///     email="EMAIL",
///     invite=True,
///     invitation_message="Message of the invite",
///     opts = pulumi.ResourceOptions(depends_on=[primary]))
/// member_invitation_accepter = aws.macie2.InvitationAccepter("member", administrator_account_id="ADMINISTRATOR ACCOUNT ID",
/// opts = pulumi.ResourceOptions(depends_on=[primary_member]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.Macie2.Account("primary");
///
///     var member = new Aws.Macie2.Account("member");
///
///     var primaryMember = new Aws.Macie2.Member("primary", new()
///     {
///         AccountId = "ACCOUNT ID",
///         Email = "EMAIL",
///         Invite = true,
///         InvitationMessage = "Message of the invite",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primary,
///         },
///     });
///
///     var memberInvitationAccepter = new Aws.Macie2.InvitationAccepter("member", new()
///     {
///         AdministratorAccountId = "ADMINISTRATOR ACCOUNT ID",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryMember,
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
/// 		primary, err := macie2.NewAccount(ctx, "primary", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie2.NewAccount(ctx, "member", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryMember, err := macie2.NewMember(ctx, "primary", &macie2.MemberArgs{
/// 			AccountId:         pulumi.String("ACCOUNT ID"),
/// 			Email:             pulumi.String("EMAIL"),
/// 			Invite:            pulumi.Bool(true),
/// 			InvitationMessage: pulumi.String("Message of the invite"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primary,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie2.NewInvitationAccepter(ctx, "member", &macie2.InvitationAccepterArgs{
/// 			AdministratorAccountId: pulumi.String("ADMINISTRATOR ACCOUNT ID"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryMember,
/// 		}))
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.Member;
/// import com.pulumi.aws.macie2.MemberArgs;
/// import com.pulumi.aws.macie2.InvitationAccepter;
/// import com.pulumi.aws.macie2.InvitationAccepterArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var primary = new Account("primary");
///
///         var member = new Account("member");
///
///         var primaryMember = new Member("primaryMember", MemberArgs.builder()
///             .accountId("ACCOUNT ID")
///             .email("EMAIL")
///             .invite(true)
///             .invitationMessage("Message of the invite")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primary)
///                 .build());
///
///         var memberInvitationAccepter = new InvitationAccepter("memberInvitationAccepter", InvitationAccepterArgs.builder()
///             .administratorAccountId("ADMINISTRATOR ACCOUNT ID")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryMember)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:macie2:Account
///   member:
///     type: aws:macie2:Account
///   primaryMember:
///     type: aws:macie2:Member
///     name: primary
///     properties:
///       accountId: ACCOUNT ID
///       email: EMAIL
///       invite: true
///       invitationMessage: Message of the invite
///     options:
///       dependsOn:
///         - ${primary}
///   memberInvitationAccepter:
///     type: aws:macie2:InvitationAccepter
///     name: member
///     properties:
///       administratorAccountId: ADMINISTRATOR ACCOUNT ID
///     options:
///       dependsOn:
///         - ${primaryMember}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.InvitationAccepter` using the admin account ID. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/invitationAccepter:InvitationAccepter example 123456789012
/// ```
class InvitationAccepter extends pulumi.CustomResource {
  /// The AWS account ID for the account that sent the invitation.
  late final pulumi.Output<String> administratorAccountId;
  /// The unique identifier for the invitation.
  late final pulumi.Output<String> invitationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [InvitationAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InvitationAccepter]. {@macro pulumi_macie2_invitation_accepter_invitation_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InvitationAccepter(
    String name, {
    InvitationAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/invitationAccepter:InvitationAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorAccountId = registerOutput<String>('administratorAccountId');
    this.invitationId = registerOutput<String>('invitationId');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [InvitationAccepter] resource's state with the given [name] and [id].
  static InvitationAccepter get(
    String name,
    pulumi.Input<String> id, {
    InvitationAccepterState? state,
  }) {
    return InvitationAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InvitationAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/invitationAccepter:InvitationAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorAccountId = registerOutput<String>('administratorAccountId');
    this.invitationId = registerOutput<String>('invitationId');
    this.region = registerOutput<String>('region');
  }
}
