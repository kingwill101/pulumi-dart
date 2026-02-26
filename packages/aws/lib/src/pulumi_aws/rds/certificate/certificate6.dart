import 'package:pulumi/pulumi.dart';
import 'certificate_args6.dart';

/// Provides a resource to override the system-default Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate for Amazon RDS for new DB instances in the current AWS region.
///
/// > **NOTE:** Removing this Terraform resource removes the override. New DB instances will use the system-default certificate for the current AWS region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Certificate("example", {certificateIdentifier: "rds-ca-rsa4096-g1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Certificate("example", certificate_identifier="rds-ca-rsa4096-g1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.Certificate("example", new()
/// {
/// CertificateIdentifier = "rds-ca-rsa4096-g1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewCertificate(ctx, "example", &rds.CertificateArgs{
/// CertificateIdentifier: pulumi.String("rds-ca-rsa4096-g1"),
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
/// import com.pulumi.aws.rds.Certificate;
/// import com.pulumi.aws.rds.CertificateArgs;
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
/// var example = new Certificate("example", CertificateArgs.builder()
/// .certificateIdentifier("rds-ca-rsa4096-g1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:Certificate
/// properties:
/// certificateIdentifier: rds-ca-rsa4096-g1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the RDS certificate override using the <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/certificate:Certificate example us-west-2
/// ```
class Certificate6 extends CustomResource {
  /// Certificate identifier. For example, `rds-ca-rsa4096-g1`. Refer to [AWS RDS (Relational Database) Certificate Identifier](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html#UsingWithRDS.SSL.CertificateIdentifier) for more information.
  late final Output<String> certificateIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Certificate6(
    String name, {
    CertificateArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateIdentifier = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
