import 'package:pulumi/pulumi.dart';
import '../signing_profile_revocation_record/signing_profile_revocation_record.dart';
import '../signing_profile_signature_validity_period/signing_profile_signature_validity_period.dart';
import '../signing_profile_signing_material/signing_profile_signing_material.dart';
import 'signing_profile_args.dart';

/// Creates a Signer Signing Profile. A signing profile contains information about the code signing configuration parameters that can be used by a given code signing user.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testSp = new aws.signer.SigningProfile("test_sp", {platformId: "AWSLambda-SHA384-ECDSA"});
/// const prodSp = new aws.signer.SigningProfile("prod_sp", {
/// platformId: "AWSLambda-SHA384-ECDSA",
/// namePrefix: "prod_sp_",
/// signatureValidityPeriod: {
/// value: 5,
/// type: "YEARS",
/// },
/// tags: {
/// tag1: "value1",
/// tag2: "value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_sp = aws.signer.SigningProfile("test_sp", platform_id="AWSLambda-SHA384-ECDSA")
/// prod_sp = aws.signer.SigningProfile("prod_sp",
/// platform_id="AWSLambda-SHA384-ECDSA",
/// name_prefix="prod_sp_",
/// signature_validity_period={
/// "value": 5,
/// "type": "YEARS",
/// },
/// tags={
/// "tag1": "value1",
/// "tag2": "value2",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testSp = new Aws.Signer.SigningProfile("test_sp", new()
/// {
/// PlatformId = "AWSLambda-SHA384-ECDSA",
/// });
///
/// var prodSp = new Aws.Signer.SigningProfile("prod_sp", new()
/// {
/// PlatformId = "AWSLambda-SHA384-ECDSA",
/// NamePrefix = "prod_sp_",
/// SignatureValidityPeriod = new Aws.Signer.Inputs.SigningProfileSignatureValidityPeriodArgs
/// {
/// Value = 5,
/// Type = "YEARS",
/// },
/// Tags =
/// {
/// { "tag1", "value1" },
/// { "tag2", "value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/signer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := signer.NewSigningProfile(ctx, "test_sp", &signer.SigningProfileArgs{
/// PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = signer.NewSigningProfile(ctx, "prod_sp", &signer.SigningProfileArgs{
/// PlatformId: pulumi.String("AWSLambda-SHA384-ECDSA"),
/// NamePrefix: pulumi.String("prod_sp_"),
/// SignatureValidityPeriod: &signer.SigningProfileSignatureValidityPeriodArgs{
/// Value: pulumi.Int(5),
/// Type:  pulumi.String("YEARS"),
/// },
/// Tags: pulumi.StringMap{
/// "tag1": pulumi.String("value1"),
/// "tag2": pulumi.String("value2"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var testSp = new SigningProfile("testSp", SigningProfileArgs.builder()
/// .platformId("AWSLambda-SHA384-ECDSA")
/// .build());
///
/// var prodSp = new SigningProfile("prodSp", SigningProfileArgs.builder()
/// .platformId("AWSLambda-SHA384-ECDSA")
/// .namePrefix("prod_sp_")
/// .signatureValidityPeriod(SigningProfileSignatureValidityPeriodArgs.builder()
/// .value(5)
/// .type("YEARS")
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("tag1", "value1"),
/// Map.entry("tag2", "value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testSp:
/// type: aws:signer:SigningProfile
/// name: test_sp
/// properties:
/// platformId: AWSLambda-SHA384-ECDSA
/// prodSp:
/// type: aws:signer:SigningProfile
/// name: prod_sp
/// properties:
/// platformId: AWSLambda-SHA384-ECDSA
/// namePrefix: prod_sp_
/// signatureValidityPeriod:
/// value: 5
/// type: YEARS
/// tags:
/// tag1: value1
/// tag2: value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Signer signing profiles using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:signer/signingProfile:SigningProfile test_signer_signing_profile test_sp_DdW3Mk1foYL88fajut4mTVFGpuwfd4ACO6ANL0D1uIj7lrn8adK
/// ```
class SigningProfile extends CustomResource {
  /// The Amazon Resource Name (ARN) for the signing profile.
  late final Output<String> arn;

  /// A unique signing profile name. By default generated by Terraform. Signing profile names are immutable and cannot be reused after canceled.
  late final Output<String> name;

  /// A signing profile name prefix. Terraform will generate a unique suffix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// A human-readable name for the signing platform associated with the signing profile.
  late final Output<String> platformDisplayName;

  /// The ID of the platform that is used by the target signing profile.
  late final Output<String> platformId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Revocation information for a signing profile. See <span pulumi-lang-nodejs="`revocationRecord`" pulumi-lang-dotnet="`RevocationRecord`" pulumi-lang-go="`revocationRecord`" pulumi-lang-python="`revocation_record`" pulumi-lang-yaml="`revocationRecord`" pulumi-lang-java="`revocationRecord`">`revocation_record`</span> Block below for details.
  late final Output<List<SigningProfileRevocationRecord>> revocationRecords;

  /// The validity period for a signing job. See <span pulumi-lang-nodejs="`signatureValidityPeriod`" pulumi-lang-dotnet="`SignatureValidityPeriod`" pulumi-lang-go="`signatureValidityPeriod`" pulumi-lang-python="`signature_validity_period`" pulumi-lang-yaml="`signatureValidityPeriod`" pulumi-lang-java="`signatureValidityPeriod`">`signature_validity_period`</span> Block below for details.
  late final Output<SigningProfileSignatureValidityPeriod>
      signatureValidityPeriod;

  /// The AWS Certificate Manager certificate that will be used to sign code with the new signing profile. See <span pulumi-lang-nodejs="`signingMaterial`" pulumi-lang-dotnet="`SigningMaterial`" pulumi-lang-go="`signingMaterial`" pulumi-lang-python="`signing_material`" pulumi-lang-yaml="`signingMaterial`" pulumi-lang-java="`signingMaterial`">`signing_material`</span> Block below for details.
  late final Output<SigningProfileSigningMaterial> signingMaterial;

  /// Map of key-value pairs for signing. These can include any information that you want to use during signing.
  late final Output<Map<String, String>?> signingParameters;

  /// The status of the target signing profile.
  late final Output<String> status;

  /// A list of tags associated with the signing profile. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The current version of the signing profile.
  late final Output<String> version;

  /// The signing profile ARN, including the profile version.
  late final Output<String> versionArn;

  SigningProfile(
    String name, {
    SigningProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:signer/signingProfile:SigningProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.platformDisplayName = Output.createUnknown<String>();
    this.platformId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.revocationRecords =
        Output.createUnknown<List<SigningProfileRevocationRecord>>();
    this.signatureValidityPeriod =
        Output.createUnknown<SigningProfileSignatureValidityPeriod>();
    this.signingMaterial =
        Output.createUnknown<SigningProfileSigningMaterial>();
    this.signingParameters = Output.createUnknown<Map<String, String>?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.version = Output.createUnknown<String>();
    this.versionArn = Output.createUnknown<String>();
  }
}
