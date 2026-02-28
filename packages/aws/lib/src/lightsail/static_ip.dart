import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_ip_args.dart';

/// Manages a static IP address.
///
/// Use this resource to allocate a static IP address that can be attached to Lightsail instances to provide a consistent public IP address that persists across instance restarts.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.StaticIp("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.StaticIp("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LightSail.StaticIp("example", new()
///     {
///         Name = "example",
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
/// 		_, err := lightsail.NewStaticIp(ctx, "example", &lightsail.StaticIpArgs{
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.lightsail.StaticIp;
/// import com.pulumi.aws.lightsail.StaticIpArgs;
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
///         var example = new StaticIp("example", StaticIpArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lightsail:StaticIp
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.StaticIp` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/staticIp:StaticIp example example
/// ```
class StaticIp extends pulumi.CustomResource {
  /// ARN of the Lightsail static IP.
  late final pulumi.Output<String> arn;

  /// Allocated static IP address.
  late final pulumi.Output<String> ipAddress;

  /// Name for the allocated static IP.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Support code for the static IP. Include this code in your email to support when you have questions about a static IP in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final pulumi.Output<String> supportCode;

  /// Creates a new [StaticIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticIp]. {@macro pulumi_lightsail_static_ip_static_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticIp(
    String name, {
    StaticIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/staticIp:StaticIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.supportCode = registerOutput<String>('supportCode');
  }
}
