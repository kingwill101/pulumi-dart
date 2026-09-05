import 'package:pulumi/pulumi.dart' as pulumi;
import 'invite_accepter_args.dart';
import 'invite_accepter_state.dart';

/// Provides a resource to accept a pending GuardDuty invite on creation, ensure the detector has the correct primary account on read, and disassociate with the primary account upon removal.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.guardduty.Detector("primary", {});
/// const memberDetector = new aws.guardduty.Detector("member", {});
/// const memberMember = new aws.guardduty.Member("member", {
///     accountId: memberDetector.accountId,
///     detectorId: primary.id,
///     email: "required@example.com",
///     invite: true,
/// });
/// const member = new aws.guardduty.InviteAccepter("member", {
///     detectorId: memberDetector.id,
///     masterAccountId: primary.accountId,
/// }, {
///     dependsOn: [memberMember],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.guardduty.Detector("primary")
/// member_detector = aws.guardduty.Detector("member")
/// member_member = aws.guardduty.Member("member",
///     account_id=member_detector.account_id,
///     detector_id=primary.id,
///     email="required@example.com",
///     invite=True)
/// member = aws.guardduty.InviteAccepter("member",
///     detector_id=member_detector.id,
///     master_account_id=primary.account_id,
///     opts = pulumi.ResourceOptions(depends_on=[member_member]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.GuardDuty.Detector("primary");
///
///     var memberDetector = new Aws.GuardDuty.Detector("member");
///
///     var memberMember = new Aws.GuardDuty.Member("member", new()
///     {
///         AccountId = memberDetector.AccountId,
///         DetectorId = primary.Id,
///         Email = "required@example.com",
///         Invite = true,
///     });
///
///     var member = new Aws.GuardDuty.InviteAccepter("member", new()
///     {
///         DetectorId = memberDetector.Id,
///         MasterAccountId = primary.AccountId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             memberMember,
///         },
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
/// 		primary, err := guardduty.NewDetector(ctx, "primary", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		memberDetector, err := guardduty.NewDetector(ctx, "member", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		memberMember, err := guardduty.NewMember(ctx, "member", &guardduty.MemberArgs{
/// 			AccountId:  memberDetector.AccountId,
/// 			DetectorId: primary.ID().ToIDOutput().ToStringOutput(),
/// 			Email:      pulumi.String("required@example.com"),
/// 			Invite:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = guardduty.NewInviteAccepter(ctx, "member", &guardduty.InviteAccepterArgs{
/// 			DetectorId:      memberDetector.ID().ToIDOutput().ToStringOutput(),
/// 			MasterAccountId: primary.AccountId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			memberMember,
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
/// resource "aws_guardduty_inviteaccepter" "member" {
///   depends_on        = [aws_guardduty_member.member]
///   detector_id       = aws_guardduty_detector.member.id
///   master_account_id = aws_guardduty_detector.primary.account_id
/// }
/// resource "aws_guardduty_member" "member" {
///   account_id  = aws_guardduty_detector.member.account_id
///   detector_id = aws_guardduty_detector.primary.id
///   email       = "required@example.com"
///   invite      = true
/// }
/// resource "aws_guardduty_detector" "primary" {
/// }
/// resource "aws_guardduty_detector" "member" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.Member;
/// import com.pulumi.aws.guardduty.MemberArgs;
/// import com.pulumi.aws.guardduty.InviteAccepter;
/// import com.pulumi.aws.guardduty.InviteAccepterArgs;
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
///         var primary = new Detector("primary");
///
///         var memberDetector = new Detector("memberDetector");
///
///         var memberMember = new Member("memberMember", MemberArgs.builder()
///             .accountId(memberDetector.accountId())
///             .detectorId(primary.id())
///             .email("required@example.com")
///             .invite(true)
///             .build());
///
///         var member = new InviteAccepter("member", InviteAccepterArgs.builder()
///             .detectorId(memberDetector.id())
///             .masterAccountId(primary.accountId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(memberMember)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   member:
///     type: aws:guardduty:InviteAccepter
///     properties:
///       detectorId: ${memberDetector.id}
///       masterAccountId: ${primary.accountId}
///     options:
///       dependsOn:
///         - ${memberMember}
///   memberMember:
///     type: aws:guardduty:Member
///     name: member
///     properties:
///       accountId: ${memberDetector.accountId}
///       detectorId: ${primary.id}
///       email: required@example.com
///       invite: true
///   primary:
///     type: aws:guardduty:Detector
///   memberDetector:
///     type: aws:guardduty:Detector
///     name: member
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.guardduty.InviteAccepter` using the member GuardDuty detector ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/inviteAccepter:InviteAccepter member 00b00fd5aecc0ab60a708659477e9617
/// ```
class InviteAccepter extends pulumi.CustomResource {
  /// The detector ID of the member GuardDuty account.
  late final pulumi.Output<String> detectorId;
  /// AWS account ID for primary account.
  late final pulumi.Output<String> masterAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [InviteAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InviteAccepter]. {@macro pulumi_guardduty_invite_accepter_invite_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InviteAccepter(
    String name, {
    InviteAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/inviteAccepter:InviteAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    detectorId = registerOutput<String>('detectorId');
    masterAccountId = registerOutput<String>('masterAccountId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [InviteAccepter] resource's state with the given [name] and [id].
  static InviteAccepter get(
    String name,
    pulumi.Input<String> id, {
    InviteAccepterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InviteAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InviteAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/inviteAccepter:InviteAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    detectorId = registerOutput<String>('detectorId');
    masterAccountId = registerOutput<String>('masterAccountId');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [InviteAccepter] resource.
  InviteAccepter.reference(String urn)
    : super(
        'aws:guardduty/inviteAccepter:InviteAccepter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    detectorId = registerOutput<String>('detectorId');
    masterAccountId = registerOutput<String>('masterAccountId');
    region = registerOutput<String>('region');
  }
}
