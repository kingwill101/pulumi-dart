import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_profile_args.dart';
import 'signing_profile_signature_validity_period.dart';
import 'signing_profile_signing_material.dart';
import 'signing_profile_state.dart';

/// Creates a Signer Signing Profile. A signing profile contains information about the code signing configuration parameters that can be used by a given code signing user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSp = new aws.signer.SigningProfile("test_sp", {platformId: "AWSLambda-SHA384-ECDSA"});
/// const prodSp = new aws.signer.SigningProfile("prod_sp", {
///     platformId: "AWSLambda-SHA384-ECDSA",
///     namePrefix: "prod_sp_",
///     signatureValidityPeriod: {
///         value: 5,
///         type: "YEARS",
///     },
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_sp = aws.signer.SigningProfile("test_sp", platform_id="AWSLambda-SHA384-ECDSA")
/// prod_sp = aws.signer.SigningProfile("prod_sp",
///     platform_id="AWSLambda-SHA384-ECDSA",
///     name_prefix="prod_sp_",
///     signature_validity_period={
///         "value": 5,
///         "type": "YEARS",
///     },
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testSp = new Aws.Signer.SigningProfile("test_sp", new()
///     {
///         PlatformId = "AWSLambda-SHA384-ECDSA",
///     });
///
///     var prodSp = new Aws.Signer.SigningProfile("prod_sp", new()
///     {
///         PlatformId = "AWSLambda-SHA384-ECDSA",
///         NamePrefix = "prod_sp_",
///         SignatureValidityPeriod = new Aws.Signer.Inputs.SigningProfileSignatureValidityPeriodArgs
///         {
///             Value = 5,
///             Type = "YEARS",
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signer.NewSigningProfile(ctx, "test_sp", &signer.SigningProfileArgs{
/// 			PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signer.NewSigningProfile(ctx, "prod_sp", &signer.SigningProfileArgs{
/// 			PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// 			NamePrefix: pulumi.String("prod_sp_"),
/// 			SignatureValidityPeriod: &signer.SigningProfileSignatureValidityPeriodArgs{
/// 				Value: pulumi.Int(5),
/// 				Type:  pulumi.String("YEARS"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
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
/// import com.pulumi.aws.signer.SigningProfile;
/// import com.pulumi.aws.signer.SigningProfileArgs;
/// import com.pulumi.aws.signer.inputs.SigningProfileSignatureValidityPeriodArgs;
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
///         var testSp = new SigningProfile("testSp", SigningProfileArgs.builder()
///             .platformId("AWSLambda-SHA384-ECDSA")
///             .build());
///
///         var prodSp = new SigningProfile("prodSp", SigningProfileArgs.builder()
///             .platformId("AWSLambda-SHA384-ECDSA")
///             .namePrefix("prod_sp_")
///             .signatureValidityPeriod(SigningProfileSignatureValidityPeriodArgs.builder()
///                 .value(5)
///                 .type("YEARS")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testSp:
///     type: aws:signer:SigningProfile
///     name: test_sp
///     properties:
///       platformId: AWSLambda-SHA384-ECDSA
///   prodSp:
///     type: aws:signer:SigningProfile
///     name: prod_sp
///     properties:
///       platformId: AWSLambda-SHA384-ECDSA
///       namePrefix: prod_sp_
///       signatureValidityPeriod:
///         value: 5
///         type: YEARS
///       tags:
///         tag1: value1
///         tag2: value2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Signer signing profiles using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:signer/signingProfile:SigningProfile test_signer_signing_profile test_sp_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK
/// ```
class SigningProfile extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the signing profile.
  late final pulumi.Output<String> arn;
  /// A unique signing profile name. By default generated by Terraform. Signing profile names are immutable and cannot be reused after canceled.
  late final pulumi.Output<String> name;
  /// A signing profile name prefix. Terraform will generate a unique suffix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// A human-readable name for the signing platform associated with the signing profile.
  late final pulumi.Output<String> platformDisplayName;
  /// The ID of the platform that is used by the target signing profile.
  late final pulumi.Output<String> platformId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Revocation information for a signing profile. See `revocation_record` Block below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> revocationRecords;
  /// The validity period for a signing job. See `signature_validity_period` Block below for details.
  late final pulumi.Output<SigningProfileSignatureValidityPeriod> signatureValidityPeriod;
  /// The AWS Certificate Manager certificate that will be used to sign code with the new signing profile. See `signing_material` Block below for details.
  late final pulumi.Output<SigningProfileSigningMaterial> signingMaterial;
  /// Map of key-value pairs for signing. These can include any information that you want to use during signing.
  late final pulumi.Output<Map<String, String>?> signingParameters;
  /// The status of the target signing profile.
  late final pulumi.Output<String> status;
  /// A list of tags associated with the signing profile. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The current version of the signing profile.
  late final pulumi.Output<String> version;
  /// The signing profile ARN, including the profile version.
  late final pulumi.Output<String> versionArn;

  /// Creates a new [SigningProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SigningProfile]. {@macro pulumi_signer_signing_profile_signing_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SigningProfile(
    String name, {
    SigningProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingProfile:SigningProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    platformDisplayName = registerOutput<String>('platformDisplayName');
    platformId = registerOutput<String>('platformId');
    region = registerOutput<String>('region');
    revocationRecords = registerOutput<List<Map<String, dynamic>>>('revocationRecords');
    signatureValidityPeriod = registerOutput<SigningProfileSignatureValidityPeriod>('signatureValidityPeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningProfileSignatureValidityPeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signingMaterial = registerOutput<SigningProfileSigningMaterial>('signingMaterial', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningProfileSigningMaterial.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signingParameters = registerOutput<Map<String, String>?>('signingParameters');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String>('version');
    versionArn = registerOutput<String>('versionArn');
  }

  /// Gets an existing [SigningProfile] resource's state with the given [name] and [id].
  static SigningProfile get(
    String name,
    pulumi.Input<String> id, {
    SigningProfileState? state,
  }) {
    return SigningProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SigningProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingProfile:SigningProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    platformDisplayName = registerOutput<String>('platformDisplayName');
    platformId = registerOutput<String>('platformId');
    region = registerOutput<String>('region');
    revocationRecords = registerOutput<List<Map<String, dynamic>>>('revocationRecords');
    signatureValidityPeriod = registerOutput<SigningProfileSignatureValidityPeriod>('signatureValidityPeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningProfileSignatureValidityPeriod.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signingMaterial = registerOutput<SigningProfileSigningMaterial>('signingMaterial', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SigningProfileSigningMaterial.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signingParameters = registerOutput<Map<String, String>?>('signingParameters');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String>('version');
    versionArn = registerOutput<String>('versionArn');
  }
}
