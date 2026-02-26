import 'package:pulumi/pulumi.dart';
import 'certificate_args4.dart';

/// Creates and manages an AWS IoT certificate.
///
/// ## Example Usage
///
/// ### With CSR
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const cert = new aws.iot.Certificate("cert", {
/// csr: std.file({
/// input: "/my/csr.pem",
/// }).then(invoke => invoke.result),
/// active: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// cert = aws.iot.Certificate("cert",
/// csr=std.file(input="/my/csr.pem").result,
/// active=True)
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
/// var cert = new Aws.Iot.Certificate("cert", new()
/// {
/// Csr = Std.File.Invoke(new()
/// {
/// Input = "/my/csr.pem",
/// }).Apply(invoke => invoke.Result),
/// Active = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "/my/csr.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iot.NewCertificate(ctx, "cert", &iot.CertificateArgs{
/// Csr:    pulumi.String(invokeFile.Result),
/// Active: pulumi.Bool(true),
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
/// import com.pulumi.aws.iot.Certificate;
/// import com.pulumi.aws.iot.CertificateArgs;
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
/// var cert = new Certificate("cert", CertificateArgs.builder()
/// .csr(StdFunctions.file(FileArgs.builder()
/// .input("/my/csr.pem")
/// .build()).result())
/// .active(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cert:
/// type: aws:iot:Certificate
/// properties:
/// csr:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: /my/csr.pem
/// return: result
/// active: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Without CSR
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const cert = new aws.iot.Certificate("cert", {active: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cert = aws.iot.Certificate("cert", active=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cert = new Aws.Iot.Certificate("cert", new()
/// {
/// Active = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iot.NewCertificate(ctx, "cert", &iot.CertificateArgs{
/// Active: pulumi.Bool(true),
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
/// import com.pulumi.aws.iot.Certificate;
/// import com.pulumi.aws.iot.CertificateArgs;
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
/// var cert = new Certificate("cert", CertificateArgs.builder()
/// .active(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cert:
/// type: aws:iot:Certificate
/// properties:
/// active: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### From existing certificate without a CA
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const cert = new aws.iot.Certificate("cert", {
/// certificatePem: std.file({
/// input: "/my/cert.pem",
/// }).then(invoke => invoke.result),
/// active: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// cert = aws.iot.Certificate("cert",
/// certificate_pem=std.file(input="/my/cert.pem").result,
/// active=True)
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
/// var cert = new Aws.Iot.Certificate("cert", new()
/// {
/// CertificatePem = Std.File.Invoke(new()
/// {
/// Input = "/my/cert.pem",
/// }).Apply(invoke => invoke.Result),
/// Active = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "/my/cert.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iot.NewCertificate(ctx, "cert", &iot.CertificateArgs{
/// CertificatePem: pulumi.String(invokeFile.Result),
/// Active:         pulumi.Bool(true),
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
/// import com.pulumi.aws.iot.Certificate;
/// import com.pulumi.aws.iot.CertificateArgs;
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
/// var cert = new Certificate("cert", CertificateArgs.builder()
/// .certificatePem(StdFunctions.file(FileArgs.builder()
/// .input("/my/cert.pem")
/// .build()).result())
/// .active(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cert:
/// type: aws:iot:Certificate
/// properties:
/// certificatePem:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: /my/cert.pem
/// return: result
/// active: true
/// ```
/// <!--End PulumiCodeChooser -->
class Certificate4 extends CustomResource {
  /// Boolean flag to indicate if the certificate should be active
  late final Output<bool> active;

  /// The ARN of the created certificate.
  late final Output<String> arn;

  /// The certificate ID of the CA certificate used to sign the certificate.
  late final Output<String> caCertificateId;

  /// The CA certificate for the certificate to be registered. If this is set, the CA needs to be registered with AWS IoT beforehand.
  late final Output<String?> caPem;

  /// The certificate to be registered. If <span pulumi-lang-nodejs="`caPem`" pulumi-lang-dotnet="`CaPem`" pulumi-lang-go="`caPem`" pulumi-lang-python="`ca_pem`" pulumi-lang-yaml="`caPem`" pulumi-lang-java="`caPem`">`ca_pem`</span> is unspecified, review
  /// [RegisterCertificateWithoutCA](https://docs.aws.amazon.com/iot/latest/apireference/API_RegisterCertificateWithoutCA.html).
  /// If <span pulumi-lang-nodejs="`caPem`" pulumi-lang-dotnet="`CaPem`" pulumi-lang-go="`caPem`" pulumi-lang-python="`ca_pem`" pulumi-lang-yaml="`caPem`" pulumi-lang-java="`caPem`">`ca_pem`</span> is specified, review
  /// [RegisterCertificate](https://docs.aws.amazon.com/iot/latest/apireference/API_RegisterCertificate.html)
  /// for more information on registering a certificate.
  late final Output<String> certificatePem;

  /// The certificate signing request. Review
  /// [CreateCertificateFromCsr](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateCertificateFromCsr.html)
  /// for more information on generating a certificate from a certificate signing request (CSR).
  /// If none is specified both the certificate and keys will be generated, review [CreateKeysAndCertificate](https://docs.aws.amazon.com/iot/latest/apireference/API_CreateKeysAndCertificate.html)
  /// for more information on generating keys and a certificate.
  late final Output<String?> csr;

  /// When neither CSR nor certificate is provided, the private key.
  late final Output<String> privateKey;

  /// When neither CSR nor certificate is provided, the public key.
  late final Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Certificate4(
    String name, {
    CertificateArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool>('active');
    this.arn = registerOutput<String>('arn');
    this.caCertificateId = registerOutput<String>('caCertificateId');
    this.caPem = registerOutput<String?>('caPem');
    this.certificatePem = registerOutput<String>('certificatePem');
    this.csr = registerOutput<String?>('csr');
    this.privateKey = registerOutput<String>('privateKey');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
  }
}
