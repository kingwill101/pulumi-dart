import 'package:pulumi/pulumi.dart';
import 'certificate_args3.dart';

/// Provides a DMS (Data Migration Service) certificate resource. DMS certificates can be created, deleted, and imported.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new certificate
/// const test = new aws.dms.Certificate("test", {
/// certificateId: "test-dms-certificate-tf",
/// certificatePem: "...",
/// tags: {
/// Name: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new certificate
/// test = aws.dms.Certificate("test",
/// certificate_id="test-dms-certificate-tf",
/// certificate_pem="...",
/// tags={
/// "Name": "test",
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
/// // Create a new certificate
/// var test = new Aws.Dms.Certificate("test", new()
/// {
/// CertificateId = "test-dms-certificate-tf",
/// CertificatePem = "...",
/// Tags =
/// {
/// { "Name", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create a new certificate
/// _, err := dms.NewCertificate(ctx, "test", &dms.CertificateArgs{
/// CertificateId:  pulumi.String("test-dms-certificate-tf"),
/// CertificatePem: pulumi.String("..."),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
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
/// import com.pulumi.aws.dms.Certificate;
/// import com.pulumi.aws.dms.CertificateArgs;
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
/// // Create a new certificate
/// var test = new Certificate("test", CertificateArgs.builder()
/// .certificateId("test-dms-certificate-tf")
/// .certificatePem("...")
/// .tags(Map.of("Name", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a new certificate
/// test:
/// type: aws:dms:Certificate
/// properties:
/// certificateId: test-dms-certificate-tf
/// certificatePem: '...'
/// tags:
/// Name: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import certificates using the <span pulumi-lang-nodejs="`certificateId`" pulumi-lang-dotnet="`CertificateId`" pulumi-lang-go="`certificateId`" pulumi-lang-python="`certificate_id`" pulumi-lang-yaml="`certificateId`" pulumi-lang-java="`certificateId`">`certificate_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dms/certificate:Certificate test test-dms-certificate-tf
/// ```
class Certificate3 extends CustomResource {
  /// The Amazon Resource Name (ARN) for the certificate.
  late final Output<String> certificateArn;

  /// The certificate identifier.
  late final Output<String> certificateId;

  /// The contents of the .pem X.509 certificate file for the certificate. Either <span pulumi-lang-nodejs="`certificatePem`" pulumi-lang-dotnet="`CertificatePem`" pulumi-lang-go="`certificatePem`" pulumi-lang-python="`certificate_pem`" pulumi-lang-yaml="`certificatePem`" pulumi-lang-java="`certificatePem`">`certificate_pem`</span> or <span pulumi-lang-nodejs="`certificateWallet`" pulumi-lang-dotnet="`CertificateWallet`" pulumi-lang-go="`certificateWallet`" pulumi-lang-python="`certificate_wallet`" pulumi-lang-yaml="`certificateWallet`" pulumi-lang-java="`certificateWallet`">`certificate_wallet`</span> must be set.
  late final Output<String?> certificatePem;

  /// The contents of the Oracle Wallet certificate for use with SSL, provided as a base64-encoded String. Either <span pulumi-lang-nodejs="`certificatePem`" pulumi-lang-dotnet="`CertificatePem`" pulumi-lang-go="`certificatePem`" pulumi-lang-python="`certificate_pem`" pulumi-lang-yaml="`certificatePem`" pulumi-lang-java="`certificatePem`">`certificate_pem`</span> or <span pulumi-lang-nodejs="`certificateWallet`" pulumi-lang-dotnet="`CertificateWallet`" pulumi-lang-go="`certificateWallet`" pulumi-lang-python="`certificate_wallet`" pulumi-lang-yaml="`certificateWallet`" pulumi-lang-java="`certificateWallet`">`certificate_wallet`</span> must be set.
  late final Output<String?> certificateWallet;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Certificate3(
    String name, {
    CertificateArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateArn = registerOutput<String>('certificateArn');
    this.certificateId = registerOutput<String>('certificateId');
    this.certificatePem = registerOutput<String?>('certificatePem');
    this.certificateWallet = registerOutput<String?>('certificateWallet');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
