import 'package:pulumi/pulumi.dart' as pulumi;
import 'agreement_args.dart';
import 'agreement_state.dart';

/// Provides a AWS Transfer AS2 Agreement resource.
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
/// const example = new aws.transfer.Agreement("example", {
///     accessRole: test.arn,
///     baseDirectory: "/DOC-EXAMPLE-BUCKET/home/mydirectory",
///     description: "example",
///     localProfileId: local.profileId,
///     partnerProfileId: partner.profileId,
///     serverId: testAwsTransferServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Agreement("example",
///     access_role=test["arn"],
///     base_directory="/DOC-EXAMPLE-BUCKET/home/mydirectory",
///     description="example",
///     local_profile_id=local["profileId"],
///     partner_profile_id=partner["profileId"],
///     server_id=test_aws_transfer_server["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Agreement("example", new()
///     {
///         AccessRole = test.Arn,
///         BaseDirectory = "/DOC-EXAMPLE-BUCKET/home/mydirectory",
///         Description = "example",
///         LocalProfileId = local.ProfileId,
///         PartnerProfileId = partner.ProfileId,
///         ServerId = testAwsTransferServer.Id,
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
/// 		_, err := transfer.NewAgreement(ctx, "example", &transfer.AgreementArgs{
/// 			AccessRole:       pulumi.Any(test.Arn),
/// 			BaseDirectory:    pulumi.String("/DOC-EXAMPLE-BUCKET/home/mydirectory"),
/// 			Description:      pulumi.String("example"),
/// 			LocalProfileId:   pulumi.Any(local.ProfileId),
/// 			PartnerProfileId: pulumi.Any(partner.ProfileId),
/// 			ServerId:         pulumi.Any(testAwsTransferServer.Id),
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
/// import com.pulumi.aws.transfer.Agreement;
/// import com.pulumi.aws.transfer.AgreementArgs;
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
///         var example = new Agreement("example", AgreementArgs.builder()
///             .accessRole(test.arn())
///             .baseDirectory("/DOC-EXAMPLE-BUCKET/home/mydirectory")
///             .description("example")
///             .localProfileId(local.profileId())
///             .partnerProfileId(partner.profileId())
///             .serverId(testAwsTransferServer.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Agreement
///     properties:
///       accessRole: ${test.arn}
///       baseDirectory: /DOC-EXAMPLE-BUCKET/home/mydirectory
///       description: example
///       localProfileId: ${local.profileId}
///       partnerProfileId: ${partner.profileId}
///       serverId: ${testAwsTransferServer.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Agreement using the `server_id/agreement_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/agreement:Agreement example s-4221a88afd5f4362a/a-4221a88afd5f4362a
/// ```
class Agreement extends pulumi.CustomResource {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  late final pulumi.Output<String> accessRole;
  /// The unique identifier for the AS2 agreement.
  late final pulumi.Output<String> agreementId;
  /// The ARN of the agreement.
  late final pulumi.Output<String> arn;
  /// The landing directory for the files transferred by using the AS2 protocol.
  late final pulumi.Output<String> baseDirectory;
  /// The Optional description of the transdfer.
  late final pulumi.Output<String?> description;
  /// The unique identifier for the AS2 local profile.
  late final pulumi.Output<String> localProfileId;
  /// The unique identifier for the AS2 partner profile.
  late final pulumi.Output<String> partnerProfileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The unique server identifier for the server instance. This is the specific server the agreement uses.
  late final pulumi.Output<String> serverId;
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Agreement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agreement]. {@macro pulumi_transfer_agreement_agreement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agreement(
    String name, {
    AgreementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/agreement:Agreement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRole = registerOutput<String>('accessRole');
    agreementId = registerOutput<String>('agreementId');
    arn = registerOutput<String>('arn');
    baseDirectory = registerOutput<String>('baseDirectory');
    description = registerOutput<String?>('description');
    localProfileId = registerOutput<String>('localProfileId');
    partnerProfileId = registerOutput<String>('partnerProfileId');
    region = registerOutput<String>('region');
    serverId = registerOutput<String>('serverId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Agreement] resource's state with the given [name] and [id].
  static Agreement get(
    String name,
    pulumi.Input<String> id, {
    AgreementState? state,
  }) {
    return Agreement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Agreement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/agreement:Agreement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRole = registerOutput<String>('accessRole');
    agreementId = registerOutput<String>('agreementId');
    arn = registerOutput<String>('arn');
    baseDirectory = registerOutput<String>('baseDirectory');
    description = registerOutput<String?>('description');
    localProfileId = registerOutput<String>('localProfileId');
    partnerProfileId = registerOutput<String>('partnerProfileId');
    region = registerOutput<String>('region');
    serverId = registerOutput<String>('serverId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
