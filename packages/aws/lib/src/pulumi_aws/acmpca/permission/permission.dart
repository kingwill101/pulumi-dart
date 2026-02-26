import 'package:pulumi/pulumi.dart';
import 'permission_args.dart';

/// Provides a resource to manage an AWS Certificate Manager Private Certificate Authorities Permission.
/// Currently, this is only required in order to allow the ACM service to automatically renew certificates issued by a PCA.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCertificateAuthority = new aws.acmpca.CertificateAuthority("example", {certificateAuthorityConfiguration: {
/// keyAlgorithm: "RSA_4096",
/// signingAlgorithm: "SHA512WITHRSA",
/// subject: {
/// commonName: "example.com",
/// },
/// }});
/// const example = new aws.acmpca.Permission("example", {
/// certificateAuthorityArn: exampleCertificateAuthority.arn,
/// actions: [
/// "IssueCertificate",
/// "GetCertificate",
/// "ListPermissions",
/// ],
/// principal: "acm.amazonaws.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_certificate_authority = aws.acmpca.CertificateAuthority("example", certificate_authority_configuration={
/// "key_algorithm": "RSA_4096",
/// "signing_algorithm": "SHA512WITHRSA",
/// "subject": {
/// "common_name": "example.com",
/// },
/// })
/// example = aws.acmpca.Permission("example",
/// certificate_authority_arn=example_certificate_authority.arn,
/// actions=[
/// "IssueCertificate",
/// "GetCertificate",
/// "ListPermissions",
/// ],
/// principal="acm.amazonaws.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
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
/// });
///
/// var example = new Aws.Acmpca.Permission("example", new()
/// {
/// CertificateAuthorityArn = exampleCertificateAuthority.Arn,
/// Actions = new[]
/// {
/// "IssueCertificate",
/// "GetCertificate",
/// "ListPermissions",
/// },
/// Principal = "acm.amazonaws.com",
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
/// exampleCertificateAuthority, err := acmpca.NewCertificateAuthority(ctx, "example", &acmpca.CertificateAuthorityArgs{
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
/// _, err = acmpca.NewPermission(ctx, "example", &acmpca.PermissionArgs{
/// CertificateAuthorityArn: exampleCertificateAuthority.Arn,
/// Actions: pulumi.StringArray{
/// pulumi.String("IssueCertificate"),
/// pulumi.String("GetCertificate"),
/// pulumi.String("ListPermissions"),
/// },
/// Principal: pulumi.String("acm.amazonaws.com"),
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
/// import com.pulumi.aws.acmpca.Permission;
/// import com.pulumi.aws.acmpca.PermissionArgs;
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
/// .build());
///
/// var example = new Permission("example", PermissionArgs.builder()
/// .certificateAuthorityArn(exampleCertificateAuthority.arn())
/// .actions(
/// "IssueCertificate",
/// "GetCertificate",
/// "ListPermissions")
/// .principal("acm.amazonaws.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:acmpca:Permission
/// properties:
/// certificateAuthorityArn: ${exampleCertificateAuthority.arn}
/// actions:
/// - IssueCertificate
/// - GetCertificate
/// - ListPermissions
/// principal: acm.amazonaws.com
/// exampleCertificateAuthority:
/// type: aws:acmpca:CertificateAuthority
/// name: example
/// properties:
/// certificateAuthorityConfiguration:
/// keyAlgorithm: RSA_4096
/// signingAlgorithm: SHA512WITHRSA
/// subject:
/// commonName: example.com
/// ```
/// <!--End PulumiCodeChooser -->
class Permission extends CustomResource {
  /// Actions that the specified AWS service principal can use. These include `IssueCertificate`, `GetCertificate`, and `ListPermissions`. Note that in order for ACM to automatically rotate certificates issued by a PCA, it must be granted permission on all 3 actions, as per the example above.
  late final Output<List<String>> actions;

  /// ARN of the CA that grants the permissions.
  late final Output<String> certificateAuthorityArn;

  /// IAM policy that is associated with the permission.
  late final Output<String> policy;

  /// AWS service or identity that receives the permission. At this time, the only valid principal is `acm.amazonaws.com`.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the calling account
  late final Output<String> sourceAccount;

  Permission(
    String name, {
    PermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/permission:Permission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions = Output.createUnknown<List<String>>();
    this.certificateAuthorityArn = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.principal = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.sourceAccount = Output.createUnknown<String>();
  }
}
