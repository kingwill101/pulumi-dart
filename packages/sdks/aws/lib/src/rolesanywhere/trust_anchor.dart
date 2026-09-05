import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_anchor_args.dart';
import 'trust_anchor_notification_setting.dart';
import 'trust_anchor_source.dart';
import 'trust_anchor_state.dart';

/// Resource for managing a Roles Anywhere Trust Anchor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.acmpca.CertificateAuthority("example", {
///     certificateAuthorityConfiguration: {
///         subject: {
///             commonName: "example.com",
///         },
///         keyAlgorithm: "RSA_4096",
///         signingAlgorithm: "SHA512WITHRSA",
///     },
///     permanentDeletionTimeInDays: 7,
///     type: "ROOT",
/// });
/// const current = aws.getPartition({});
/// const test = new aws.acmpca.Certificate("test", {
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
///     certificateAuthorityArn: example.arn,
///     certificateSigningRequest: example.certificateSigningRequest,
///     signingAlgorithm: "SHA512WITHRSA",
///     templateArn: current.then(current => `arn:${current.partition}:acm-pca:::template/RootCACertificate/V1`),
/// });
/// const exampleCertificateAuthorityCertificate = new aws.acmpca.CertificateAuthorityCertificate("example", {
///     certificateAuthorityArn: example.arn,
///     certificate: exampleAwsAcmpcaCertificate.certificate,
///     certificateChain: exampleAwsAcmpcaCertificate.certificateChain,
/// });
/// const testTrustAnchor = new aws.rolesanywhere.TrustAnchor("test", {
///     source: {
///         sourceData: {
///             acmPcaArn: example.arn,
///         },
///         sourceType: "AWS_ACM_PCA",
///     },
///     name: "example",
/// }, {
///     dependsOn: [exampleCertificateAuthorityCertificate],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acmpca.CertificateAuthority("example",
///     certificate_authority_configuration={
///         "subject": {
///             "common_name": "example.com",
///         },
///         "key_algorithm": "RSA_4096",
///         "signing_algorithm": "SHA512WITHRSA",
///     },
///     permanent_deletion_time_in_days=7,
///     type="ROOT")
/// current = aws.get_partition()
/// test = aws.acmpca.Certificate("test",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     },
///     certificate_authority_arn=example.arn,
///     certificate_signing_request=example.certificate_signing_request,
///     signing_algorithm="SHA512WITHRSA",
///     template_arn=f"arn:{current.partition}:acm-pca:::template/RootCACertificate/V1")
/// example_certificate_authority_certificate = aws.acmpca.CertificateAuthorityCertificate("example",
///     certificate_authority_arn=example.arn,
///     certificate=example_aws_acmpca_certificate["certificate"],
///     certificate_chain=example_aws_acmpca_certificate["certificateChain"])
/// test_trust_anchor = aws.rolesanywhere.TrustAnchor("test",
///     source={
///         "source_data": {
///             "acm_pca_arn": example.arn,
///         },
///         "source_type": "AWS_ACM_PCA",
///     },
///     name="example",
///     opts = pulumi.ResourceOptions(depends_on=[example_certificate_authority_certificate]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Acmpca.CertificateAuthority("example", new()
///     {
///         CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
///         {
///             Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
///             {
///                 CommonName = "example.com",
///             },
///             KeyAlgorithm = "RSA_4096",
///             SigningAlgorithm = "SHA512WITHRSA",
///         },
///         PermanentDeletionTimeInDays = 7,
///         Type = "ROOT",
///     });
///
///     var current = Aws.GetPartition.Invoke();
///
///     var test = new Aws.Acmpca.Certificate("test", new()
///     {
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
///         CertificateAuthorityArn = example.Arn,
///         CertificateSigningRequest = example.CertificateSigningRequest,
///         SigningAlgorithm = "SHA512WITHRSA",
///         TemplateArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:acm-pca:::template/RootCACertificate/V1",
///     });
///
///     var exampleCertificateAuthorityCertificate = new Aws.Acmpca.CertificateAuthorityCertificate("example", new()
///     {
///         CertificateAuthorityArn = example.Arn,
///         Certificate = exampleAwsAcmpcaCertificate.Certificate,
///         CertificateChain = exampleAwsAcmpcaCertificate.CertificateChain,
///     });
///
///     var testTrustAnchor = new Aws.RolesAnywhere.TrustAnchor("test", new()
///     {
///         Source = new Aws.RolesAnywhere.Inputs.TrustAnchorSourceArgs
///         {
///             SourceData = new Aws.RolesAnywhere.Inputs.TrustAnchorSourceSourceDataArgs
///             {
///                 AcmPcaArn = example.Arn,
///             },
///             SourceType = "AWS_ACM_PCA",
///         },
///         Name = "example",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleCertificateAuthorityCertificate,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rolesanywhere"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// 			CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// 				Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// 					CommonName: pulumi.String("example.com"),
/// 				},
/// 				KeyAlgorithm:     pulumi.String("RSA_4096"),
/// 				SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// 			},
/// 			PermanentDeletionTimeInDays: pulumi.Int(7),
/// 			Type:                        pulumi.String("ROOT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewCertificate(ctx, "test", &acmpca.CertificateArgs{
/// 			Validity: &acmpca.CertificateValidityArgs{
/// 				Type:  pulumi.String("YEARS"),
/// 				Value: pulumi.String("1"),
/// 			},
/// 			CertificateAuthorityArn:   example.Arn,
/// 			CertificateSigningRequest: example.CertificateSigningRequest,
/// 			SigningAlgorithm:          pulumi.String("SHA512WITHRSA"),
/// 			TemplateArn:               pulumi.Sprintf("arn:%v:acm-pca:::template/RootCACertificate/V1", current.Partition),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificateAuthorityCertificate, err := acmpca.NewCertificateAuthorityCertificate(ctx, "example", &acmpca.CertificateAuthorityCertificateArgs{
/// 			CertificateAuthorityArn: example.Arn,
/// 			Certificate:             pulumi.Any(exampleAwsAcmpcaCertificate.Certificate),
/// 			CertificateChain:        pulumi.Any(exampleAwsAcmpcaCertificate.CertificateChain),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rolesanywhere.NewTrustAnchor(ctx, "test", &rolesanywhere.TrustAnchorArgs{
/// 			Source: &rolesanywhere.TrustAnchorSourceArgs{
/// 				SourceData: &rolesanywhere.TrustAnchorSourceSourceDataArgs{
/// 					AcmPcaArn: example.Arn,
/// 				},
/// 				SourceType: pulumi.String("AWS_ACM_PCA"),
/// 			},
/// 			Name: pulumi.String("example"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleCertificateAuthorityCertificate,
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
/// data "aws_getpartition" "current" {
/// }
///
/// resource "aws_acmpca_certificateauthority" "example" {
///   certificate_authority_configuration = {
///     subject = {
///       common_name = "example.com"
///     }
///     key_algorithm     = "RSA_4096"
///     signing_algorithm = "SHA512WITHRSA"
///   }
///   permanent_deletion_time_in_days = 7
///   type                            = "ROOT"
/// }
/// resource "aws_acmpca_certificate" "test" {
///   validity = {
///     type  = "YEARS"
///     value = 1
///   }
///   certificate_authority_arn   = aws_acmpca_certificateauthority.example.arn
///   certificate_signing_request = aws_acmpca_certificateauthority.example.certificate_signing_request
///   signing_algorithm           = "SHA512WITHRSA"
///   template_arn                ="arn:${data.aws_getpartition.current.partition}:acm-pca:::template/RootCACertificate/V1"
/// }
/// resource "aws_acmpca_certificateauthoritycertificate" "example" {
///   certificate_authority_arn = aws_acmpca_certificateauthority.example.arn
///   certificate               = exampleAwsAcmpcaCertificate.certificate
///   certificate_chain         = exampleAwsAcmpcaCertificate.certificateChain
/// }
/// resource "aws_rolesanywhere_trustanchor" "test" {
///   depends_on = [aws_acmpca_certificateauthoritycertificate.example]
///   source = {
///     source_data = {
///       acm_pca_arn = aws_acmpca_certificateauthority.example.arn
///     }
///     source_type = "AWS_ACM_PCA"
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.acmpca.CertificateAuthority;
/// import com.pulumi.aws.acmpca.CertificateAuthorityArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.acmpca.Certificate;
/// import com.pulumi.aws.acmpca.CertificateArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateValidityArgs;
/// import com.pulumi.aws.acmpca.CertificateAuthorityCertificate;
/// import com.pulumi.aws.acmpca.CertificateAuthorityCertificateArgs;
/// import com.pulumi.aws.rolesanywhere.TrustAnchor;
/// import com.pulumi.aws.rolesanywhere.TrustAnchorArgs;
/// import com.pulumi.aws.rolesanywhere.inputs.TrustAnchorSourceArgs;
/// import com.pulumi.aws.rolesanywhere.inputs.TrustAnchorSourceSourceDataArgs;
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
///         var example = new CertificateAuthority("example", CertificateAuthorityArgs.builder()
///             .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
///                 .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
///                     .commonName("example.com")
///                     .build())
///                 .keyAlgorithm("RSA_4096")
///                 .signingAlgorithm("SHA512WITHRSA")
///                 .build())
///             .permanentDeletionTimeInDays(7)
///             .type("ROOT")
///             .build());
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var test = new Certificate("test", CertificateArgs.builder()
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .certificateAuthorityArn(example.arn())
///             .certificateSigningRequest(example.certificateSigningRequest())
///             .signingAlgorithm("SHA512WITHRSA")
///             .templateArn(String.format("arn:%s:acm-pca:::template/RootCACertificate/V1", current.partition()))
///             .build());
///
///         var exampleCertificateAuthorityCertificate = new CertificateAuthorityCertificate("exampleCertificateAuthorityCertificate", CertificateAuthorityCertificateArgs.builder()
///             .certificateAuthorityArn(example.arn())
///             .certificate(exampleAwsAcmpcaCertificate.certificate())
///             .certificateChain(exampleAwsAcmpcaCertificate.certificateChain())
///             .build());
///
///         var testTrustAnchor = new TrustAnchor("testTrustAnchor", TrustAnchorArgs.builder()
///             .source(TrustAnchorSourceArgs.builder()
///                 .sourceData(TrustAnchorSourceSourceDataArgs.builder()
///                     .acmPcaArn(example.arn())
///                     .build())
///                 .sourceType("AWS_ACM_PCA")
///                 .build())
///             .name("example")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleCertificateAuthorityCertificate)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:acmpca:CertificateAuthority
///     properties:
///       certificateAuthorityConfiguration:
///         subject:
///           commonName: example.com
///         keyAlgorithm: RSA_4096
///         signingAlgorithm: SHA512WITHRSA
///       permanentDeletionTimeInDays: 7
///       type: ROOT
///   test:
///     type: aws:acmpca:Certificate
///     properties:
///       validity:
///         type: YEARS
///         value: 1
///       certificateAuthorityArn: ${example.arn}
///       certificateSigningRequest: ${example.certificateSigningRequest}
///       signingAlgorithm: SHA512WITHRSA
///       templateArn: arn:${current.partition}:acm-pca:::template/RootCACertificate/V1
///   exampleCertificateAuthorityCertificate:
///     type: aws:acmpca:CertificateAuthorityCertificate
///     name: example
///     properties:
///       certificateAuthorityArn: ${example.arn}
///       certificate: ${exampleAwsAcmpcaCertificate.certificate}
///       certificateChain: ${exampleAwsAcmpcaCertificate.certificateChain}
///   testTrustAnchor:
///     type: aws:rolesanywhere:TrustAnchor
///     name: test
///     properties:
///       source:
///         sourceData:
///           acmPcaArn: ${example.arn}
///         sourceType: AWS_ACM_PCA
///       name: example
///     options:
///       dependsOn:
///         - ${exampleCertificateAuthorityCertificate}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rolesanywhere.TrustAnchor` using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rolesanywhere/trustAnchor:TrustAnchor example 92b2fbbb-984d-41a3-a765-e3cbdb69ebb1
/// ```
class TrustAnchor extends pulumi.CustomResource {
  /// ARN of the Trust Anchor
  late final pulumi.Output<String> arn;
  /// Whether or not the Trust Anchor should be enabled.
  late final pulumi.Output<bool> enabled;
  /// The name of the Trust Anchor.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<TrustAnchorNotificationSetting>> notificationSettings;
  /// The source of trust, documented below
  late final pulumi.Output<TrustAnchorSource> source;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [TrustAnchor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustAnchor]. {@macro pulumi_rolesanywhere_trust_anchor_trust_anchor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustAnchor(
    String name, {
    TrustAnchorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/trustAnchor:TrustAnchor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    notificationSettings = registerOutput<List<TrustAnchorNotificationSetting>>('notificationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustAnchorNotificationSetting>(guardedValue, (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<TrustAnchorSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustAnchorSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [TrustAnchor] resource's state with the given [name] and [id].
  static TrustAnchor get(
    String name,
    pulumi.Input<String> id, {
    TrustAnchorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TrustAnchor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TrustAnchor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/trustAnchor:TrustAnchor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    notificationSettings = registerOutput<List<TrustAnchorNotificationSetting>>('notificationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustAnchorNotificationSetting>(guardedValue, (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<TrustAnchorSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustAnchorSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [TrustAnchor] resource.
  TrustAnchor.reference(String urn)
    : super(
        'aws:rolesanywhere/trustAnchor:TrustAnchor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    notificationSettings = registerOutput<List<TrustAnchorNotificationSetting>>('notificationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustAnchorNotificationSetting>(guardedValue, (value) => TrustAnchorNotificationSetting.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<TrustAnchorSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustAnchorSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
