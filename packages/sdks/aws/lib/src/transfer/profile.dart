import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';
import 'profile_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_transfer_profile" "example" {
///   as2_id          = "example"
///   certificate_ids = [exampleAwsTransferCertificate.certificateId]
///   usage           = "LOCAL"
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
/// Using `pulumi import`, import Transfer AS2 Profile using the `profileId`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/profile:Profile example p-4221a88afd5f4362a
/// ```
class Profile extends pulumi.CustomResource {
  /// ARN of the profile.
  late final pulumi.Output<String> arn;
  /// AS2 name as defined in RFC 4130. For inbound transfers this is the AS2 From Header for the AS2 messages sent from the partner. For outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. This ID cannot include spaces.
  late final pulumi.Output<String> as2Id;
  /// List of certificate IDs from the imported certificate operation.
  late final pulumi.Output<List<String>?> certificateIds;
  /// Unique identifier for the AS2 profile.
  late final pulumi.Output<String> profileId;
  /// Profile type. Valid values are `LOCAL` or `PARTNER`.
  late final pulumi.Output<String> profileType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    arn = registerOutput<String>('arn');
    as2Id = registerOutput<String>('as2Id');
    certificateIds = registerOutput<List<String>?>('certificateIds');
    profileId = registerOutput<String>('profileId');
    profileType = registerOutput<String>('profileType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Profile] resource's state with the given [name] and [id].
  static Profile get(
    String name,
    pulumi.Input<String> id, {
    ProfileState? state,
  }) {
    return Profile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Profile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/profile:Profile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    as2Id = registerOutput<String>('as2Id');
    certificateIds = registerOutput<List<String>?>('certificateIds');
    profileId = registerOutput<String>('profileId');
    profileType = registerOutput<String>('profileType');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
