import 'package:pulumi/pulumi.dart';
import 'signing_certificate_args.dart';

/// Provides an IAM Signing Certificate resource to upload Signing Certificates.
///
/// > **Note:** All arguments including the certificate body will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// **Using certs on file:**
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const testCert = new aws.iam.SigningCertificate("test_cert", {
/// username: "some_test_cert",
/// certificateBody: std.file({
/// input: "self-ca-cert.pem",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test_cert = aws.iam.SigningCertificate("test_cert",
/// username="some_test_cert",
/// certificate_body=std.file(input="self-ca-cert.pem").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testCert = new Aws.Iam.SigningCertificate("test_cert", new()
/// {
/// Username = "some_test_cert",
/// CertificateBody = Std.File.Invoke(new()
/// {
/// Input = "self-ca-cert.pem",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "self-ca-cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewSigningCertificate(ctx, "test_cert", &iam.SigningCertificateArgs{
/// Username:        pulumi.String("some_test_cert"),
/// CertificateBody: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.aws.iam.SigningCertificate;
/// import com.pulumi.aws.iam.SigningCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var testCert = new SigningCertificate("testCert", SigningCertificateArgs.builder()
/// .username("some_test_cert")
/// .certificateBody(StdFunctions.file(FileArgs.builder()
/// .input("self-ca-cert.pem")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCert:
/// type: aws:iam:SigningCertificate
/// name: test_cert
/// properties:
/// username: some_test_cert
/// certificateBody:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: self-ca-cert.pem
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// **Example with cert in-line:**
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCertAlt = new aws.iam.SigningCertificate("test_cert_alt", {
/// username: "some_test_cert",
/// certificateBody: `-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cert_alt = aws.iam.SigningCertificate("test_cert_alt",
/// username="some_test_cert",
/// certificate_body="""-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testCertAlt = new Aws.Iam.SigningCertificate("test_cert_alt", new()
/// {
/// Username = "some_test_cert",
/// CertificateBody = @"-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewSigningCertificate(ctx, "test_cert_alt", &iam.SigningCertificateArgs{
/// Username:        pulumi.String("some_test_cert"),
/// CertificateBody: pulumi.String("-----BEGIN CERTIFICATE-----\n[......] # cert contents\n-----END CERTIFICATE-----\n"),
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
/// import com.pulumi.aws.iam.SigningCertificate;
/// import com.pulumi.aws.iam.SigningCertificateArgs;
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
/// var testCertAlt = new SigningCertificate("testCertAlt", SigningCertificateArgs.builder()
/// .username("some_test_cert")
/// .certificateBody("""
/// -----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCertAlt:
/// type: aws:iam:SigningCertificate
/// name: test_cert_alt
/// properties:
/// username: some_test_cert
/// certificateBody: |
/// -----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Signing Certificates using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/signingCertificate:SigningCertificate certificate IDIDIDIDID:user-name
/// ```
class SigningCertificate extends CustomResource {
  /// The contents of the signing certificate in PEM-encoded format.
  late final Output<String> certificateBody;

  /// The ID for the signing certificate.
  late final Output<String> certificateId;

  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  late final Output<String?> status;

  /// The name of the user the signing certificate is for.
  late final Output<String> userName;

  SigningCertificate(
    String name, {
    SigningCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/signingCertificate:SigningCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateBody = Output.createUnknown<String>();
    this.certificateId = Output.createUnknown<String>();
    this.status = Output.createUnknown<String?>();
    this.userName = Output.createUnknown<String>();
  }
}
