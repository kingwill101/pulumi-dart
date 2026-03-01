import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_args.dart';

/// Provides an AppSync Domain Name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.DomainName("example", {
///     domainName: "api.example.com",
///     certificateArn: exampleAwsAcmCertificate.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.DomainName("example",
///     domain_name="api.example.com",
///     certificate_arn=example_aws_acm_certificate["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.DomainName("example", new()
///     {
///         Name = "api.example.com",
///         CertificateArn = exampleAwsAcmCertificate.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewDomainName(ctx, "example", &appsync.DomainNameArgs{
/// 			DomainName:     pulumi.String("api.example.com"),
/// 			CertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
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
/// import com.pulumi.aws.appsync.DomainName;
/// import com.pulumi.aws.appsync.DomainNameArgs;
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
///         var example = new DomainName("example", DomainNameArgs.builder()
///             .domainName("api.example.com")
///             .certificateArn(exampleAwsAcmCertificate.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:DomainName
///     properties:
///       domainName: api.example.com
///       certificateArn: ${exampleAwsAcmCertificate.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.DomainName` using the AppSync domain name. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/domainName:DomainName example example.com
/// ```
class DomainName extends pulumi.CustomResource {
  /// Domain name that AppSync provides.
  late final pulumi.Output<String> appsyncDomainName;

  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  late final pulumi.Output<String> certificateArn;

  /// A description of the Domain Name.
  late final pulumi.Output<String?> description;

  /// Domain name.
  late final pulumi.Output<String> domainName;

  /// ID of your Amazon Route 53 hosted zone.
  late final pulumi.Output<String> hostedZoneId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DomainName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainName]. {@macro pulumi_appsync_domain_name_domain_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainName(
    String name, {
    DomainNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appsync/domainName:DomainName',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.appsyncDomainName = registerOutput<String>('appsyncDomainName');
    this.certificateArn = registerOutput<String>('certificateArn');
    this.description = registerOutput<String?>('description');
    this.domainName = registerOutput<String>('domainName');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.region = registerOutput<String>('region');
  }
}
