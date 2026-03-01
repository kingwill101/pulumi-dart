import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_certificate_attachment_args.dart';
import 'lb_certificate_attachment_state.dart';

/// Manages a Lightsail Load Balancer Certificate attachment to a Lightsail Load Balancer.
///
/// Use this resource to attach a validated SSL/TLS certificate to a Lightsail Load Balancer to enable HTTPS traffic. The certificate must be validated before it can be attached to the load balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Lb("example", {
///     name: "example-load-balancer",
///     healthCheckPath: "/",
///     instancePort: 80,
///     tags: {
///         foo: "bar",
///     },
/// });
/// const exampleLbCertificate = new aws.lightsail.LbCertificate("example", {
///     name: "example-load-balancer-certificate",
///     lbName: example.id,
///     domainName: "example.com",
/// });
/// const exampleLbCertificateAttachment = new aws.lightsail.LbCertificateAttachment("example", {
///     lbName: example.name,
///     certificateName: exampleLbCertificate.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Lb("example",
///     name="example-load-balancer",
///     health_check_path="/",
///     instance_port=80,
///     tags={
///         "foo": "bar",
///     })
/// example_lb_certificate = aws.lightsail.LbCertificate("example",
///     name="example-load-balancer-certificate",
///     lb_name=example.id,
///     domain_name="example.com")
/// example_lb_certificate_attachment = aws.lightsail.LbCertificateAttachment("example",
///     lb_name=example.name,
///     certificate_name=example_lb_certificate.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.Lb("example", new()
///     {
///         Name = "example-load-balancer",
///         HealthCheckPath = "/",
///         InstancePort = 80,
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var exampleLbCertificate = new Aws.LightSail.LbCertificate("example", new()
///     {
///         Name = "example-load-balancer-certificate",
///         LbName = example.Id,
///         DomainName = "example.com",
///     });
///
///     var exampleLbCertificateAttachment = new Aws.LightSail.LbCertificateAttachment("example", new()
///     {
///         LbName = example.Name,
///         CertificateName = exampleLbCertificate.Name,
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
/// 		example, err := lightsail.NewLb(ctx, "example", &lightsail.LbArgs{
/// 			Name:            pulumi.String("example-load-balancer"),
/// 			HealthCheckPath: pulumi.String("/"),
/// 			InstancePort:    pulumi.Int(80),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLbCertificate, err := lightsail.NewLbCertificate(ctx, "example", &lightsail.LbCertificateArgs{
/// 			Name:       pulumi.String("example-load-balancer-certificate"),
/// 			LbName:     example.ID(),
/// 			DomainName: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lightsail.NewLbCertificateAttachment(ctx, "example", &lightsail.LbCertificateAttachmentArgs{
/// 			LbName:          example.Name,
/// 			CertificateName: exampleLbCertificate.Name,
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Lb("example", LbArgs.builder()
///             .name("example-load-balancer")
///             .healthCheckPath("/")
///             .instancePort(80)
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         var exampleLbCertificate = new LbCertificate("exampleLbCertificate", LbCertificateArgs.builder()
///             .name("example-load-balancer-certificate")
///             .lbName(example.id())
///             .domainName("example.com")
///             .build());
///
///         var exampleLbCertificateAttachment = new LbCertificateAttachment("exampleLbCertificateAttachment", LbCertificateAttachmentArgs.builder()
///             .lbName(example.name())
///             .certificateName(exampleLbCertificate.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:Lb
///     properties:
///       name: example-load-balancer
///       healthCheckPath: /
///       instancePort: '80'
///       tags:
///         foo: bar
///   exampleLbCertificate:
///     type: aws:lightsail:LbCertificate
///     name: example
///     properties:
///       name: example-load-balancer-certificate
///       lbName: ${example.id}
///       domainName: example.com
///   exampleLbCertificateAttachment:
///     type: aws:lightsail:LbCertificateAttachment
///     name: example
///     properties:
///       lbName: ${example.name}
///       certificateName: ${exampleLbCertificate.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbCertificateAttachment` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbCertificateAttachment:LbCertificateAttachment example example-load-balancer,example-certificate
/// ```
class LbCertificateAttachment extends pulumi.CustomResource {
  /// Name of your SSL/TLS certificate.
  late final pulumi.Output<String> certificateName;
  /// Name of the load balancer to which you want to associate the SSL/TLS certificate.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LbCertificateAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LbCertificateAttachment]. {@macro pulumi_lightsail_lb_certificate_attachment_lb_certificate_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LbCertificateAttachment(
    String name, {
    LbCertificateAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificateAttachment:LbCertificateAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateName = registerOutput<String>('certificateName');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [LbCertificateAttachment] resource's state with the given [name] and [id].
  static LbCertificateAttachment get(
    String name,
    pulumi.Input<String> id, {
    LbCertificateAttachmentState? state,
  }) {
    return LbCertificateAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LbCertificateAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificateAttachment:LbCertificateAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateName = registerOutput<String>('certificateName');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
