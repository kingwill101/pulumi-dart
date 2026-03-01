import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_certificate_args.dart';

/// Associates a certificate with an AWS Certificate Manager Private Certificate Authority (ACM PCA Certificate Authority). An ACM PCA Certificate Authority is unable to issue certificates until it has a certificate associated with it. A root level ACM PCA Certificate Authority is able to self-sign its own root certificate.
///
/// ## Example Usage
///
/// ### Self-Signed Root Certificate Authority Certificate
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {
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
/// const exampleCertificate = new aws.acmpca.Certificate("example", {
///     certificateAuthorityArn: exampleCertificateAuthority.arn,
///     certificateSigningRequest: exampleCertificateAuthority.certificateSigningRequest,
///     signingAlgorithm: "SHA512WITHRSA",
///     templateArn: current.then(current => `arn:${current.partition}:acm-pca:::template/RootCACertificate/V1`),
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
/// });
/// const example = new aws.acmpca.CertificateAuthorityCertificate("example", {
///     certificateAuthorityArn: exampleCertificateAuthority.arn,
///     certificate: exampleCertificate.certificate,
///     certificateChain: exampleCertificate.certificateChain,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example",
///     type="ROOT",
///     certificate_authority_configuration={
///         "key_algorithm": "RSA_4096",
///         "signing_algorithm": "SHA512WITHRSA",
///         "subject": {
///             "common_name": "example.com",
///         },
///     })
/// current = aws.get_partition()
/// example_certificate = aws.acmpca.Certificate("example",
///     certificate_authority_arn=example_certificate_authority.arn,
///     certificate_signing_request=example_certificate_authority.certificate_signing_request,
///     signing_algorithm="SHA512WITHRSA",
///     template_arn=f"arn:{current.partition}:acm-pca:::template/RootCACertificate/V1",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     })
/// example = aws.acmpca.CertificateAuthorityCertificate("example",
///     certificate_authority_arn=example_certificate_authority.arn,
///     certificate=example_certificate.certificate,
///     certificate_chain=example_certificate.certificate_chain)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCertificateAuthority = new Aws.Acmpca.CertificateAuthority("example", new()
///     {
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
///     var exampleCertificate = new Aws.Acmpca.Certificate("example", new()
///     {
///         CertificateAuthorityArn = exampleCertificateAuthority.Arn,
///         CertificateSigningRequest = exampleCertificateAuthority.CertificateSigningRequest,
///         SigningAlgorithm = "SHA512WITHRSA",
///         TemplateArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:acm-pca:::template/RootCACertificate/V1",
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
///     });
///
///     var example = new Aws.Acmpca.CertificateAuthorityCertificate("example", new()
///     {
///         CertificateAuthorityArn = exampleCertificateAuthority.Arn,
///         Certificate = exampleCertificate.Certificate,
///         CertificateChain = exampleCertificate.CertificateChain,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleCertificateAuthority, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// 			Type: pulumi.String("ROOT"),
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
/// 		exampleCertificate, err := acmpca.NewCertificate(ctx, "example", &acmpca.CertificateArgs{
/// 			CertificateAuthorityArn:   exampleCertificateAuthority.Arn,
/// 			CertificateSigningRequest: exampleCertificateAuthority.CertificateSigningRequest,
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
/// 		_, err = acmpca.NewCertificateAuthorityCertificate(ctx, "example", &acmpca.CertificateAuthorityCertificateArgs{
/// 			CertificateAuthorityArn: exampleCertificateAuthority.Arn,
/// 			Certificate:             exampleCertificate.Certificate,
/// 			CertificateChain:        exampleCertificate.CertificateChain,
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
///         var exampleCertificateAuthority = new CertificateAuthority("exampleCertificateAuthority", CertificateAuthorityArgs.builder()
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
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .certificateAuthorityArn(exampleCertificateAuthority.arn())
///             .certificateSigningRequest(exampleCertificateAuthority.certificateSigningRequest())
///             .signingAlgorithm("SHA512WITHRSA")
///             .templateArn(String.format("arn:%s:acm-pca:::template/RootCACertificate/V1", current.partition()))
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .build());
///
///         var example = new CertificateAuthorityCertificate("example", CertificateAuthorityCertificateArgs.builder()
///             .certificateAuthorityArn(exampleCertificateAuthority.arn())
///             .certificate(exampleCertificate.certificate())
///             .certificateChain(exampleCertificate.certificateChain())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:acmpca:CertificateAuthorityCertificate
///     properties:
///       certificateAuthorityArn: ${exampleCertificateAuthority.arn}
///       certificate: ${exampleCertificate.certificate}
///       certificateChain: ${exampleCertificate.certificateChain}
///   exampleCertificate:
///     type: aws:acmpca:Certificate
///     name: example
///     properties:
///       certificateAuthorityArn: ${exampleCertificateAuthority.arn}
///       certificateSigningRequest: ${exampleCertificateAuthority.certificateSigningRequest}
///       signingAlgorithm: SHA512WITHRSA
///       templateArn: arn:${current.partition}:acm-pca:::template/RootCACertificate/V1
///       validity:
///         type: YEARS
///         value: 1
///   exampleCertificateAuthority:
///     type: aws:acmpca:CertificateAuthority
///     name: example
///     properties:
///       type: ROOT
///       certificateAuthorityConfiguration:
///         keyAlgorithm: RSA_4096
///         signingAlgorithm: SHA512WITHRSA
///         subject:
///           commonName: example.com
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ### Certificate for Subordinate Certificate Authority
///
/// Note that the certificate for the subordinate certificate authority must be issued by the root certificate authority using a signing request from the subordinate certificate authority.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subordinateCertificateAuthority = new aws.acmpca.CertificateAuthority("subordinate", {
///     type: "SUBORDINATE",
///     certificateAuthorityConfiguration: {
///         keyAlgorithm: "RSA_2048",
///         signingAlgorithm: "SHA512WITHRSA",
///         subject: {
///             commonName: "sub.example.com",
///         },
///     },
/// });
/// const root = new aws.acmpca.CertificateAuthority("root", {});
/// const current = aws.getPartition({});
/// const subordinateCertificate = new aws.acmpca.Certificate("subordinate", {
///     certificateAuthorityArn: root.arn,
///     certificateSigningRequest: subordinateCertificateAuthority.certificateSigningRequest,
///     signingAlgorithm: "SHA512WITHRSA",
///     templateArn: current.then(current => `arn:${current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1`),
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
/// });
/// const subordinate = new aws.acmpca.CertificateAuthorityCertificate("subordinate", {
///     certificateAuthorityArn: subordinateCertificateAuthority.arn,
///     certificate: subordinateCertificate.certificate,
///     certificateChain: subordinateCertificate.certificateChain,
/// });
/// const rootCertificateAuthorityCertificate = new aws.acmpca.CertificateAuthorityCertificate("root", {});
/// const rootCertificate = new aws.acmpca.Certificate("root", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// subordinate_certificate_authority = aws.acmpca.CertificateAuthority("subordinate",
///     type="SUBORDINATE",
///     certificate_authority_configuration={
///         "key_algorithm": "RSA_2048",
///         "signing_algorithm": "SHA512WITHRSA",
///         "subject": {
///             "common_name": "sub.example.com",
///         },
///     })
/// root = aws.acmpca.CertificateAuthority("root")
/// current = aws.get_partition()
/// subordinate_certificate = aws.acmpca.Certificate("subordinate",
///     certificate_authority_arn=root.arn,
///     certificate_signing_request=subordinate_certificate_authority.certificate_signing_request,
///     signing_algorithm="SHA512WITHRSA",
///     template_arn=f"arn:{current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     })
/// subordinate = aws.acmpca.CertificateAuthorityCertificate("subordinate",
///     certificate_authority_arn=subordinate_certificate_authority.arn,
///     certificate=subordinate_certificate.certificate,
///     certificate_chain=subordinate_certificate.certificate_chain)
/// root_certificate_authority_certificate = aws.acmpca.CertificateAuthorityCertificate("root")
/// root_certificate = aws.acmpca.Certificate("root")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subordinateCertificateAuthority = new Aws.Acmpca.CertificateAuthority("subordinate", new()
///     {
///         Type = "SUBORDINATE",
///         CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
///         {
///             KeyAlgorithm = "RSA_2048",
///             SigningAlgorithm = "SHA512WITHRSA",
///             Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
///             {
///                 CommonName = "sub.example.com",
///             },
///         },
///     });
///
///     var root = new Aws.Acmpca.CertificateAuthority("root");
///
///     var current = Aws.GetPartition.Invoke();
///
///     var subordinateCertificate = new Aws.Acmpca.Certificate("subordinate", new()
///     {
///         CertificateAuthorityArn = root.Arn,
///         CertificateSigningRequest = subordinateCertificateAuthority.CertificateSigningRequest,
///         SigningAlgorithm = "SHA512WITHRSA",
///         TemplateArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1",
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
///     });
///
///     var subordinate = new Aws.Acmpca.CertificateAuthorityCertificate("subordinate", new()
///     {
///         CertificateAuthorityArn = subordinateCertificateAuthority.Arn,
///         Certificate = subordinateCertificate.Certificate,
///         CertificateChain = subordinateCertificate.CertificateChain,
///     });
///
///     var rootCertificateAuthorityCertificate = new Aws.Acmpca.CertificateAuthorityCertificate("root");
///
///     var rootCertificate = new Aws.Acmpca.Certificate("root");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		subordinateCertificateAuthority, err := acmpca.NewCertificateAuthority(ctx, "subordinate", &acmpca.CertificateAuthorityArgs{
/// 			Type: pulumi.String("SUBORDINATE"),
/// 			CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// 				KeyAlgorithm:     pulumi.String("RSA_2048"),
/// 				SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// 				Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// 					CommonName: pulumi.String("sub.example.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		root, err := acmpca.NewCertificateAuthority(ctx, "root", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subordinateCertificate, err := acmpca.NewCertificate(ctx, "subordinate", &acmpca.CertificateArgs{
/// 			CertificateAuthorityArn:   root.Arn,
/// 			CertificateSigningRequest: subordinateCertificateAuthority.CertificateSigningRequest,
/// 			SigningAlgorithm:          pulumi.String("SHA512WITHRSA"),
/// 			TemplateArn:               pulumi.Sprintf("arn:%v:acm-pca:::template/SubordinateCACertificate_PathLen0/V1", current.Partition),
/// 			Validity: &acmpca.CertificateValidityArgs{
/// 				Type:  pulumi.String("YEARS"),
/// 				Value: pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewCertificateAuthorityCertificate(ctx, "subordinate", &acmpca.CertificateAuthorityCertificateArgs{
/// 			CertificateAuthorityArn: subordinateCertificateAuthority.Arn,
/// 			Certificate:             subordinateCertificate.Certificate,
/// 			CertificateChain:        subordinateCertificate.CertificateChain,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewCertificateAuthorityCertificate(ctx, "root", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewCertificate(ctx, "root", nil)
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
///         var subordinateCertificateAuthority = new CertificateAuthority("subordinateCertificateAuthority", CertificateAuthorityArgs.builder()
///             .type("SUBORDINATE")
///             .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
///                 .keyAlgorithm("RSA_2048")
///                 .signingAlgorithm("SHA512WITHRSA")
///                 .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
///                     .commonName("sub.example.com")
///                     .build())
///                 .build())
///             .build());
///
///         var root = new CertificateAuthority("root");
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var subordinateCertificate = new Certificate("subordinateCertificate", CertificateArgs.builder()
///             .certificateAuthorityArn(root.arn())
///             .certificateSigningRequest(subordinateCertificateAuthority.certificateSigningRequest())
///             .signingAlgorithm("SHA512WITHRSA")
///             .templateArn(String.format("arn:%s:acm-pca:::template/SubordinateCACertificate_PathLen0/V1", current.partition()))
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .build());
///
///         var subordinate = new CertificateAuthorityCertificate("subordinate", CertificateAuthorityCertificateArgs.builder()
///             .certificateAuthorityArn(subordinateCertificateAuthority.arn())
///             .certificate(subordinateCertificate.certificate())
///             .certificateChain(subordinateCertificate.certificateChain())
///             .build());
///
///         var rootCertificateAuthorityCertificate = new CertificateAuthorityCertificate("rootCertificateAuthorityCertificate");
///
///         var rootCertificate = new Certificate("rootCertificate");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subordinate:
///     type: aws:acmpca:CertificateAuthorityCertificate
///     properties:
///       certificateAuthorityArn: ${subordinateCertificateAuthority.arn}
///       certificate: ${subordinateCertificate.certificate}
///       certificateChain: ${subordinateCertificate.certificateChain}
///   subordinateCertificate:
///     type: aws:acmpca:Certificate
///     name: subordinate
///     properties:
///       certificateAuthorityArn: ${root.arn}
///       certificateSigningRequest: ${subordinateCertificateAuthority.certificateSigningRequest}
///       signingAlgorithm: SHA512WITHRSA
///       templateArn: arn:${current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1
///       validity:
///         type: YEARS
///         value: 1
///   subordinateCertificateAuthority:
///     type: aws:acmpca:CertificateAuthority
///     name: subordinate
///     properties:
///       type: SUBORDINATE
///       certificateAuthorityConfiguration:
///         keyAlgorithm: RSA_2048
///         signingAlgorithm: SHA512WITHRSA
///         subject:
///           commonName: sub.example.com
///   root:
///     type: aws:acmpca:CertificateAuthority
///   rootCertificateAuthorityCertificate:
///     type: aws:acmpca:CertificateAuthorityCertificate
///     name: root
///   rootCertificate:
///     type: aws:acmpca:Certificate
///     name: root
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
class CertificateAuthorityCertificate extends pulumi.CustomResource {
  /// PEM-encoded certificate for the Certificate Authority.
  late final pulumi.Output<String> certificate;

  /// ARN of the Certificate Authority.
  late final pulumi.Output<String> certificateAuthorityArn;

  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA. Required for subordinate Certificate Authorities. Not allowed for root Certificate Authorities.
  late final pulumi.Output<String?> certificateChain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [CertificateAuthorityCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateAuthorityCertificate]. {@macro pulumi_acmpca_certificate_authority_certificate_certificate_authority_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateAuthorityCertificate(
    String name, {
    CertificateAuthorityCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:acmpca/certificateAuthorityCertificate:CertificateAuthorityCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.certificate = registerOutput<String>('certificate');
    this.certificateAuthorityArn = registerOutput<String>(
      'certificateAuthorityArn',
    );
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.region = registerOutput<String>('region');
  }
}
