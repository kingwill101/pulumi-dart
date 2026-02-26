import 'package:pulumi/pulumi.dart';
import '../certificate_authority_certificate_authority_configuration/certificate_authority_certificate_authority_configuration.dart';
import '../certificate_authority_revocation_configuration/certificate_authority_revocation_configuration.dart';
import 'certificate_authority_args.dart';

/// Provides a resource to manage AWS Certificate Manager Private Certificate Authorities (ACM PCA Certificate Authorities).
///
/// > **NOTE:** Creating this resource will leave the certificate authority in a `PENDING_CERTIFICATE` status, which means it cannot yet issue certificates. To complete this setup, you must fully sign the certificate authority CSR available in the <span pulumi-lang-nodejs="`certificateSigningRequest`" pulumi-lang-dotnet="`CertificateSigningRequest`" pulumi-lang-go="`certificateSigningRequest`" pulumi-lang-python="`certificate_signing_request`" pulumi-lang-yaml="`certificateSigningRequest`" pulumi-lang-java="`certificateSigningRequest`">`certificate_signing_request`</span> attribute. The <span pulumi-lang-nodejs="`aws.acmpca.CertificateAuthorityCertificate`" pulumi-lang-dotnet="`aws.acmpca.CertificateAuthorityCertificate`" pulumi-lang-go="`acmpca.CertificateAuthorityCertificate`" pulumi-lang-python="`acmpca.CertificateAuthorityCertificate`" pulumi-lang-yaml="`aws.acmpca.CertificateAuthorityCertificate`" pulumi-lang-java="`aws.acmpca.CertificateAuthorityCertificate`">`aws.acmpca.CertificateAuthorityCertificate`</span> resource can be used for this purpose.
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
/// const example = new aws.acmpca.CertificateAuthority("example", {
/// certificateAuthorityConfiguration: {
/// keyAlgorithm: "RSA_4096",
/// signingAlgorithm: "SHA512WITHRSA",
/// subject: {
/// commonName: "example.com",
/// },
/// },
/// permanentDeletionTimeInDays: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acmpca.CertificateAuthority("example",
/// certificate_authority_configuration={
/// "key_algorithm": "RSA_4096",
/// "signing_algorithm": "SHA512WITHRSA",
/// "subject": {
/// "common_name": "example.com",
/// },
/// },
/// permanent_deletion_time_in_days=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Acmpca.CertificateAuthority("example", new()
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
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
/// var example = new CertificateAuthority("example", CertificateAuthorityArgs.builder()
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
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:acmpca:CertificateAuthority
/// properties:
/// certificateAuthorityConfiguration:
/// keyAlgorithm: RSA_4096
/// signingAlgorithm: SHA512WITHRSA
/// subject:
/// commonName: example.com
/// permanentDeletionTimeInDays: 7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Short-lived certificate
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.acmpca.CertificateAuthority("example", {
/// usageMode: "SHORT_LIVED_CERTIFICATE",
/// certificateAuthorityConfiguration: {
/// keyAlgorithm: "RSA_4096",
/// signingAlgorithm: "SHA512WITHRSA",
/// subject: {
/// commonName: "example.com",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acmpca.CertificateAuthority("example",
/// usage_mode="SHORT_LIVED_CERTIFICATE",
/// certificate_authority_configuration={
/// "key_algorithm": "RSA_4096",
/// "signing_algorithm": "SHA512WITHRSA",
/// "subject": {
/// "common_name": "example.com",
/// },
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
/// var example = new Aws.Acmpca.CertificateAuthority("example", new()
/// {
/// UsageMode = "SHORT_LIVED_CERTIFICATE",
/// CertificateAuthorityConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs
/// {
/// KeyAlgorithm = "RSA_4096",
/// SigningAlgorithm = "SHA512WITHRSA",
/// Subject = new Aws.Acmpca.Inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs
/// {
/// CommonName = "example.com",
/// },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// UsageMode: pulumi.String("SHORT_LIVED_CERTIFICATE"),
/// CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// KeyAlgorithm:     pulumi.String("RSA_4096"),
/// SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// CommonName: pulumi.String("example.com"),
/// },
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
/// var example = new CertificateAuthority("example", CertificateAuthorityArgs.builder()
/// .usageMode("SHORT_LIVED_CERTIFICATE")
/// .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
/// .keyAlgorithm("RSA_4096")
/// .signingAlgorithm("SHA512WITHRSA")
/// .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
/// .commonName("example.com")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:acmpca:CertificateAuthority
/// properties:
/// usageMode: SHORT_LIVED_CERTIFICATE
/// certificateAuthorityConfiguration:
/// keyAlgorithm: RSA_4096
/// signingAlgorithm: SHA512WITHRSA
/// subject:
/// commonName: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Enable Certificate Revocation List
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {
/// bucket: "example",
/// forceDestroy: true,
/// });
/// const acmpcaBucketAccess = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// actions: [
/// "s3:GetBucketAcl",
/// "s3:GetBucketLocation",
/// "s3:PutObject",
/// "s3:PutObjectAcl",
/// ],
/// resources: [
/// example.arn,
/// pulumi.interpolate`${example.arn}/*`,
/// ],
/// principals: [{
/// identifiers: ["acm-pca.amazonaws.com"],
/// type: "Service",
/// }],
/// }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
/// bucket: example.id,
/// policy: acmpcaBucketAccess.apply(acmpcaBucketAccess => acmpcaBucketAccess.json),
/// });
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {
/// certificateAuthorityConfiguration: {
/// keyAlgorithm: "RSA_4096",
/// signingAlgorithm: "SHA512WITHRSA",
/// subject: {
/// commonName: "example.com",
/// },
/// },
/// revocationConfiguration: {
/// crlConfiguration: {
/// customCname: "crl.example.com",
/// enabled: true,
/// expirationInDays: 7,
/// s3BucketName: example.id,
/// s3ObjectAcl: "BUCKET_OWNER_FULL_CONTROL",
/// },
/// },
/// }, {
/// dependsOn: [exampleBucketPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example",
/// bucket="example",
/// force_destroy=True)
/// acmpca_bucket_access = aws.iam.get_policy_document_output(statements=[{
/// "actions": [
/// "s3:GetBucketAcl",
/// "s3:GetBucketLocation",
/// "s3:PutObject",
/// "s3:PutObjectAcl",
/// ],
/// "resources": [
/// example.arn,
/// example.arn.apply(lambda arn: f"{arn}/*"),
/// ],
/// "principals": [{
/// "identifiers": ["acm-pca.amazonaws.com"],
/// "type": "Service",
/// }],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
/// bucket=example.id,
/// policy=acmpca_bucket_access.json)
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example",
/// certificate_authority_configuration={
/// "key_algorithm": "RSA_4096",
/// "signing_algorithm": "SHA512WITHRSA",
/// "subject": {
/// "common_name": "example.com",
/// },
/// },
/// revocation_configuration={
/// "crl_configuration": {
/// "custom_cname": "crl.example.com",
/// "enabled": True,
/// "expiration_in_days": 7,
/// "s3_bucket_name": example.id,
/// "s3_object_acl": "BUCKET_OWNER_FULL_CONTROL",
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_bucket_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example",
/// ForceDestroy = true,
/// });
///
/// var acmpcaBucketAccess = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "s3:GetBucketAcl",
/// "s3:GetBucketLocation",
/// "s3:PutObject",
/// "s3:PutObjectAcl",
/// },
/// Resources = new[]
/// {
/// example.Arn,
/// $"{example.Arn}/*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Identifiers = new[]
/// {
/// "acm-pca.amazonaws.com",
/// },
/// Type = "Service",
/// },
/// },
/// },
/// },
/// });
///
/// var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
/// {
/// Bucket = example.Id,
/// Policy = acmpcaBucketAccess.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
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
/// RevocationConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityRevocationConfigurationArgs
/// {
/// CrlConfiguration = new Aws.Acmpca.Inputs.CertificateAuthorityRevocationConfigurationCrlConfigurationArgs
/// {
/// CustomCname = "crl.example.com",
/// Enabled = true,
/// ExpirationInDays = 7,
/// S3BucketName = example.Id,
/// S3ObjectAcl = "BUCKET_OWNER_FULL_CONTROL",
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleBucketPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acmpca"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("example"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// acmpcaBucketAccess := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:GetBucketAcl"),
/// pulumi.String("s3:GetBucketLocation"),
/// pulumi.String("s3:PutObject"),
/// pulumi.String("s3:PutObjectAcl"),
/// },
/// Resources: pulumi.StringArray{
/// example.Arn,
/// example.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Identifiers: pulumi.StringArray{
/// pulumi.String("acm-pca.amazonaws.com"),
/// },
/// Type: pulumi.String("Service"),
/// },
/// },
/// },
/// },
/// }, nil)
/// exampleBucketPolicy, err := s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// Bucket: example.ID(),
/// Policy: pulumi.String(acmpcaBucketAccess.ApplyT(func(acmpcaBucketAccess iam.GetPolicyDocumentResult) (*string, error) {
/// return &acmpcaBucketAccess.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
/// CertificateAuthorityConfiguration: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationArgs{
/// KeyAlgorithm:     pulumi.String("RSA_4096"),
/// SigningAlgorithm: pulumi.String("SHA512WITHRSA"),
/// Subject: &acmpca.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs{
/// CommonName: pulumi.String("example.com"),
/// },
/// },
/// RevocationConfiguration: &acmpca.CertificateAuthorityRevocationConfigurationArgs{
/// CrlConfiguration: &acmpca.CertificateAuthorityRevocationConfigurationCrlConfigurationArgs{
/// CustomCname:      pulumi.String("crl.example.com"),
/// Enabled:          pulumi.Bool(true),
/// ExpirationInDays: pulumi.Int(7),
/// S3BucketName:     example.ID(),
/// S3ObjectAcl:      pulumi.String("BUCKET_OWNER_FULL_CONTROL"),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleBucketPolicy,
/// }))
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.acmpca.CertificateAuthority;
/// import com.pulumi.aws.acmpca.CertificateAuthorityArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityRevocationConfigurationArgs;
/// import com.pulumi.aws.acmpca.inputs.CertificateAuthorityRevocationConfigurationCrlConfigurationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("example")
/// .forceDestroy(true)
/// .build());
///
/// final var acmpcaBucketAccess = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions(
/// "s3:GetBucketAcl",
/// "s3:GetBucketLocation",
/// "s3:PutObject",
/// "s3:PutObjectAcl")
/// .resources(
/// example.arn(),
/// example.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .identifiers("acm-pca.amazonaws.com")
/// .type("Service")
/// .build())
/// .build())
/// .build());
///
/// var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(example.id())
/// .policy(acmpcaBucketAccess.applyValue(_acmpcaBucketAccess -> _acmpcaBucketAccess.json()))
/// .build());
///
/// var exampleCertificateAuthority = new CertificateAuthority("exampleCertificateAuthority", CertificateAuthorityArgs.builder()
/// .certificateAuthorityConfiguration(CertificateAuthorityCertificateAuthorityConfigurationArgs.builder()
/// .keyAlgorithm("RSA_4096")
/// .signingAlgorithm("SHA512WITHRSA")
/// .subject(CertificateAuthorityCertificateAuthorityConfigurationSubjectArgs.builder()
/// .commonName("example.com")
/// .build())
/// .build())
/// .revocationConfiguration(CertificateAuthorityRevocationConfigurationArgs.builder()
/// .crlConfiguration(CertificateAuthorityRevocationConfigurationCrlConfigurationArgs.builder()
/// .customCname("crl.example.com")
/// .enabled(true)
/// .expirationInDays(7)
/// .s3BucketName(example.id())
/// .s3ObjectAcl("BUCKET_OWNER_FULL_CONTROL")
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleBucketPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example
/// forceDestroy: true
/// exampleBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: example
/// properties:
/// bucket: ${example.id}
/// policy: ${acmpcaBucketAccess.json}
/// exampleCertificateAuthority:
/// type: aws:acmpca:CertificateAuthority
/// name: example
/// properties:
/// certificateAuthorityConfiguration:
/// keyAlgorithm: RSA_4096
/// signingAlgorithm: SHA512WITHRSA
/// subject:
/// commonName: example.com
/// revocationConfiguration:
/// crlConfiguration:
/// customCname: crl.example.com
/// enabled: true
/// expirationInDays: 7
/// s3BucketName: ${example.id}
/// s3ObjectAcl: BUCKET_OWNER_FULL_CONTROL
/// options:
/// dependsOn:
/// - ${exampleBucketPolicy}
/// variables:
/// acmpcaBucketAccess:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - s3:GetBucketAcl
/// - s3:GetBucketLocation
/// - s3:PutObject
/// - s3:PutObjectAcl
/// resources:
/// - ${example.arn}
/// - ${example.arn}/*
/// principals:
/// - identifiers:
/// - acm-pca.amazonaws.com
/// type: Service
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the ACM PCA certificate authority.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.acmpca.CertificateAuthority`" pulumi-lang-dotnet="`aws.acmpca.CertificateAuthority`" pulumi-lang-go="`acmpca.CertificateAuthority`" pulumi-lang-python="`acmpca.CertificateAuthority`" pulumi-lang-yaml="`aws.acmpca.CertificateAuthority`" pulumi-lang-java="`aws.acmpca.CertificateAuthority`">`aws.acmpca.CertificateAuthority`</span> using the certificate authority ARN. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/certificateAuthority:CertificateAuthority example arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012
/// ```
class CertificateAuthority extends CustomResource {
  /// ARN of the certificate authority.
  late final Output<String> arn;

  /// Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  late final Output<String> certificate;

  /// Nested argument containing algorithms and certificate subject information. Defined below.
  late final Output<CertificateAuthorityCertificateAuthorityConfiguration>
      certificateAuthorityConfiguration;

  /// Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  late final Output<String> certificateChain;

  /// The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  late final Output<String> certificateSigningRequest;

  /// Whether the certificate authority is enabled or disabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Can only be disabled if the CA is in an `ACTIVE` state.
  late final Output<bool?> enabled;

  /// Cryptographic key management compliance standard used for handling CA keys. Defaults to `FIPS_140_2_LEVEL_3_OR_HIGHER`. Valid values: `FIPS_140_2_LEVEL_3_OR_HIGHER` and `FIPS_140_2_LEVEL_2_OR_HIGHER`. Supported standard for each region can be found in the [Storage and security compliance of AWS Private CA private keys Documentation](https://docs.aws.amazon.com/privateca/latest/userguide/data-protection.html#private-keys).
  late final Output<String> keyStorageSecurityStandard;

  /// Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  late final Output<String> notAfter;

  /// Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  late final Output<String> notBefore;

  /// Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.
  late final Output<int?> permanentDeletionTimeInDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Nested argument containing revocation configuration. Defined below.
  late final Output<CertificateAuthorityRevocationConfiguration?>
      revocationConfiguration;

  /// Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  late final Output<String> serial;

  /// Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of the certificate authority. Defaults to `SUBORDINATE`. Valid values: `ROOT` and `SUBORDINATE`.
  late final Output<String?> type;

  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to `GENERAL_PURPOSE`. Valid values: `GENERAL_PURPOSE` and `SHORT_LIVED_CERTIFICATE`.
  late final Output<String> usageMode;

  CertificateAuthority(
    String name, {
    CertificateAuthorityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/certificateAuthority:CertificateAuthority',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.certificate = Output.createUnknown<String>();
    this.certificateAuthorityConfiguration = Output.createUnknown<
        CertificateAuthorityCertificateAuthorityConfiguration>();
    this.certificateChain = Output.createUnknown<String>();
    this.certificateSigningRequest = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool?>();
    this.keyStorageSecurityStandard = Output.createUnknown<String>();
    this.notAfter = Output.createUnknown<String>();
    this.notBefore = Output.createUnknown<String>();
    this.permanentDeletionTimeInDays = Output.createUnknown<int?>();
    this.region = Output.createUnknown<String>();
    this.revocationConfiguration =
        Output.createUnknown<CertificateAuthorityRevocationConfiguration?>();
    this.serial = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String?>();
    this.usageMode = Output.createUnknown<String>();
  }
}
