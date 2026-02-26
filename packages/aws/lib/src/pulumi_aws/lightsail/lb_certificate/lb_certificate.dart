import 'package:pulumi/pulumi.dart';
import '../lb_certificate_domain_validation_record/lb_certificate_domain_validation_record.dart';
import 'lb_certificate_args.dart';

/// Manages a Lightsail Load Balancer Certificate.
///
/// Use this resource to create and manage SSL/TLS certificates for Lightsail Load Balancers. The certificate must be validated before it can be attached to a load balancer to enable HTTPS traffic.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Lb("example", {
/// name: "example-load-balancer",
/// healthCheckPath: "/",
/// instancePort: 80,
/// tags: {
/// foo: "bar",
/// },
/// });
/// const exampleLbCertificate = new aws.lightsail.LbCertificate("example", {
/// name: "example-load-balancer-certificate",
/// lbName: example.id,
/// domainName: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Lb("example",
/// name="example-load-balancer",
/// health_check_path="/",
/// instance_port=80,
/// tags={
/// "foo": "bar",
/// })
/// example_lb_certificate = aws.lightsail.LbCertificate("example",
/// name="example-load-balancer-certificate",
/// lb_name=example.id,
/// domain_name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Lb("example", new()
/// {
/// Name = "example-load-balancer",
/// HealthCheckPath = "/",
/// InstancePort = 80,
/// Tags =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// var exampleLbCertificate = new Aws.LightSail.LbCertificate("example", new()
/// {
/// Name = "example-load-balancer-certificate",
/// LbName = example.Id,
/// DomainName = "example.com",
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
/// example, err := lightsail.NewLb(ctx, "example", &lightsail.LbArgs{
/// Name:            pulumi.String("example-load-balancer"),
/// HealthCheckPath: pulumi.String("/"),
/// InstancePort:    pulumi.Int(80),
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewLbCertificate(ctx, "example", &lightsail.LbCertificateArgs{
/// Name:       pulumi.String("example-load-balancer-certificate"),
/// LbName:     example.ID(),
/// DomainName: pulumi.String("example.com"),
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
/// import com.pulumi.aws.lightsail.Lb;
/// import com.pulumi.aws.lightsail.LbArgs;
/// import com.pulumi.aws.lightsail.LbCertificate;
/// import com.pulumi.aws.lightsail.LbCertificateArgs;
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
/// var example = new Lb("example", LbArgs.builder()
/// .name("example-load-balancer")
/// .healthCheckPath("/")
/// .instancePort(80)
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// var exampleLbCertificate = new LbCertificate("exampleLbCertificate", LbCertificateArgs.builder()
/// .name("example-load-balancer-certificate")
/// .lbName(example.id())
/// .domainName("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Lb
/// properties:
/// name: example-load-balancer
/// healthCheckPath: /
/// instancePort: '80'
/// tags:
/// foo: bar
/// exampleLbCertificate:
/// type: aws:lightsail:LbCertificate
/// name: example
/// properties:
/// name: example-load-balancer-certificate
/// lbName: ${example.id}
/// domainName: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.LbCertificate`" pulumi-lang-dotnet="`aws.lightsail.LbCertificate`" pulumi-lang-go="`lightsail.LbCertificate`" pulumi-lang-python="`lightsail.LbCertificate`" pulumi-lang-yaml="`aws.lightsail.LbCertificate`" pulumi-lang-java="`aws.lightsail.LbCertificate`">`aws.lightsail.LbCertificate`</span> using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbCertificate:LbCertificate example example-load-balancer,example-load-balancer-certificate
/// ```
class LbCertificate extends CustomResource {
  /// ARN of the lightsail certificate.
  late final Output<String> arn;

  /// Timestamp when the instance was created.
  late final Output<String> createdAt;

  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  late final Output<String> domainName;

  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined.
  late final Output<List<LbCertificateDomainValidationRecord>>
      domainValidationRecords;

  /// Load balancer name where you want to create the SSL/TLS certificate.
  late final Output<String> lbName;

  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of domains that should be SANs in the issued certificate. <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> attribute is automatically added as a Subject Alternative Name.
  late final Output<List<String>> subjectAlternativeNames;

  /// Support code for the certificate.
  late final Output<String> supportCode;

  LbCertificate(
    String name, {
    LbCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificate:LbCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.domainValidationRecords =
        Output.createUnknown<List<LbCertificateDomainValidationRecord>>();
    this.lbName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subjectAlternativeNames = Output.createUnknown<List<String>>();
    this.supportCode = Output.createUnknown<String>();
  }
}
