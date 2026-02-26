import 'package:pulumi/pulumi.dart';
import 'lb_https_redirection_policy_args.dart';

/// Manages HTTPS redirection for a Lightsail Load Balancer.
///
/// Use this resource to configure automatic redirection of HTTP traffic to HTTPS on a Lightsail Load Balancer. A valid certificate must be attached to the load balancer before enabling HTTPS redirection.
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
/// const exampleLbHttpsRedirectionPolicy = new aws.lightsail.LbHttpsRedirectionPolicy("example", {
/// lbName: example.name,
/// enabled: true,
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
/// example_lb_https_redirection_policy = aws.lightsail.LbHttpsRedirectionPolicy("example",
/// lb_name=example.name,
/// enabled=True)
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
/// var exampleLbHttpsRedirectionPolicy = new Aws.LightSail.LbHttpsRedirectionPolicy("example", new()
/// {
/// LbName = example.Name,
/// Enabled = true,
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
/// _, err = lightsail.NewLbHttpsRedirectionPolicy(ctx, "example", &lightsail.LbHttpsRedirectionPolicyArgs{
/// LbName:  example.Name,
/// Enabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.lightsail.LbHttpsRedirectionPolicy;
/// import com.pulumi.aws.lightsail.LbHttpsRedirectionPolicyArgs;
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
/// var exampleLbHttpsRedirectionPolicy = new LbHttpsRedirectionPolicy("exampleLbHttpsRedirectionPolicy", LbHttpsRedirectionPolicyArgs.builder()
/// .lbName(example.name())
/// .enabled(true)
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
/// exampleLbHttpsRedirectionPolicy:
/// type: aws:lightsail:LbHttpsRedirectionPolicy
/// name: example
/// properties:
/// lbName: ${example.name}
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.LbHttpsRedirectionPolicy`" pulumi-lang-dotnet="`aws.lightsail.LbHttpsRedirectionPolicy`" pulumi-lang-go="`lightsail.LbHttpsRedirectionPolicy`" pulumi-lang-python="`lightsail.LbHttpsRedirectionPolicy`" pulumi-lang-yaml="`aws.lightsail.LbHttpsRedirectionPolicy`" pulumi-lang-java="`aws.lightsail.LbHttpsRedirectionPolicy`">`aws.lightsail.LbHttpsRedirectionPolicy`</span> using the <span pulumi-lang-nodejs="`lbName`" pulumi-lang-dotnet="`LbName`" pulumi-lang-go="`lbName`" pulumi-lang-python="`lb_name`" pulumi-lang-yaml="`lbName`" pulumi-lang-java="`lbName`">`lb_name`</span> attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbHttpsRedirectionPolicy:LbHttpsRedirectionPolicy example example-load-balancer
/// ```
class LbHttpsRedirectionPolicy extends CustomResource {
  /// Whether to enable HTTP to HTTPS redirection. <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to activate HTTP to HTTPS redirection or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to deactivate HTTP to HTTPS redirection.
  late final Output<bool> enabled;

  /// Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  ///
  /// The following arguments are optional:
  late final Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LbHttpsRedirectionPolicy(
    String name, {
    LbHttpsRedirectionPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbHttpsRedirectionPolicy:LbHttpsRedirectionPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enabled = Output.createUnknown<bool>();
    this.lbName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
