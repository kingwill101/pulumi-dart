import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_certificate_args.dart';
import 'certificate_authority_certificate_state.dart';

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
///     certificateAuthorityConfiguration: {
///         subject: {
///             commonName: "example.com",
///         },
///         keyAlgorithm: "RSA_4096",
///         signingAlgorithm: "SHA512WITHRSA",
///     },
///     type: "ROOT",
/// });
/// const current = aws.getPartition({});
/// const exampleCertificate = new aws.acmpca.Certificate("example", {
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
///     certificateAuthorityArn: exampleCertificateAuthority.arn,
///     certificateSigningRequest: exampleCertificateAuthority.certificateSigningRequest,
///     signingAlgorithm: "SHA512WITHRSA",
///     templateArn: current.then(current => `arn:${current.partition}:acm-pca:::template/RootCACertificate/V1`),
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
///     certificate_authority_configuration={
///         "subject": {
///             "common_name": "example.com",
///         },
///         "key_algorithm": "RSA_4096",
///         "signing_algorithm": "SHA512WITHRSA",
///     },
///     type="ROOT")
/// current = aws.get_partition()
/// example_certificate = aws.acmpca.Certificate("example",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     },
///     certificate_authority_arn=example_certificate_authority.arn,
///     certificate_signing_request=example_certificate_authority.certificate_signing_request,
///     signing_algorithm="SHA512WITHRSA",
///     template_arn=f"arn:{current.partition}:acm-pca:::template/RootCACertificate/V1")
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
///         CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
///         {
///             Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
///             {
///                 CommonName = "example.com",
///             },
///             KeyAlgorithm = "RSA_4096",
///             SigningAlgorithm = "SHA512WITHRSA",
///         },
///         Type = "ROOT",
///     });
///
///     var current = Aws.GetPartition.Invoke();
///
///     var exampleCertificate = new Aws.Acmpca.Certificate("example", new()
///     {
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
///         CertificateAuthorityArn = exampleCertificateAuthority.Arn,
///         CertificateSigningRequest = exampleCertificateAuthority.CertificateSigningRequest,
///         SigningAlgorithm = "SHA512WITHRSA",
///         TemplateArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:acm-pca:::template/RootCACertificate/V1",
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
/// 			CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// 				Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// 					CommonName: pulumi.String("example.com"),
/// 				},
/// 				KeyAlgorithm:     pulumi.String("RSA_4096"),
/// 				SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// 			},
/// 			Type: pulumi.String("ROOT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCertificate, err := acmpca.NewCertificate(ctx, "example", &acmpca.CertificateArgs{
/// 			Validity: &acmpca.CertificateValidityArgs{
/// 				Type:  pulumi.String("YEARS"),
/// 				Value: pulumi.String("1"),
/// 			},
/// 			CertificateAuthorityArn:   exampleCertificateAuthority.Arn,
/// 			CertificateSigningRequest: exampleCertificateAuthority.CertificateSigningRequest,
/// 			SigningAlgorithm:          pulumi.String("SHA512WITHRSA"),
/// 			TemplateArn:               pulumi.Sprintf("arn:%v:acm-pca:::template/RootCACertificate/V1", current.Partition),
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
/// resource "aws_acmpca_certificateauthoritycertificate" "example" {
///   certificate_authority_arn = aws_acmpca_certificateauthority.example.arn
///   certificate               = aws_acmpca_certificate.example.certificate
///   certificate_chain         = aws_acmpca_certificate.example.certificate_chain
/// }
/// resource "aws_acmpca_certificate" "example" {
///   validity = {
///     type  = "YEARS"
///     value = 1
///   }
///   certificate_authority_arn   = aws_acmpca_certificateauthority.example.arn
///   certificate_signing_request = aws_acmpca_certificateauthority.example.certificate_signing_request
///   signing_algorithm           = "SHA512WITHRSA"
///   template_arn                ="arn:${data.aws_getpartition.current.partition}:acm-pca:::template/RootCACertificate/V1"
/// }
/// resource "aws_acmpca_certificateauthority" "example" {
///   certificate_authority_configuration = {
///     subject = {
///       common_name = "example.com"
///     }
///     key_algorithm     = "RSA_4096"
///     signing_algorithm = "SHA512WITHRSA"
///   }
///   type = "ROOT"
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
///         var exampleCertificateAuthority = new CertificateAuthority("exampleCertificateAuthority", CertificateAuthorityArgs.builder()
///             .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
///                 .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
///                     .commonName("example.com")
///                     .build())
///                 .keyAlgorithm("RSA_4096")
///                 .signingAlgorithm("SHA512WITHRSA")
///                 .build())
///             .type("ROOT")
///             .build());
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .certificateAuthorityArn(exampleCertificateAuthority.arn())
///             .certificateSigningRequest(exampleCertificateAuthority.certificateSigningRequest())
///             .signingAlgorithm("SHA512WITHRSA")
///             .templateArn(String.format("arn:%s:acm-pca:::template/RootCACertificate/V1", current.partition()))
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
///       validity:
///         type: YEARS
///         value: 1
///       certificateAuthorityArn: ${exampleCertificateAuthority.arn}
///       certificateSigningRequest: ${exampleCertificateAuthority.certificateSigningRequest}
///       signingAlgorithm: SHA512WITHRSA
///       templateArn: arn:${current.partition}:acm-pca:::template/RootCACertificate/V1
///   exampleCertificateAuthority:
///     type: aws:acmpca:CertificateAuthority
///     name: example
///     properties:
///       certificateAuthorityConfiguration:
///         subject:
///           commonName: example.com
///         keyAlgorithm: RSA_4096
///         signingAlgorithm: SHA512WITHRSA
///       type: ROOT
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
///     certificateAuthorityConfiguration: {
///         subject: {
///             commonName: "sub.example.com",
///         },
///         keyAlgorithm: "RSA_2048",
///         signingAlgorithm: "SHA512WITHRSA",
///     },
///     type: "SUBORDINATE",
/// });
/// const root = new aws.acmpca.CertificateAuthority("root", {});
/// const current = aws.getPartition({});
/// const subordinateCertificate = new aws.acmpca.Certificate("subordinate", {
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
///     certificateAuthorityArn: root.arn,
///     certificateSigningRequest: subordinateCertificateAuthority.certificateSigningRequest,
///     signingAlgorithm: "SHA512WITHRSA",
///     templateArn: current.then(current => `arn:${current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1`),
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
///     certificate_authority_configuration={
///         "subject": {
///             "common_name": "sub.example.com",
///         },
///         "key_algorithm": "RSA_2048",
///         "signing_algorithm": "SHA512WITHRSA",
///     },
///     type="SUBORDINATE")
/// root = aws.acmpca.CertificateAuthority("root")
/// current = aws.get_partition()
/// subordinate_certificate = aws.acmpca.Certificate("subordinate",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     },
///     certificate_authority_arn=root.arn,
///     certificate_signing_request=subordinate_certificate_authority.certificate_signing_request,
///     signing_algorithm="SHA512WITHRSA",
///     template_arn=f"arn:{current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1")
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
///         CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
///         {
///             Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
///             {
///                 CommonName = "sub.example.com",
///             },
///             KeyAlgorithm = "RSA_2048",
///             SigningAlgorithm = "SHA512WITHRSA",
///         },
///         Type = "SUBORDINATE",
///     });
///
///     var root = new Aws.Acmpca.CertificateAuthority("root");
///
///     var current = Aws.GetPartition.Invoke();
///
///     var subordinateCertificate = new Aws.Acmpca.Certificate("subordinate", new()
///     {
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
///         CertificateAuthorityArn = root.Arn,
///         CertificateSigningRequest = subordinateCertificateAuthority.CertificateSigningRequest,
///         SigningAlgorithm = "SHA512WITHRSA",
///         TemplateArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1",
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
/// 			CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// 				Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// 					CommonName: pulumi.String("sub.example.com"),
/// 				},
/// 				KeyAlgorithm:     pulumi.String("RSA_2048"),
/// 				SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// 			},
/// 			Type: pulumi.String("SUBORDINATE"),
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
/// 			Validity: &acmpca.CertificateValidityArgs{
/// 				Type:  pulumi.String("YEARS"),
/// 				Value: pulumi.String("1"),
/// 			},
/// 			CertificateAuthorityArn:   root.Arn,
/// 			CertificateSigningRequest: subordinateCertificateAuthority.CertificateSigningRequest,
/// 			SigningAlgorithm:          pulumi.String("SHA512WITHRSA"),
/// 			TemplateArn:               pulumi.Sprintf("arn:%v:acm-pca:::template/SubordinateCACertificate_PathLen0/V1", current.Partition),
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
/// resource "aws_acmpca_certificateauthoritycertificate" "subordinate" {
///   certificate_authority_arn = aws_acmpca_certificateauthority.subordinate.arn
///   certificate               = aws_acmpca_certificate.subordinate.certificate
///   certificate_chain         = aws_acmpca_certificate.subordinate.certificate_chain
/// }
/// resource "aws_acmpca_certificate" "subordinate" {
///   validity = {
///     type  = "YEARS"
///     value = 1
///   }
///   certificate_authority_arn   = aws_acmpca_certificateauthority.root.arn
///   certificate_signing_request = aws_acmpca_certificateauthority.subordinate.certificate_signing_request
///   signing_algorithm           = "SHA512WITHRSA"
///   template_arn                ="arn:${data.aws_getpartition.current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1"
/// }
/// resource "aws_acmpca_certificateauthority" "subordinate" {
///   certificate_authority_configuration = {
///     subject = {
///       common_name = "sub.example.com"
///     }
///     key_algorithm     = "RSA_2048"
///     signing_algorithm = "SHA512WITHRSA"
///   }
///   type = "SUBORDINATE"
/// }
/// resource "aws_acmpca_certificateauthority" "root" {
/// }
/// resource "aws_acmpca_certificateauthoritycertificate" "root" {
/// }
/// resource "aws_acmpca_certificate" "root" {
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
///         var subordinateCertificateAuthority = new CertificateAuthority("subordinateCertificateAuthority", CertificateAuthorityArgs.builder()
///             .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
///                 .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
///                     .commonName("sub.example.com")
///                     .build())
///                 .keyAlgorithm("RSA_2048")
///                 .signingAlgorithm("SHA512WITHRSA")
///                 .build())
///             .type("SUBORDINATE")
///             .build());
///
///         var root = new CertificateAuthority("root");
///
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var subordinateCertificate = new Certificate("subordinateCertificate", CertificateArgs.builder()
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .certificateAuthorityArn(root.arn())
///             .certificateSigningRequest(subordinateCertificateAuthority.certificateSigningRequest())
///             .signingAlgorithm("SHA512WITHRSA")
///             .templateArn(String.format("arn:%s:acm-pca:::template/SubordinateCACertificate_PathLen0/V1", current.partition()))
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
///       validity:
///         type: YEARS
///         value: 1
///       certificateAuthorityArn: ${root.arn}
///       certificateSigningRequest: ${subordinateCertificateAuthority.certificateSigningRequest}
///       signingAlgorithm: SHA512WITHRSA
///       templateArn: arn:${current.partition}:acm-pca:::template/SubordinateCACertificate_PathLen0/V1
///   subordinateCertificateAuthority:
///     type: aws:acmpca:CertificateAuthority
///     name: subordinate
///     properties:
///       certificateAuthorityConfiguration:
///         subject:
///           commonName: sub.example.com
///         keyAlgorithm: RSA_2048
///         signingAlgorithm: SHA512WITHRSA
///       type: SUBORDINATE
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    certificate = registerOutput<String>('certificate');
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    certificateChain = registerOutput<String?>('certificateChain');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [CertificateAuthorityCertificate] resource's state with the given [name] and [id].
  static CertificateAuthorityCertificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateAuthorityCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CertificateAuthorityCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CertificateAuthorityCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificateAuthorityCertificate:CertificateAuthorityCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    certificateChain = registerOutput<String?>('certificateChain');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [CertificateAuthorityCertificate] resource.
  CertificateAuthorityCertificate.reference(String urn)
    : super(
        'aws:acmpca/certificateAuthorityCertificate:CertificateAuthorityCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificate = registerOutput<String>('certificate');
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    certificateChain = registerOutput<String?>('certificateChain');
    region = registerOutput<String>('region');
  }
}
