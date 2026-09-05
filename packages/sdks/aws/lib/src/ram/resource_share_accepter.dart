import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_accepter_args.dart';
import 'resource_share_accepter_state.dart';

/// Manage accepting a Resource Access Manager (RAM) Resource Share invitation. From a _receiver_ AWS account, accept an invitation to share resources that were shared by a _sender_ AWS account. To create a resource share in the _sender_, see the `aws.ram.ResourceShare` resource.
///
/// &gt; **Note:** If both AWS accounts are in the same Organization and [RAM Sharing with AWS Organizations is enabled](https://docs.aws.amazon.com/ram/latest/userguide/getting-started-sharing.html#getting-started-sharing-orgs), this resource is not necessary as RAM Resource Share invitations are not used.
///
/// ## Example Usage
///
/// This configuration provides an example of using multiple AWS providers to configure two different AWS accounts. In the _sender_ account, the configuration creates a `aws.ram.ResourceShare` and uses a data source in the _receiver_ account to create a `aws.ram.PrincipalAssociation` resource with the _receiver's_ account ID. In the _receiver_ account, the configuration accepts the invitation to share resources with the `aws.ram.ResourceShareAccepter`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const senderShare = new aws.ram.ResourceShare("sender_share", {
///     name: "tf-test-resource-share",
///     allowExternalPrincipals: true,
///     tags: {
///         Name: "tf-test-resource-share",
///     },
/// });
/// const receiver = aws.getCallerIdentity({});
/// const senderInvite = new aws.ram.PrincipalAssociation("sender_invite", {
///     principal: receiver.then(receiver => receiver.accountId),
///     resourceShareArn: senderShare.arn,
/// });
/// const receiverAccept = new aws.ram.ResourceShareAccepter("receiver_accept", {shareArn: senderInvite.resourceShareArn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sender_share = aws.ram.ResourceShare("sender_share",
///     name="tf-test-resource-share",
///     allow_external_principals=True,
///     tags={
///         "Name": "tf-test-resource-share",
///     })
/// receiver = aws.get_caller_identity()
/// sender_invite = aws.ram.PrincipalAssociation("sender_invite",
///     principal=receiver.account_id,
///     resource_share_arn=sender_share.arn)
/// receiver_accept = aws.ram.ResourceShareAccepter("receiver_accept", share_arn=sender_invite.resource_share_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var senderShare = new Aws.Ram.ResourceShare("sender_share", new()
///     {
///         Name = "tf-test-resource-share",
///         AllowExternalPrincipals = true,
///         Tags =
///         {
///             { "Name", "tf-test-resource-share" },
///         },
///     });
///
///     var receiver = Aws.GetCallerIdentity.Invoke();
///
///     var senderInvite = new Aws.Ram.PrincipalAssociation("sender_invite", new()
///     {
///         Principal = receiver.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         ResourceShareArn = senderShare.Arn,
///     });
///
///     var receiverAccept = new Aws.Ram.ResourceShareAccepter("receiver_accept", new()
///     {
///         ShareArn = senderInvite.ResourceShareArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		senderShare, err := ram.NewResourceShare(ctx, "sender_share", &ram.ResourceShareArgs{
/// 			Name:                    pulumi.String("tf-test-resource-share"),
/// 			AllowExternalPrincipals: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-test-resource-share"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		receiver, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		senderInvite, err := ram.NewPrincipalAssociation(ctx, "sender_invite", &ram.PrincipalAssociationArgs{
/// 			Principal:        pulumi.String(receiver.AccountId),
/// 			ResourceShareArn: senderShare.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewResourceShareAccepter(ctx, "receiver_accept", &ram.ResourceShareAccepterArgs{
/// 			ShareArn: senderInvite.ResourceShareArn,
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
/// data "aws_getcalleridentity" "receiver" {
/// }
///
/// resource "aws_ram_resourceshare" "sender_share" {
///   name                      = "tf-test-resource-share"
///   allow_external_principals = true
///   tags = {
///     "Name" = "tf-test-resource-share"
///   }
/// }
/// resource "aws_ram_principalassociation" "sender_invite" {
///   principal          = data.aws_getcalleridentity.receiver.account_id
///   resource_share_arn = aws_ram_resourceshare.sender_share.arn
/// }
/// resource "aws_ram_resourceshareaccepter" "receiver_accept" {
///   share_arn = aws_ram_principalassociation.sender_invite.resource_share_arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ram.ResourceShare;
/// import com.pulumi.aws.ram.ResourceShareArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ram.PrincipalAssociation;
/// import com.pulumi.aws.ram.PrincipalAssociationArgs;
/// import com.pulumi.aws.ram.ResourceShareAccepter;
/// import com.pulumi.aws.ram.ResourceShareAccepterArgs;
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
///         var senderShare = new ResourceShare("senderShare", ResourceShareArgs.builder()
///             .name("tf-test-resource-share")
///             .allowExternalPrincipals(true)
///             .tags(Map.of("Name", "tf-test-resource-share"))
///             .build());
///
///         final var receiver = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var senderInvite = new PrincipalAssociation("senderInvite", PrincipalAssociationArgs.builder()
///             .principal(receiver.accountId())
///             .resourceShareArn(senderShare.arn())
///             .build());
///
///         var receiverAccept = new ResourceShareAccepter("receiverAccept", ResourceShareAccepterArgs.builder()
///             .shareArn(senderInvite.resourceShareArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   senderShare:
///     type: aws:ram:ResourceShare
///     name: sender_share
///     properties:
///       name: tf-test-resource-share
///       allowExternalPrincipals: true
///       tags:
///         Name: tf-test-resource-share
///   senderInvite:
///     type: aws:ram:PrincipalAssociation
///     name: sender_invite
///     properties:
///       principal: ${receiver.accountId}
///       resourceShareArn: ${senderShare.arn}
///   receiverAccept:
///     type: aws:ram:ResourceShareAccepter
///     name: receiver_accept
///     properties:
///       shareArn: ${senderInvite.resourceShareArn}
/// variables:
///   receiver:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import resource share accepters using the resource share ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceShareAccepter:ResourceShareAccepter example arn:aws:ram:us-east-1:123456789012:resource-share/c4b56393-e8d9-89d9-6dc9-883752de4767
/// ```
class ResourceShareAccepter extends pulumi.CustomResource {
  /// ARN of the resource share invitation.
  late final pulumi.Output<String> invitationArn;
  /// Account ID of the receiver account which accepts the invitation.
  late final pulumi.Output<String> receiverAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of the resource ARNs shared via the resource share.
  late final pulumi.Output<List<String>> resources;
  /// Account ID of the sender account which submits the invitation.
  late final pulumi.Output<String> senderAccountId;
  /// ARN of the resource share.
  late final pulumi.Output<String> shareArn;
  /// ID of the resource share as displayed in the console.
  late final pulumi.Output<String> shareId;
  /// Name of the resource share.
  late final pulumi.Output<String> shareName;
  /// Status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED).
  late final pulumi.Output<String> status;

  /// Creates a new [ResourceShareAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceShareAccepter]. {@macro pulumi_ram_resource_share_accepter_resource_share_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceShareAccepter(
    String name, {
    ResourceShareAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceShareAccepter:ResourceShareAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    invitationArn = registerOutput<String>('invitationArn');
    receiverAccountId = registerOutput<String>('receiverAccountId');
    region = registerOutput<String>('region');
    resources = registerOutput<List<String>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    senderAccountId = registerOutput<String>('senderAccountId');
    shareArn = registerOutput<String>('shareArn');
    shareId = registerOutput<String>('shareId');
    shareName = registerOutput<String>('shareName');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ResourceShareAccepter] resource's state with the given [name] and [id].
  static ResourceShareAccepter get(
    String name,
    pulumi.Input<String> id, {
    ResourceShareAccepterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceShareAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceShareAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceShareAccepter:ResourceShareAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    invitationArn = registerOutput<String>('invitationArn');
    receiverAccountId = registerOutput<String>('receiverAccountId');
    region = registerOutput<String>('region');
    resources = registerOutput<List<String>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    senderAccountId = registerOutput<String>('senderAccountId');
    shareArn = registerOutput<String>('shareArn');
    shareId = registerOutput<String>('shareId');
    shareName = registerOutput<String>('shareName');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [ResourceShareAccepter] resource.
  ResourceShareAccepter.reference(String urn)
    : super(
        'aws:ram/resourceShareAccepter:ResourceShareAccepter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    invitationArn = registerOutput<String>('invitationArn');
    receiverAccountId = registerOutput<String>('receiverAccountId');
    region = registerOutput<String>('region');
    resources = registerOutput<List<String>>('resources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    senderAccountId = registerOutput<String>('senderAccountId');
    shareArn = registerOutput<String>('shareArn');
    shareId = registerOutput<String>('shareId');
    shareName = registerOutput<String>('shareName');
    status = registerOutput<String>('status');
  }
}
