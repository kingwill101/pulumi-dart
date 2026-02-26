import 'package:pulumi/pulumi.dart';
import '../certificate_validity/certificate_validity.dart';
import 'certificate_args2.dart';

/// Provides a resource to issue a certificate using AWS Certificate Manager Private Certificate Authority (ACM PCA).
///
/// Certificates created using <span pulumi-lang-nodejs="`aws.acmpca.Certificate`" pulumi-lang-dotnet="`aws.acmpca.Certificate`" pulumi-lang-go="`acmpca.Certificate`" pulumi-lang-python="`acmpca.Certificate`" pulumi-lang-yaml="`aws.acmpca.Certificate`" pulumi-lang-java="`aws.acmpca.Certificate`">`aws.acmpca.Certificate`</span> are not eligible for automatic renewal,
/// and must be replaced instead.
/// To issue a renewable certificate using an ACM PCA, create a <span pulumi-lang-nodejs="`aws.acm.Certificate`" pulumi-lang-dotnet="`aws.acm.Certificate`" pulumi-lang-go="`acm.Certificate`" pulumi-lang-python="`acm.Certificate`" pulumi-lang-yaml="`aws.acm.Certificate`" pulumi-lang-java="`aws.acm.Certificate`">`aws.acm.Certificate`</span>
/// with the parameter <span pulumi-lang-nodejs="`certificateAuthorityArn`" pulumi-lang-dotnet="`CertificateAuthorityArn`" pulumi-lang-go="`certificateAuthorityArn`" pulumi-lang-python="`certificate_authority_arn`" pulumi-lang-yaml="`certificateAuthorityArn`" pulumi-lang-java="`certificateAuthorityArn`">`certificate_authority_arn`</span>.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {
/// certificateAuthorityConfiguration: {
/// keyAlgorithm: "RSA_4096",
/// signingAlgorithm: "SHA512WITHRSA",
/// subject: {
/// commonName: "example.com",
/// },
/// },
/// permanentDeletionTimeInDays: 7,
/// });
/// const key = new tls.PrivateKey("key", {algorithm: "RSA"});
/// const csr = new tls.CertRequest("csr", {
/// privateKeyPem: key.privateKeyPem,
/// subject: [{
/// commonName: "example",
/// }],
/// });
/// const example = new aws.acmpca.Certificate("example", {
/// certificateAuthorityArn: exampleCertificateAuthority.arn,
/// certificateSigningRequest: csr.certRequestPem,
/// signingAlgorithm: "SHA256WITHRSA",
/// validity: {
/// type: "YEARS",
/// value: "1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example",
/// certificate_authority_configuration={
/// "key_algorithm": "RSA_4096",
/// "signing_algorithm": "SHA512WITHRSA",
/// "subject": {
/// "common_name": "example.com",
/// },
/// },
/// permanent_deletion_time_in_days=7)
/// key = tls.PrivateKey("key", algorithm="RSA")
/// csr = tls.CertRequest("csr",
/// private_key_pem=key.private_key_pem,
/// subject=[{
/// "commonName": "example",
/// }])
/// example = aws.acmpca.Certificate("example",
/// certificate_authority_arn=example_certificate_authority.arn,
/// certificate_signing_request=csr.cert_request_pem,
/// signing_algorithm="SHA256WITHRSA",
/// validity={
/// "type": "YEARS",
/// "value": "1",
/// })
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
/// var exampleCertificateAuthority = new Aws.Acmpca.CertificateAuthority("example", new()
/// {
/// CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
/// {
/// KeyAlgorithm = "RSA_4096",
/// SigningAlgorithm = "SHA512WITHRSA",
/// Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
/// {
/// CommonName = "example.com",
/// },
/// },
/// PermanentDeletionTimeInDays = 7,
/// });
///
/// var key = new Tls.PrivateKey("key", new()
/// {
/// Algorithm = "RSA",
/// });
///
/// var csr = new Tls.CertRequest("csr", new()
/// {
/// PrivateKeyPem = key.PrivateKeyPem,
/// Subject = new[]
/// {
///
/// {
/// { "commonName", "example" },
/// },
/// },
/// });
///
/// var example = new Aws.Acmpca.Certificate("example", new()
/// {
/// CertificateAuthorityArn = exampleCertificateAuthority.Arn,
/// CertificateSigningRequest = csr.CertRequestPem,
/// SigningAlgorithm = "SHA256WITHRSA",
/// Validity = new Aws.Acmpca.Inputs.CertificateValidityArgs
/// {
/// Type = "YEARS",
/// Value = "1",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// "github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleCertificateAuthority, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// KeyAlgorithm:     pulumi.String("RSA_4096"),
/// SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// CommonName: pulumi.String("example.com"),
/// },
/// },
/// PermanentDeletionTimeInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// key, err := tls.NewPrivateKey(ctx, "key", &tls.PrivateKeyArgs{
/// Algorithm: pulumi.String("RSA"),
/// })
/// if err != nil {
/// return err
/// }
/// csr, err := tls.NewCertRequest(ctx, "csr", &tls.CertRequestArgs{
/// PrivateKeyPem: key.PrivateKeyPem,
/// Subject: tls.CertRequestSubjectArgs{
/// map[string]interface{}{
/// "commonName": "example",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = acmpca.NewCertificate(ctx, "example", &acmpca.CertificateArgs{
/// CertificateAuthorityArn:   exampleCertificateAuthority.Arn,
/// CertificateSigningRequest: csr.CertRequestPem,
/// SigningAlgorithm:          pulumi.String("SHA256WITHRSA"),
/// Validity: &acmpca.CertificateValidityArgs{
/// Type:  pulumi.String("YEARS"),
/// Value: pulumi.String("1"),
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
/// var exampleCertificateAuthority = new CertificateAuthority("exampleCertificateAuthority", CertificateAuthorityArgs.builder()
/// .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
/// .keyAlgorithm("RSA_4096")
/// .signingAlgorithm("SHA512WITHRSA")
/// .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
/// .commonName("example.com")
/// .build())
/// .build())
/// .permanentDeletionTimeInDays(7)
/// .build());
///
/// var key = new PrivateKey("key", PrivateKeyArgs.builder()
/// .algorithm("RSA")
/// .build());
///
/// var csr = new CertRequest("csr", CertRequestArgs.builder()
/// .privateKeyPem(key.privateKeyPem())
/// .subject(CertRequestSubjectArgs.builder()
/// .commonName("example")
/// .build())
/// .build());
///
/// var example = new Certificate("example", CertificateArgs.builder()
/// .certificateAuthorityArn(exampleCertificateAuthority.arn())
/// .certificateSigningRequest(csr.certRequestPem())
/// .signingAlgorithm("SHA256WITHRSA")
/// .validity(CertificateValidityArgs.builder()
/// .type("YEARS")
/// .value("1")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:acmpca:Certificate
/// properties:
/// certificateAuthorityArn: ${exampleCertificateAuthority.arn}
/// certificateSigningRequest: ${csr.certRequestPem}
/// signingAlgorithm: SHA256WITHRSA
/// validity:
/// type: YEARS
/// value: 1
/// exampleCertificateAuthority:
/// type: aws:acmpca:CertificateAuthority
/// name: example
/// properties:
/// certificateAuthorityConfiguration:
/// keyAlgorithm: RSA_4096
/// signingAlgorithm: SHA512WITHRSA
/// subject:
/// commonName: example.com
/// permanentDeletionTimeInDays: 7
/// key:
/// type: tls:PrivateKey
/// properties:
/// algorithm: RSA
/// csr:
/// type: tls:CertRequest
/// properties:
/// privateKeyPem: ${key.privateKeyPem}
/// subject:
/// - commonName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the ACM PCA certificate.
///
///
/// Using `pulumi import`, import ACM PCA Certificates using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/certificate:Certificate cert arn:aws:acm-pca:eu-west-1:675225743824:certificate-authority/08319ede-83g9-1400-8f21-c7d12b2b6edb/certificate/a4e9c2aa4bcfab625g1b9136464cd3a
/// ```
class Certificate2 extends CustomResource {
  /// Specifies X.509 certificate information to be included in the issued certificate. To use with API Passthrough templates
  late final Output<String?> apiPassthrough;

  /// ARN of the certificate.
  late final Output<String> arn;

  /// PEM-encoded certificate value.
  late final Output<String> certificate;

  /// ARN of the certificate authority.
  late final Output<String> certificateAuthorityArn;

  /// PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA.
  late final Output<String> certificateChain;

  /// Certificate Signing Request in PEM format.
  late final Output<String> certificateSigningRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Algorithm to use to sign certificate requests. Valid values: `SHA256WITHRSA`, `SHA256WITHECDSA`, `SHA384WITHRSA`, `SHA384WITHECDSA`, `SHA512WITHRSA`, `SHA512WITHECDSA`.
  late final Output<String> signingAlgorithm;

  /// Template to use when issuing a certificate.
  /// See [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html) for more information.
  late final Output<String?> templateArn;

  /// Configures end of the validity period for the certificate. See validity block below.
  late final Output<CertificateValidity> validity;

  Certificate2(
    String name, {
    CertificateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiPassthrough = registerOutput<String?>('apiPassthrough');
    this.arn = registerOutput<String>('arn');
    this.certificate = registerOutput<String>('certificate');
    this.certificateAuthorityArn =
        registerOutput<String>('certificateAuthorityArn');
    this.certificateChain = registerOutput<String>('certificateChain');
    this.certificateSigningRequest =
        registerOutput<String>('certificateSigningRequest');
    this.region = registerOutput<String>('region');
    this.signingAlgorithm = registerOutput<String>('signingAlgorithm');
    this.templateArn = registerOutput<String?>('templateArn');
    this.validity = registerOutput<CertificateValidity>('validity');
  }
}
