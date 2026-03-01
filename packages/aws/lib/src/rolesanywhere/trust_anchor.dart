import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_anchor_args.dart';
import 'trust_anchor_notification_setting.dart';
import 'trust_anchor_source.dart';

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
///     permanentDeletionTimeInDays: 7,
///     type: "ROOT",
///     certificateAuthorityConfiguration: {
///         keyAlgorithm: "RSA_4096",
///         signingAlgorithm: "SHA512WITHRSA",
///         subject: {
///             commonName: "example.com",
///         },
///     },
/// });
/// const current = aws.getPartition({});
/// const test = new aws.acmpca.Certificate("test", {
///     certificateAuthorityArn: example.arn,
///     certificateSigningRequest: example.certificateSigningRequest,
///     signingAlgorithm: "SHA512WITHRSA",
///     templateArn: current.then(current => `arn:${current.partition}:acm-pca:::template/RootCACertificate/V1`),
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
/// });
/// const exampleCertificateAuthorityCertificate = new aws.acmpca.CertificateAuthorityCertificate("example", {
///     certificateAuthorityArn: example.arn,
///     certificate: exampleAwsAcmpcaCertificate.certificate,
///     certificateChain: exampleAwsAcmpcaCertificate.certificateChain,
/// });
/// const testTrustAnchor = new aws.rolesanywhere.TrustAnchor("test", {
///     name: "example",
///     source: {
///         sourceData: {
///             acmPcaArn: example.arn,
///         },
///         sourceType: "AWS_ACM_PCA",
///     },
/// }, {
///     dependsOn: [exampleCertificateAuthorityCertificate],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acmpca.CertificateAuthority("example",
///     permanent_deletion_time_in_days=7,
///     type="ROOT",
///     certificate_authority_configuration={
///         "key_algorithm": "RSA_4096",
///         "signing_algorithm": "SHA512WITHRSA",
///         "subject": {
///             "common_name": "example.com",
///         },
///     })
/// current = aws.get_partition()
/// test = aws.acmpca.Certificate("test",
///     certificate_authority_arn=example.arn,
///     certificate_signing_request=example.certificate_signing_request,
///     signing_algorithm="SHA512WITHRSA",
///     template_arn=f"arn:{current.partition}:acm-pca:::template/RootCACertificate/V1",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     })
/// example_certificate_authority_certificate = aws.acmpca.CertificateAuthorityCertificate("example",
///     certificate_authority_arn=example.arn,
///     certificate=example_aws_acmpca_certificate["certificate"],
///     certificate_chain=example_aws_acmpca_certificate["certificateChain"])
/// test_trust_anchor = aws.rolesanywhere.TrustAnchor("test",
///     name="example",
///     source={
///         "source_data": {
///             "acm_pca_arn": example.arn,
///         },
///         "source_type": "AWS_ACM_PCA",
///     },
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
///         PermanentDeletionTimeInDays = 7,
///         Type = "ROOT",
///         CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
///         {
///             KeyAlgorithm = "RSA_4096",
///             SigningAlgorithm = "SHA512WITHRSA",
///             Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
///             {
///                 CommonName = "example.com",
///             },
///         },
///     });
///
///     var current = Aws.GetPartition.Invoke();
///
///     var test = new Aws.Acmpca.Certificate("test", new()
///     {
///         CertificateAuthorityArn = example.Arn,
///         CertificateSigningRequest = example.CertificateSigningRequest,
///         SigningAlgorithm = "SHA512WITHRSA",
///         TemplateArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:acm-pca:::template/RootCACertificate/V1",
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
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
///         Name = "example",
///         Source = new Aws.RolesAnywhere.Inputs.TrustAnchorSourceArgs
///         {
///             SourceData = new Aws.RolesAnywhere.Inputs.TrustAnchorSourceSourceDataArgs
///             {
///                 AcmPcaArn = example.Arn,
///             },
///             SourceType = "AWS_ACM_PCA",
///         },
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
/// 			PermanentDeletionTimeInDays: pulumi.Int(7),
/// 			Type:                        pulumi.String("ROOT"),
/// 			CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// 				KeyAlgorithm:     pulumi.String("RSA_4096"),
/// 				SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// 				Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// 					CommonName: pulumi.String("example.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewCertificate(ctx, "test", &acmpca.CertificateArgs{
/// 			CertificateAuthorityArn:   example.Arn,
/// 			CertificateSigningRequest: example.CertificateSigningRequest,
/// 			SigningAlgorithm:          pulumi.String("SHA512WITHRSA"),
/// 			TemplateArn:               pulumi.Sprintf("arn:%v:acm-pca:::template/RootCACertificate/V1", current.Partition),
/// 			Validity: &acmpca.CertificateValidityArgs{
/// 				Type:  pulumi.String("YEARS"),
/// 				Value: pulumi.String("1"),
/// 			},
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
/// 			Name: pulumi.String("example"),
/// 			Source: &rolesanywhere.TrustAnchorSourceArgs{
/// 				SourceData: &rolesanywhere.TrustAnchorSourceSourceDataArgs{
/// 					AcmPcaArn: example.Arn,
/// 				},
/// 				SourceType: pulumi.String("AWS_ACM_PCA"),
/// 			},
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
///         var example = new CertificateAuthority("example", CertificateAuthorityArgs.builder()
///             .permanentDeletionTimeInDays(7)
///             .type("ROOT")
///             .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
///                 .keyAlgorithm("RSA_4096")
///                 .signingAlgorithm("SHA512WITHRSA")
///                 .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
///                     .commonName("example.com")
///                     .build())
///                 .build())
///             .build());
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var test = new Certificate("test", CertificateArgs.builder()
///             .certificateAuthorityArn(example.arn())
///             .certificateSigningRequest(example.certificateSigningRequest())
///             .signingAlgorithm("SHA512WITHRSA")
///             .templateArn(String.format("arn:%s:acm-pca:::template/RootCACertificate/V1", current.partition()))
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .build());
///
///         var exampleCertificateAuthorityCertificate = new CertificateAuthorityCertificate("exampleCertificateAuthorityCertificate", CertificateAuthorityCertificateArgs.builder()
///             .certificateAuthorityArn(example.arn())
///             .certificate(exampleAwsAcmpcaCertificate.certificate())
///             .certificateChain(exampleAwsAcmpcaCertificate.certificateChain())
///             .build());
///
///         var testTrustAnchor = new TrustAnchor("testTrustAnchor", TrustAnchorArgs.builder()
///             .name("example")
///             .source(TrustAnchorSourceArgs.builder()
///                 .sourceData(TrustAnchorSourceSourceDataArgs.builder()
///                     .acmPcaArn(example.arn())
///                     .build())
///                 .sourceType("AWS_ACM_PCA")
///                 .build())
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
///       permanentDeletionTimeInDays: 7
///       type: ROOT
///       certificateAuthorityConfiguration:
///         keyAlgorithm: RSA_4096
///         signingAlgorithm: SHA512WITHRSA
///         subject:
///           commonName: example.com
///   test:
///     type: aws:acmpca:Certificate
///     properties:
///       certificateAuthorityArn: ${example.arn}
///       certificateSigningRequest: ${example.certificateSigningRequest}
///       signingAlgorithm: SHA512WITHRSA
///       templateArn: arn:${current.partition}:acm-pca:::template/RootCACertificate/V1
///       validity:
///         type: YEARS
///         value: 1
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
///       name: example
///       source:
///         sourceData:
///           acmPcaArn: ${example.arn}
///         sourceType: AWS_ACM_PCA
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
  /// Amazon Resource Name (ARN) of the Trust Anchor
  late final pulumi.Output<String> arn;
  /// Whether or not the Trust Anchor should be enabled.
  late final pulumi.Output<bool> enabled;
  /// The name of the Trust Anchor.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<TrustAnchorNotificationSetting>> notificationSettings;
  /// The source of trust, documented below
  late final pulumi.Output<TrustAnchorSource> source;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    this.notificationSettings = registerOutput<List<TrustAnchorNotificationSetting>>('notificationSettings');
    this.source = registerOutput<TrustAnchorSource>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
