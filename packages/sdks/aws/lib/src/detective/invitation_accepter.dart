import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_accepter_args.dart';
import 'invitation_accepter_state.dart';

/// Provides a resource to manage an [Amazon Detective Invitation Accepter](https://docs.aws.amazon.com/detective/latest/APIReference/API_AcceptInvitation.html). Ensure that the accepter is configured to use the AWS account you wish to _accept_ the invitation from the primary graph owner account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.detective.Graph("primary", {});
/// const primaryMember = new aws.detective.Member("primary", {
///     accountId: "ACCOUNT ID",
///     emailAddress: "EMAIL",
///     graphArn: primary.graphArn,
///     message: "Message of the invite",
/// });
/// const member = new aws.detective.InvitationAccepter("member", {graphArn: primary.graphArn}, {
///     dependsOn: [primaryMember],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.detective.Graph("primary")
/// primary_member = aws.detective.Member("primary",
///     account_id="ACCOUNT ID",
///     email_address="EMAIL",
///     graph_arn=primary.graph_arn,
///     message="Message of the invite")
/// member = aws.detective.InvitationAccepter("member", graph_arn=primary.graph_arn,
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
///     var primary = new Aws.Detective.Graph("primary");
///
///     var primaryMember = new Aws.Detective.Member("primary", new()
///     {
///         AccountId = "ACCOUNT ID",
///         EmailAddress = "EMAIL",
///         GraphArn = primary.GraphArn,
///         Message = "Message of the invite",
///     });
///
///     var member = new Aws.Detective.InvitationAccepter("member", new()
///     {
///         GraphArn = primary.GraphArn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := detective.NewGraph(ctx, "primary", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryMember, err := detective.NewMember(ctx, "primary", &detective.MemberArgs{
/// 			AccountId:    pulumi.String("ACCOUNT ID"),
/// 			EmailAddress: pulumi.String("EMAIL"),
/// 			GraphArn:     primary.GraphArn,
/// 			Message:      pulumi.String("Message of the invite"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = detective.NewInvitationAccepter(ctx, "member", &detective.InvitationAccepterArgs{
/// 			GraphArn: primary.GraphArn,
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_detective_graph" "primary" {
/// }
/// resource "aws_detective_member" "primary" {
///   account_id    = "ACCOUNT ID"
///   email_address = "EMAIL"
///   graph_arn     = aws_detective_graph.primary.graph_arn
///   message       = "Message of the invite"
/// }
/// resource "aws_detective_invitationaccepter" "member" {
///   depends_on = [aws_detective_member.primary]
///   graph_arn  = aws_detective_graph.primary.graph_arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.detective.Graph;
/// import com.pulumi.aws.detective.Member;
/// import com.pulumi.aws.detective.MemberArgs;
/// import com.pulumi.aws.detective.InvitationAccepter;
/// import com.pulumi.aws.detective.InvitationAccepterArgs;
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
///         var primary = new Graph("primary");
///
///         var primaryMember = new Member("primaryMember", MemberArgs.builder()
///             .accountId("ACCOUNT ID")
///             .emailAddress("EMAIL")
///             .graphArn(primary.graphArn())
///             .message("Message of the invite")
///             .build());
///
///         var member = new InvitationAccepter("member", InvitationAccepterArgs.builder()
///             .graphArn(primary.graphArn())
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
///     type: aws:detective:Graph
///   primaryMember:
///     type: aws:detective:Member
///     name: primary
///     properties:
///       accountId: ACCOUNT ID
///       emailAddress: EMAIL
///       graphArn: ${primary.graphArn}
///       message: Message of the invite
///   member:
///     type: aws:detective:InvitationAccepter
///     properties:
///       graphArn: ${primary.graphArn}
///     options:
///       dependsOn:
///         - ${primaryMember}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.InvitationAccepter` using the graph ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/invitationAccepter:InvitationAccepter example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d
/// ```
class InvitationAccepter extends pulumi.CustomResource {
  /// ARN of the behavior graph that the member account is accepting the invitation for.
  late final pulumi.Output<String> graphArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [InvitationAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InvitationAccepter]. {@macro pulumi_detective_invitation_accepter_invitation_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InvitationAccepter(
    String name, {
    InvitationAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/invitationAccepter:InvitationAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [InvitationAccepter] resource's state with the given [name] and [id].
  static InvitationAccepter get(
    String name,
    pulumi.Input<String> id, {
    InvitationAccepterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InvitationAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InvitationAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/invitationAccepter:InvitationAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [InvitationAccepter] resource.
  InvitationAccepter.reference(String urn)
    : super(
        'aws:detective/invitationAccepter:InvitationAccepter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
  }
}
