import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';

/// Provides a AWS Transfer AS2 Profile resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Profile("example", {
///     as2Id: "example",
///     certificateIds: [exampleAwsTransferCertificate.certificateId],
///     usage: "LOCAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Profile("example",
///     as2_id="example",
///     certificate_ids=[example_aws_transfer_certificate["certificateId"]],
///     usage="LOCAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Profile("example", new()
///     {
///         As2Id = "example",
///         CertificateIds = new[]
///         {
///             exampleAwsTransferCertificate.CertificateId,
///         },
///         Usage = "LOCAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewProfile(ctx, "example", &transfer.ProfileArgs{
/// 			As2Id: pulumi.String("example"),
/// 			CertificateIds: pulumi.StringArray{
/// 				exampleAwsTransferCertificate.CertificateId,
/// 			},
/// 			Usage: "LOCAL",
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
/// import com.pulumi.aws.transfer.Profile;
/// import com.pulumi.aws.transfer.ProfileArgs;
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
///         var example = new Profile("example", ProfileArgs.builder()
///             .as2Id("example")
///             .certificateIds(exampleAwsTransferCertificate.certificateId())
///             .usage("LOCAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Profile
///     properties:
///       as2Id: example
///       certificateIds:
///         - ${exampleAwsTransferCertificate.certificateId}
///       usage: LOCAL
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Profile using the `profile_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/profile:Profile example p-4221a88afd5f4362a
/// ```
class Profile extends pulumi.CustomResource {
  /// The ARN of the profile.
  late final pulumi.Output<String> arn;
  /// The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  late final pulumi.Output<String> as2Id;
  /// The list of certificate Ids from the imported certificate operation.
  late final pulumi.Output<List<String>?> certificateIds;
  /// The unique identifier for the AS2 profile.
  late final pulumi.Output<String> profileId;
  /// The profile type should be LOCAL or PARTNER.
  late final pulumi.Output<String> profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_transfer_profile_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/profile:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.as2Id = registerOutput<String>('as2Id');
    this.certificateIds = registerOutput<List<String>?>('certificateIds');
    this.profileId = registerOutput<String>('profileId');
    this.profileType = registerOutput<String>('profileType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
