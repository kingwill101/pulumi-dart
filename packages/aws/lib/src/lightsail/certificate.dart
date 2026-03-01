import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_domain_validation_option.dart';

/// Manages a Lightsail certificate. Use this resource to create and manage SSL/TLS certificates for securing custom domains with your Lightsail resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Certificate("example", {
///     name: "example-certificate",
///     domainName: "example.com",
///     subjectAlternativeNames: ["www.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Certificate("example",
///     name="example-certificate",
///     domain_name="example.com",
///     subject_alternative_names=["www.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.Certificate("example", new()
///     {
///         Name = "example-certificate",
///         DomainName = "example.com",
///         SubjectAlternativeNames = new[]
///         {
///             "www.example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lightsail.NewCertificate(ctx, "example", &lightsail.CertificateArgs{
/// 			Name:       pulumi.String("example-certificate"),
/// 			DomainName: pulumi.String("example.com"),
/// 			SubjectAlternativeNames: pulumi.StringArray{
/// 				pulumi.String("www.example.com"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Certificate("example", CertificateArgs.builder()
///             .name("example-certificate")
///             .domainName("example.com")
///             .subjectAlternativeNames("www.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Certificate
///     properties:
///       name: example-certificate
///       domainName: example.com
///       subjectAlternativeNames:
///         - www.example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Certificate` using the certificate name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/certificate:Certificate example example-certificate
/// ```
class Certificate extends pulumi.CustomResource {
  /// ARN of the certificate.
  late final pulumi.Output<String> arn;

  /// Date and time when the certificate was created.
  late final pulumi.Output<String> createdAt;

  /// Domain name for which the certificate should be issued.
  late final pulumi.Output<String> domainName;

  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  late final pulumi.Output<List<CertificateDomainValidationOption>>
  domainValidationOptions;

  /// Name of the certificate.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  late final pulumi.Output<List<String>> subjectAlternativeNames;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_lightsail_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lightsail/certificate:Certificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.domainName = registerOutput<String>('domainName');
    this.domainValidationOptions =
        registerOutput<List<CertificateDomainValidationOption>>(
          'domainValidationOptions',
        );
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subjectAlternativeNames = registerOutput<List<String>>(
      'subjectAlternativeNames',
    );
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
