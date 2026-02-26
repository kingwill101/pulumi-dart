import 'package:pulumi/pulumi.dart';
import 'lb_certificate_attachment_args.dart';

/// Manages a Lightsail Load Balancer Certificate attachment to a Lightsail Load Balancer.
///
/// Use this resource to attach a validated SSL/TLS certificate to a Lightsail Load Balancer to enable HTTPS traffic. The certificate must be validated before it can be attached to the load balancer.
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
/// const exampleLbCertificateAttachment = new aws.lightsail.LbCertificateAttachment("example", {
/// lbName: example.name,
/// certificateName: exampleLbCertificate.name,
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
/// example_lb_certificate_attachment = aws.lightsail.LbCertificateAttachment("example",
/// lb_name=example.name,
/// certificate_name=example_lb_certificate.name)
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
/// var exampleLbCertificateAttachment = new Aws.LightSail.LbCertificateAttachment("example", new()
/// {
/// LbName = example.Name,
/// CertificateName = exampleLbCertificate.Name,
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
/// exampleLbCertificate, err := lightsail.NewLbCertificate(ctx, "example", &lightsail.LbCertificateArgs{
/// Name:       pulumi.String("example-load-balancer-certificate"),
/// LbName:     example.ID(),
/// DomainName: pulumi.String("example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewLbCertificateAttachment(ctx, "example", &lightsail.LbCertificateAttachmentArgs{
/// LbName:          example.Name,
/// CertificateName: exampleLbCertificate.Name,
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
/// import com.pulumi.aws.lightsail.LbCertificateAttachment;
/// import com.pulumi.aws.lightsail.LbCertificateAttachmentArgs;
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
/// var exampleLbCertificateAttachment = new LbCertificateAttachment("exampleLbCertificateAttachment", LbCertificateAttachmentArgs.builder()
/// .lbName(example.name())
/// .certificateName(exampleLbCertificate.name())
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
/// exampleLbCertificateAttachment:
/// type: aws:lightsail:LbCertificateAttachment
/// name: example
/// properties:
/// lbName: ${example.name}
/// certificateName: ${exampleLbCertificate.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.LbCertificateAttachment`" pulumi-lang-dotnet="`aws.lightsail.LbCertificateAttachment`" pulumi-lang-go="`lightsail.LbCertificateAttachment`" pulumi-lang-python="`lightsail.LbCertificateAttachment`" pulumi-lang-yaml="`aws.lightsail.LbCertificateAttachment`" pulumi-lang-java="`aws.lightsail.LbCertificateAttachment`">`aws.lightsail.LbCertificateAttachment`</span> using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbCertificateAttachment:LbCertificateAttachment example example-load-balancer,example-certificate
/// ```
class LbCertificateAttachment extends CustomResource {
  /// Name of your SSL/TLS certificate.
  late final Output<String> certificateName;

  /// Name of the load balancer to which you want to associate the SSL/TLS certificate.
  ///
  /// The following arguments are optional:
  late final Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LbCertificateAttachment(
    String name, {
    LbCertificateAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificateAttachment:LbCertificateAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateName = registerOutput<String>('certificateName');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
