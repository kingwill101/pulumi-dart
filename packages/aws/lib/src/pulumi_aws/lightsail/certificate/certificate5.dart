import 'package:pulumi/pulumi.dart';
import '../certificate_domain_validation_option/certificate_domain_validation_option2.dart';
import 'certificate_args5.dart';

/// Manages a Lightsail certificate. Use this resource to create and manage SSL/TLS certificates for securing custom domains with your Lightsail resources.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Certificate("example", {
/// name: "example-certificate",
/// domainName: "example.com",
/// subjectAlternativeNames: ["www.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Certificate("example",
/// name="example-certificate",
/// domain_name="example.com",
/// subject_alternative_names=["www.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Certificate("example", new()
/// {
/// Name = "example-certificate",
/// DomainName = "example.com",
/// SubjectAlternativeNames = new[]
/// {
/// "www.example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewCertificate(ctx, "example", &lightsail.CertificateArgs{
/// Name:       pulumi.String("example-certificate"),
/// DomainName: pulumi.String("example.com"),
/// SubjectAlternativeNames: pulumi.StringArray{
/// pulumi.String("www.example.com"),
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
/// import com.pulumi.aws.lightsail.Certificate;
/// import com.pulumi.aws.lightsail.CertificateArgs;
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
/// .name("example-certificate")
/// .domainName("example.com")
/// .subjectAlternativeNames("www.example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Certificate
/// properties:
/// name: example-certificate
/// domainName: example.com
/// subjectAlternativeNames:
/// - www.example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.Certificate`" pulumi-lang-dotnet="`aws.lightsail.Certificate`" pulumi-lang-go="`lightsail.Certificate`" pulumi-lang-python="`lightsail.Certificate`" pulumi-lang-yaml="`aws.lightsail.Certificate`" pulumi-lang-java="`aws.lightsail.Certificate`">`aws.lightsail.Certificate`</span> using the certificate name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/certificate:Certificate example example-certificate
/// ```
class Certificate5 extends CustomResource {
  /// ARN of the certificate.
  late final Output<String> arn;

  /// Date and time when the certificate was created.
  late final Output<String> createdAt;

  /// Domain name for which the certificate should be issued.
  late final Output<String> domainName;

  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  late final Output<List<CertificateDomainValidationOption2>>
      domainValidationOptions;

  /// Name of the certificate.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of domains that should be SANs in the issued certificate. <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> attribute is automatically added as a Subject Alternative Name.
  late final Output<List<String>> subjectAlternativeNames;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Certificate5(
    String name, {
    CertificateArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/certificate:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.domainValidationOptions =
        Output.createUnknown<List<CertificateDomainValidationOption2>>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subjectAlternativeNames = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
