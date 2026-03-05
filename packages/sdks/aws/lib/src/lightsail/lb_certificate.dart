import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_certificate_args.dart';
import 'lb_certificate_state.dart';

/// Manages a Lightsail Load Balancer Certificate.
///
/// Use this resource to create and manage SSL/TLS certificates for Lightsail Load Balancers. The certificate must be validated before it can be attached to a load balancer to enable HTTPS traffic.
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
/// 		_, err = lightsail.NewLbCertificate(ctx, "example", &lightsail.LbCertificateArgs{
/// 			Name:       pulumi.String("example-load-balancer-certificate"),
/// 			LbName:     example.ID(),
/// 			DomainName: pulumi.String("example.com"),
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbCertificate` using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbCertificate:LbCertificate example example-load-balancer,example-load-balancer-certificate
/// ```
class LbCertificate extends pulumi.CustomResource {
  /// ARN of the lightsail certificate.
  late final pulumi.Output<String> arn;
  /// Timestamp when the instance was created.
  late final pulumi.Output<String> createdAt;
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  late final pulumi.Output<String> domainName;
  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined.
  late final pulumi.Output<List<Map<String, dynamic>>> domainValidationRecords;
  /// Load balancer name where you want to create the SSL/TLS certificate.
  late final pulumi.Output<String> lbName;
  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  late final pulumi.Output<List<String>> subjectAlternativeNames;
  /// Support code for the certificate.
  late final pulumi.Output<String> supportCode;

  /// Creates a new [LbCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LbCertificate]. {@macro pulumi_lightsail_lb_certificate_lb_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LbCertificate(
    String name, {
    LbCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificate:LbCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    domainName = registerOutput<String>('domainName');
    domainValidationRecords = registerOutput<List<Map<String, dynamic>>>('domainValidationRecords');
    lbName = registerOutput<String>('lbName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames');
    supportCode = registerOutput<String>('supportCode');
  }

  /// Gets an existing [LbCertificate] resource's state with the given [name] and [id].
  static LbCertificate get(
    String name,
    pulumi.Input<String> id, {
    LbCertificateState? state,
  }) {
    return LbCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LbCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificate:LbCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    domainName = registerOutput<String>('domainName');
    domainValidationRecords = registerOutput<List<Map<String, dynamic>>>('domainValidationRecords');
    lbName = registerOutput<String>('lbName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames');
    supportCode = registerOutput<String>('supportCode');
  }
}
