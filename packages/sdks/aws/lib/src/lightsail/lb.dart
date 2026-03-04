import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_args.dart';
import 'lb_state.dart';

/// Manages a Lightsail load balancer resource.
///
/// Use this resource to distribute incoming traffic across multiple Lightsail instances to improve application availability and performance.
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
/// 		_, err := lightsail.NewLb(ctx, "example", &lightsail.LbArgs{
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
///       instancePort: 80
///       tags:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.Lb` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lb:Lb example example-load-balancer
/// ```
class Lb extends pulumi.CustomResource {
  /// ARN of the Lightsail load balancer.
  late final pulumi.Output<String> arn;

  /// Timestamp when the load balancer was created.
  late final pulumi.Output<String> createdAt;

  /// DNS name of the load balancer.
  late final pulumi.Output<String> dnsName;

  /// Health check path of the load balancer. Default value `/`.
  late final pulumi.Output<String?> healthCheckPath;

  /// Instance port the load balancer will connect to.
  late final pulumi.Output<int> instancePort;

  /// IP address type of the load balancer. Valid values: `dualstack`, `ipv4`. Default value `dualstack`.
  late final pulumi.Output<String?> ipAddressType;

  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Protocol of the load balancer.
  late final pulumi.Output<String> protocol;

  /// Public ports of the load balancer.
  late final pulumi.Output<List<int>> publicPorts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Support code for the load balancer. Include this code in your email to support when you have questions about a load balancer in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final pulumi.Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Lb].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lb]. {@macro pulumi_lightsail_lb_lb_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lb(String name, {LbArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:lightsail/lb:Lb',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    dnsName = registerOutput<String>('dnsName');
    healthCheckPath = registerOutput<String?>('healthCheckPath');
    instancePort = registerOutput<int>('instancePort');
    ipAddressType = registerOutput<String?>('ipAddressType');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    publicPorts = registerOutput<List<int>>('publicPorts');
    region = registerOutput<String>('region');
    supportCode = registerOutput<String>('supportCode');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Lb] resource's state with the given [name] and [id].
  static Lb get(String name, pulumi.Input<String> id, {LbState? state}) {
    return Lb._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Lb._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:lightsail/lb:Lb',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    dnsName = registerOutput<String>('dnsName');
    healthCheckPath = registerOutput<String?>('healthCheckPath');
    instancePort = registerOutput<int>('instancePort');
    ipAddressType = registerOutput<String?>('ipAddressType');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    publicPorts = registerOutput<List<int>>('publicPorts');
    region = registerOutput<String>('region');
    supportCode = registerOutput<String>('supportCode');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
