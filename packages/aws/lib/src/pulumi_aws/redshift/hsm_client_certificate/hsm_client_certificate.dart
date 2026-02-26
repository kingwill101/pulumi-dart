import 'package:pulumi/pulumi.dart';
import 'hsm_client_certificate_args.dart';

/// Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.HsmClientCertificate("example", {hsmClientCertificateIdentifier: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.HsmClientCertificate("example", hsm_client_certificate_identifier="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.HsmClientCertificate("example", new()
/// {
/// HsmClientCertificateIdentifier = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewHsmClientCertificate(ctx, "example", &redshift.HsmClientCertificateArgs{
/// HsmClientCertificateIdentifier: pulumi.String("example"),
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
/// import com.pulumi.aws.redshift.HsmClientCertificate;
/// import com.pulumi.aws.redshift.HsmClientCertificateArgs;
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
/// var example = new HsmClientCertificate("example", HsmClientCertificateArgs.builder()
/// .hsmClientCertificateIdentifier("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:HsmClientCertificate
/// properties:
/// hsmClientCertificateIdentifier: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift HSM Client Certificates using <span pulumi-lang-nodejs="`hsmClientCertificateIdentifier`" pulumi-lang-dotnet="`HsmClientCertificateIdentifier`" pulumi-lang-go="`hsmClientCertificateIdentifier`" pulumi-lang-python="`hsm_client_certificate_identifier`" pulumi-lang-yaml="`hsmClientCertificateIdentifier`" pulumi-lang-java="`hsmClientCertificateIdentifier`">`hsm_client_certificate_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/hsmClientCertificate:HsmClientCertificate test example
/// ```
class HsmClientCertificate extends CustomResource {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  late final Output<String> arn;

  /// The identifier of the HSM client certificate.
  late final Output<String> hsmClientCertificateIdentifier;

  /// The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.
  late final Output<String> hsmClientCertificatePublicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  HsmClientCertificate(
    String name, {
    HsmClientCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmClientCertificate:HsmClientCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.hsmClientCertificateIdentifier = Output.createUnknown<String>();
    this.hsmClientCertificatePublicKey = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
