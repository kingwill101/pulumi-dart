import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_certificate_args.dart';
import 'signing_certificate_state.dart';

/// Provides an IAM Signing Certificate resource to upload Signing Certificates.
///
/// &gt; **Note:** All arguments including the certificate body will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// **Using certs on file:**
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const testCert = new aws.iam.SigningCertificate("test_cert", {
///     username: "some_test_cert",
///     certificateBody: std.file({
///         input: "self-ca-cert.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test_cert = aws.iam.SigningCertificate("test_cert",
///     username="some_test_cert",
///     certificate_body=std.file(input="self-ca-cert.pem").result)
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
///     var testCert = new Aws.Iam.SigningCertificate("test_cert", new()
///     {
///         Username = "some_test_cert",
///         CertificateBody = Std.File.Invoke(new()
///         {
///             Input = "self-ca-cert.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "self-ca-cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewSigningCertificate(ctx, "test_cert", &iam.SigningCertificateArgs{
/// 			Username:        pulumi.String("some_test_cert"),
/// 			CertificateBody: pulumi.String(invokeFile.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_iam_signingcertificate" "test_cert" {
///   username         = "some_test_cert"
///   certificate_body = file("self-ca-cert.pem")
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
///         var testCert = new SigningCertificate("testCert", SigningCertificateArgs.builder()
///             .username("some_test_cert")
///             .certificateBody(StdFunctions.file(FileArgs.builder()
///                 .input("self-ca-cert.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCert:
///     type: aws:iam:SigningCertificate
///     name: test_cert
///     properties:
///       username: some_test_cert
///       certificateBody:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: self-ca-cert.pem
///           return: result
/// ```
///
///
/// **Example with cert in-line:**
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCertAlt = new aws.iam.SigningCertificate("test_cert_alt", {
///     username: "some_test_cert",
///     certificateBody: `-----BEGIN CERTIFICATE-----
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
///     username="some_test_cert",
///     certificate_body="""-----BEGIN CERTIFICATE-----
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
///     var testCertAlt = new Aws.Iam.SigningCertificate("test_cert_alt", new()
///     {
///         Username = "some_test_cert",
///         CertificateBody = @"-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewSigningCertificate(ctx, "test_cert_alt", &iam.SigningCertificateArgs{
/// 			Username:        pulumi.String("some_test_cert"),
/// 			CertificateBody: pulumi.String("-----BEGIN CERTIFICATE-----\n[......] # cert contents\n-----END CERTIFICATE-----\n"),
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
/// resource "aws_iam_signingcertificate" "test_cert_alt" {
///   username         = "some_test_cert"
///   certificate_body = "-----BEGIN CERTIFICATE-----\n[......] # cert contents\n-----END CERTIFICATE-----\n"
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
///         var testCertAlt = new SigningCertificate("testCertAlt", SigningCertificateArgs.builder()
///             .username("some_test_cert")
///             .certificateBody("""
/// -----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCertAlt:
///     type: aws:iam:SigningCertificate
///     name: test_cert_alt
///     properties:
///       username: some_test_cert
///       certificateBody: |
///         -----BEGIN CERTIFICATE-----
///         [......] # cert contents
///         -----END CERTIFICATE-----
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Signing Certificates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/signingCertificate:SigningCertificate certificate IDIDIDIDID:user-name
/// ```
class SigningCertificate extends pulumi.CustomResource {
  /// The contents of the signing certificate in PEM-encoded format.
  late final pulumi.Output<String> certificateBody;
  /// The ID for the signing certificate.
  late final pulumi.Output<String> certificateId;
  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  late final pulumi.Output<String?> status;
  /// The name of the user the signing certificate is for.
  late final pulumi.Output<String> userName;

  /// Creates a new [SigningCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SigningCertificate]. {@macro pulumi_iam_signing_certificate_signing_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SigningCertificate(
    String name, {
    SigningCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/signingCertificate:SigningCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBody = registerOutput<String>('certificateBody');
    certificateId = registerOutput<String>('certificateId');
    status = registerOutput<String?>('status');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [SigningCertificate] resource's state with the given [name] and [id].
  static SigningCertificate get(
    String name,
    pulumi.Input<String> id, {
    SigningCertificateState? state,
  }) {
    return SigningCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SigningCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/signingCertificate:SigningCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateBody = registerOutput<String>('certificateBody');
    certificateId = registerOutput<String>('certificateId');
    status = registerOutput<String?>('status');
    userName = registerOutput<String>('userName');
  }
}
