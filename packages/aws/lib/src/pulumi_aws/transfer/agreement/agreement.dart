import 'package:pulumi/pulumi.dart';
import 'agreement_args.dart';

/// Provides a AWS Transfer AS2 Agreement resource.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Agreement("example", {
/// accessRole: test.arn,
/// baseDirectory: "/DOC-EXAMPLE-BUCKET/home/mydirectory",
/// description: "example",
/// localProfileId: local.profileId,
/// partnerProfileId: partner.profileId,
/// serverId: testAwsTransferServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Agreement("example",
/// access_role=test["arn"],
/// base_directory="/DOC-EXAMPLE-BUCKET/home/mydirectory",
/// description="example",
/// local_profile_id=local["profileId"],
/// partner_profile_id=partner["profileId"],
/// server_id=test_aws_transfer_server["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.Agreement("example", new()
/// {
/// AccessRole = test.Arn,
/// BaseDirectory = "/DOC-EXAMPLE-BUCKET/home/mydirectory",
/// Description = "example",
/// LocalProfileId = local.ProfileId,
/// PartnerProfileId = partner.ProfileId,
/// ServerId = testAwsTransferServer.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewAgreement(ctx, "example", &transfer.AgreementArgs{
/// AccessRole:       pulumi.Any(test.Arn),
/// BaseDirectory:    pulumi.String("/DOC-EXAMPLE-BUCKET/home/mydirectory"),
/// Description:      pulumi.String("example"),
/// LocalProfileId:   pulumi.Any(local.ProfileId),
/// PartnerProfileId: pulumi.Any(partner.ProfileId),
/// ServerId:         pulumi.Any(testAwsTransferServer.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Agreement("example", AgreementArgs.builder()
/// .accessRole(test.arn())
/// .baseDirectory("/DOC-EXAMPLE-BUCKET/home/mydirectory")
/// .description("example")
/// .localProfileId(local.profileId())
/// .partnerProfileId(partner.profileId())
/// .serverId(testAwsTransferServer.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:Agreement
/// properties:
/// accessRole: ${test.arn}
/// baseDirectory: /DOC-EXAMPLE-BUCKET/home/mydirectory
/// description: example
/// localProfileId: ${local.profileId}
/// partnerProfileId: ${partner.profileId}
/// serverId: ${testAwsTransferServer.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Agreement using the `server_id/agreement_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/agreement:Agreement example s-4221a88afd5f4362a/a-4221a88afd5f4362a
/// ```
class Agreement extends CustomResource {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  late final Output<String> accessRole;

  /// The unique identifier for the AS2 agreement.
  late final Output<String> agreementId;

  /// The ARN of the agreement.
  late final Output<String> arn;

  /// The landing directory for the files transferred by using the AS2 protocol.
  late final Output<String> baseDirectory;

  /// The Optional description of the transdfer.
  late final Output<String?> description;

  /// The unique identifier for the AS2 local profile.
  late final Output<String> localProfileId;

  /// The unique identifier for the AS2 partner profile.
  late final Output<String> partnerProfileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique server identifier for the server instance. This is the specific server the agreement uses.
  late final Output<String> serverId;
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Agreement(
    String name, {
    AgreementArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/agreement:Agreement',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessRole = registerOutput<String>('accessRole');
    this.agreementId = registerOutput<String>('agreementId');
    this.arn = registerOutput<String>('arn');
    this.baseDirectory = registerOutput<String>('baseDirectory');
    this.description = registerOutput<String?>('description');
    this.localProfileId = registerOutput<String>('localProfileId');
    this.partnerProfileId = registerOutput<String>('partnerProfileId');
    this.region = registerOutput<String>('region');
    this.serverId = registerOutput<String>('serverId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
