import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_certificate_args.dart';

/// Provides an IAM Server Certificate resource to upload Server Certificates.
/// Certs uploaded to IAM can easily work with other AWS services such as:
///
/// - AWS Elastic Beanstalk
/// - Elastic Load Balancing
/// - CloudFront
/// - AWS OpsWorks
///
/// For information about server certificates in IAM, see [Managing Server
/// Certificates][2] in AWS Documentation.
///
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
/// const testCert = new aws.iam.ServerCertificate("test_cert", {
///     name: "some_test_cert",
///     certificateBody: std.file({
///         input: "self-ca-cert.pem",
///     }).then(invoke => invoke.result),
///     privateKey: std.file({
///         input: "test-key.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// test_cert = aws.iam.ServerCertificate("test_cert",
///     name="some_test_cert",
///     certificate_body=std.file(input="self-ca-cert.pem").result,
///     private_key=std.file(input="test-key.pem").result)
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
///     var testCert = new Aws.Iam.ServerCertificate("test_cert", new()
///     {
///         Name = "some_test_cert",
///         CertificateBody = Std.File.Invoke(new()
///         {
///             Input = "self-ca-cert.pem",
///         }).Apply(invoke => invoke.Result),
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "test-key.pem",
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
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewServerCertificate(ctx, "test_cert", &iam.ServerCertificateArgs{
/// 			Name:            pulumi.String("some_test_cert"),
/// 			CertificateBody: pulumi.String(invokeFile.Result),
/// 			PrivateKey:      pulumi.String(invokeFile1.Result),
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
/// import com.pulumi.aws.iam.ServerCertificate;
/// import com.pulumi.aws.iam.ServerCertificateArgs;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var testCert = new ServerCertificate("testCert", ServerCertificateArgs.builder()
///             .name("some_test_cert")
///             .certificateBody(StdFunctions.file(FileArgs.builder()
///                 .input("self-ca-cert.pem")
///                 .build()).result())
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("test-key.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCert:
///     type: aws:iam:ServerCertificate
///     name: test_cert
///     properties:
///       name: some_test_cert
///       certificateBody:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: self-ca-cert.pem
///           return: result
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: test-key.pem
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
/// const testCertAlt = new aws.iam.ServerCertificate("test_cert_alt", {
///     name: "alt_test_cert",
///     certificateBody: `-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// `,
///     privateKey: `-----BEGIN RSA PRIVATE KEY-----
/// [......] # cert contents
/// -----END RSA PRIVATE KEY-----
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cert_alt = aws.iam.ServerCertificate("test_cert_alt",
///     name="alt_test_cert",
///     certificate_body="""-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// """,
///     private_key="""-----BEGIN RSA PRIVATE KEY-----
/// [......] # cert contents
/// -----END RSA PRIVATE KEY-----
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
///     var testCertAlt = new Aws.Iam.ServerCertificate("test_cert_alt", new()
///     {
///         Name = "alt_test_cert",
///         CertificateBody = @"-----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
/// ",
///         PrivateKey = @"-----BEGIN RSA PRIVATE KEY-----
/// [......] # cert contents
/// -----END RSA PRIVATE KEY-----
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
/// 		_, err := iam.NewServerCertificate(ctx, "test_cert_alt", &iam.ServerCertificateArgs{
/// 			Name:            pulumi.String("alt_test_cert"),
/// 			CertificateBody: pulumi.String("-----BEGIN CERTIFICATE-----\n[......] # cert contents\n-----END CERTIFICATE-----\n"),
/// 			PrivateKey:      pulumi.String("-----BEGIN RSA PRIVATE KEY-----\n[......] # cert contents\n-----END RSA PRIVATE KEY-----\n"),
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
/// import com.pulumi.aws.iam.ServerCertificate;
/// import com.pulumi.aws.iam.ServerCertificateArgs;
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
///         var testCertAlt = new ServerCertificate("testCertAlt", ServerCertificateArgs.builder()
///             .name("alt_test_cert")
///             .certificateBody("""
/// -----BEGIN CERTIFICATE-----
/// [......] # cert contents
/// -----END CERTIFICATE-----
///             """)
///             .privateKey("""
/// -----BEGIN RSA PRIVATE KEY-----
/// [......] # cert contents
/// -----END RSA PRIVATE KEY-----
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCertAlt:
///     type: aws:iam:ServerCertificate
///     name: test_cert_alt
///     properties:
///       name: alt_test_cert
///       certificateBody: |
///         -----BEGIN CERTIFICATE-----
///         [......] # cert contents
///         -----END CERTIFICATE-----
///       privateKey: |
///         -----BEGIN RSA PRIVATE KEY-----
///         [......] # cert contents
///         -----END RSA PRIVATE KEY-----
/// ```
///
///
/// **Use in combination with an AWS ELB resource:**
///
/// Some properties of an IAM Server Certificates cannot be updated while they are
/// in use. In order for the provider to effectively manage a Certificate in this situation, it is
/// recommended you utilize the `name_prefix` attribute and enable the
/// `create_before_destroy`. This will allow this provider
/// to create a new, updated `aws.iam.ServerCertificate` resource and replace it in
/// dependant resources before attempting to destroy the old version.
///
/// ## Import
///
/// Using `pulumi import`, import IAM Server Certificates using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/serverCertificate:ServerCertificate certificate example.com-certificate-until-2018
/// ```
///
/// [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
/// [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingServerCerts.html
class ServerCertificate extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the server certificate.
  late final pulumi.Output<String> arn;

  /// The contents of the public key certificate in
  /// PEM-encoded format.
  late final pulumi.Output<String> certificateBody;

  /// The contents of the certificate chain.
  /// This is typically a concatenation of the PEM-encoded public key certificates
  /// of the chain.
  late final pulumi.Output<String?> certificateChain;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) on which the certificate is set to expire.
  late final pulumi.Output<String> expiration;

  /// The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The IAM path for the server certificate.  If it is not
  /// included, it defaults to a slash (/). If this certificate is for use with
  /// AWS CloudFront, the path must be in format `/cloudfront/your_path_here`.
  /// See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more details on IAM Paths.
  late final pulumi.Output<String?> path;

  /// The contents of the private key in PEM-encoded format.
  late final pulumi.Output<String> privateKey;

  /// Map of resource tags for the server certificate. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in this provider forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that `certificate_body` contains only one certificate. All other certificates should go in `certificate_chain`. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the server certificate was uploaded.
  late final pulumi.Output<String> uploadDate;

  /// Creates a new [ServerCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerCertificate]. {@macro pulumi_iam_server_certificate_server_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerCertificate(
    String name, {
    ServerCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/serverCertificate:ServerCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.certificateBody = registerOutput<String>('certificateBody');
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.expiration = registerOutput<String>('expiration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.privateKey = registerOutput<String>('privateKey');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uploadDate = registerOutput<String>('uploadDate');
  }
}
