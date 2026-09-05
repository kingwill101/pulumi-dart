import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';
import 'certificate_validity.dart';

/// Provides a resource to issue a certificate using AWS Certificate Manager Private Certificate Authority (ACM PCA).
///
/// Certificates created using `aws.acmpca.Certificate` are not eligible for automatic renewal,
/// and must be replaced instead.
/// To issue a renewable certificate using an ACM PCA, create a `aws.acm.Certificate`
/// with the parameter `certificateAuthorityArn`.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {
///     certificateAuthorityConfiguration: {
///         subject: {
///             commonName: "example.com",
///         },
///         keyAlgorithm: "RSA_4096",
///         signingAlgorithm: "SHA512WITHRSA",
///     },
///     permanentDeletionTimeInDays: 7,
/// });
/// const key = new tls.PrivateKey("key", {algorithm: "RSA"});
/// const csr = new tls.CertRequest("csr", {
///     subject: [{
///         commonName: "example",
///     }],
///     privateKeyPem: key.privateKeyPem,
/// });
/// const example = new aws.acmpca.Certificate("example", {
///     validity: {
///         type: "YEARS",
///         value: "1",
///     },
///     certificateAuthorityArn: exampleCertificateAuthority.arn,
///     certificateSigningRequest: csr.certRequestPem,
///     signingAlgorithm: "SHA256WITHRSA",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example",
///     certificate_authority_configuration={
///         "subject": {
///             "common_name": "example.com",
///         },
///         "key_algorithm": "RSA_4096",
///         "signing_algorithm": "SHA512WITHRSA",
///     },
///     permanent_deletion_time_in_days=7)
/// key = tls.PrivateKey("key", algorithm="RSA")
/// csr = tls.CertRequest("csr",
///     subject=[{
///         "commonName": "example",
///     }],
///     private_key_pem=key.private_key_pem)
/// example = aws.acmpca.Certificate("example",
///     validity={
///         "type": "YEARS",
///         "value": "1",
///     },
///     certificate_authority_arn=example_certificate_authority.arn,
///     certificate_signing_request=csr.cert_request_pem,
///     signing_algorithm="SHA256WITHRSA")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
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
///         PermanentDeletionTimeInDays = 7,
///     });
///
///     var key = new Tls.PrivateKey("key", new()
///     {
///         Algorithm = "RSA",
///     });
///
///     var csr = new Tls.CertRequest("csr", new()
///     {
///         Subject = new[]
///         {
///
///             {
///                 { "commonName", "example" },
///             },
///         },
///         PrivateKeyPem = key.PrivateKeyPem,
///     });
///
///     var example = new Aws.Acmpca.Certificate("example", new()
///     {
///         Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
///         {
///             Type = "YEARS",
///             Value = "1",
///         },
///         CertificateAuthorityArn = exampleCertificateAuthority.Arn,
///         CertificateSigningRequest = csr.CertRequestPem,
///         SigningAlgorithm = "SHA256WITHRSA",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
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
/// 			PermanentDeletionTimeInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := tls.NewPrivateKey(ctx, "key", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("RSA"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		csr, err := tls.NewCertRequest(ctx, "csr", &tls.CertRequestArgs{
/// 			Subject: tls.CertRequestSubjectArgs{
/// 				map[string]string{
/// 					"commonName": "example",
/// 				},
/// 			},
/// 			PrivateKeyPem: key.PrivateKeyPem,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acmpca.NewCertificate(ctx, "example", &acmpca.CertificateArgs{
/// 			Validity: &acmpca.CertificateValidityArgs{
/// 				Type:  pulumi.String("YEARS"),
/// 				Value: pulumi.String("1"),
/// 			},
/// 			CertificateAuthorityArn:   exampleCertificateAuthority.Arn,
/// 			CertificateSigningRequest: csr.CertRequestPem,
/// 			SigningAlgorithm:          pulumi.String("SHA256WITHRSA"),
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
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// resource "aws_acmpca_certificate" "example" {
///   validity = {
///     type  = "YEARS"
///     value = 1
///   }
///   certificate_authority_arn   = aws_acmpca_certificateauthority.example.arn
///   certificate_signing_request = tls_certrequest.csr.cert_request_pem
///   signing_algorithm           = "SHA256WITHRSA"
/// }
/// resource "aws_acmpca_certificateauthority" "example" {
///   certificate_authority_configuration = {
///     subject = {
///       common_name = "example.com"
///     }
///     key_algorithm     = "RSA_4096"
///     signing_algorithm = "SHA512WITHRSA"
///   }
///   permanent_deletion_time_in_days = 7
/// }
/// resource "tls_privatekey" "key" {
///   algorithm = "RSA"
/// }
/// resource "tls_certrequest" "csr" {
///   subject = [{
///     "commonName" = "example"
///   }]
///   private_key_pem = tls_privatekey.key.private_key_pem
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
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.CertRequest;
/// import com.pulumi.tls.CertRequestArgs;
/// import com.pulumi.aws.acmpca.Certificate;
/// import com.pulumi.aws.acmpca.CertificateArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateValidityArgs;
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
///             .permanentDeletionTimeInDays(7)
///             .build());
///
///         var key = new PrivateKey("key", PrivateKeyArgs.builder()
///             .algorithm("RSA")
///             .build());
///
///         var csr = new CertRequest("csr", CertRequestArgs.builder()
///             .subject(com.pulumi.tls.inputs.CertRequestSubjectArgs.builder()
///                 .commonName("example")
///                 .build())
///             .privateKeyPem(key.privateKeyPem())
///             .build());
///
///         var example = new Certificate("example", CertificateArgs.builder()
///             .validity(CertificateValidityArgs.builder()
///                 .type("YEARS")
///                 .value("1")
///                 .build())
///             .certificateAuthorityArn(exampleCertificateAuthority.arn())
///             .certificateSigningRequest(csr.certRequestPem())
///             .signingAlgorithm("SHA256WITHRSA")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:acmpca:Certificate
///     properties:
///       validity:
///         type: YEARS
///         value: 1
///       certificateAuthorityArn: ${exampleCertificateAuthority.arn}
///       certificateSigningRequest: ${csr.certRequestPem}
///       signingAlgorithm: SHA256WITHRSA
///   exampleCertificateAuthority:
///     type: aws:acmpca:CertificateAuthority
///     name: example
///     properties:
///       certificateAuthorityConfiguration:
///         subject:
///           commonName: example.com
///         keyAlgorithm: RSA_4096
///         signingAlgorithm: SHA512WITHRSA
///       permanentDeletionTimeInDays: 7
///   key:
///     type: tls:PrivateKey
///     properties:
///       algorithm: RSA
///   csr:
///     type: tls:CertRequest
///     properties:
///       subject:
///         - commonName: example
///       privateKeyPem: ${key.privateKeyPem}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the ACM PCA certificate.
///
///
/// Using `pulumi import`, import ACM PCA Certificates using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/certificate:Certificate cert arn:aws:acm-pca:eu-west-1:675225743824:certificate-authority/08319ede-83g9-1400-8f21-c7d12b2b6edb/certificate/a4e9c2aa4bcfab625g1b9136464cd3a
/// ```
class Certificate extends pulumi.CustomResource {
  /// Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  late final pulumi.Output<String?> apiPassthrough;
  /// ARN of the certificate.
  late final pulumi.Output<String> arn;
  /// PEM-encoded certificate value.
  late final pulumi.Output<String> certificate;
  /// ARN of the certificate authority.
  late final pulumi.Output<String> certificateAuthorityArn;
  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  late final pulumi.Output<String> certificateChain;
  /// Certificate Signing Request in PEM format.
  late final pulumi.Output<String> certificateSigningRequest;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  late final pulumi.Output<String> signingAlgorithm;
  /// Template to use when issuing a certificate.
  /// See [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html) for more information.
  late final pulumi.Output<String?> templateArn;
  /// Configures end of the validity period for the certificate. See validity block below.
  late final pulumi.Output<CertificateValidity> validity;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_acmpca_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    apiPassthrough = registerOutput<String?>('apiPassthrough');
    arn = registerOutput<String>('arn');
    certificate = registerOutput<String>('certificate');
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    certificateChain = registerOutput<String>('certificateChain');
    certificateSigningRequest = registerOutput<String>('certificateSigningRequest');
    region = registerOutput<String>('region');
    signingAlgorithm = registerOutput<String>('signingAlgorithm');
    templateArn = registerOutput<String?>('templateArn');
    validity = registerOutput<CertificateValidity>('validity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateValidity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiPassthrough = registerOutput<String?>('apiPassthrough');
    arn = registerOutput<String>('arn');
    certificate = registerOutput<String>('certificate');
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    certificateChain = registerOutput<String>('certificateChain');
    certificateSigningRequest = registerOutput<String>('certificateSigningRequest');
    region = registerOutput<String>('region');
    signingAlgorithm = registerOutput<String>('signingAlgorithm');
    templateArn = registerOutput<String?>('templateArn');
    validity = registerOutput<CertificateValidity>('validity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateValidity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Certificate] resource.
  Certificate.reference(String urn)
    : super(
        'aws:acmpca/certificate:Certificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiPassthrough = registerOutput<String?>('apiPassthrough');
    arn = registerOutput<String>('arn');
    certificate = registerOutput<String>('certificate');
    certificateAuthorityArn = registerOutput<String>('certificateAuthorityArn');
    certificateChain = registerOutput<String>('certificateChain');
    certificateSigningRequest = registerOutput<String>('certificateSigningRequest');
    region = registerOutput<String>('region');
    signingAlgorithm = registerOutput<String>('signingAlgorithm');
    templateArn = registerOutput<String?>('templateArn');
    validity = registerOutput<CertificateValidity>('validity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateValidity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
