import 'package:pulumi/pulumi.dart';
import 'lb_args.dart';

/// Manages a Lightsail load balancer resource.
///
/// Use this resource to distribute incoming traffic across multiple Lightsail instances to improve application availability and performance.
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
/// _, err := lightsail.NewLb(ctx, "example", &lightsail.LbArgs{
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
/// instancePort: 80
/// tags:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.Lb`" pulumi-lang-dotnet="`aws.lightsail.Lb`" pulumi-lang-go="`lightsail.Lb`" pulumi-lang-python="`lightsail.Lb`" pulumi-lang-yaml="`aws.lightsail.Lb`" pulumi-lang-java="`aws.lightsail.Lb`">`aws.lightsail.Lb`</span> using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lb:Lb example example-load-balancer
/// ```
class Lb extends CustomResource {
  /// ARN of the Lightsail load balancer.
  late final Output<String> arn;

  /// Timestamp when the load balancer was created.
  late final Output<String> createdAt;

  /// DNS name of the load balancer.
  late final Output<String> dnsName;

  /// Health check path of the load balancer. Default value `/`.
  late final Output<String?> healthCheckPath;

  /// Instance port the load balancer will connect to.
  late final Output<int> instancePort;

  /// IP address type of the load balancer. Valid values: <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>. Default value <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>.
  late final Output<String?> ipAddressType;

  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Protocol of the load balancer.
  late final Output<String> protocol;

  /// Public ports of the load balancer.
  late final Output<List<int>> publicPorts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Support code for the load balancer. Include this code in your email to support when you have questions about a load balancer in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Lb(
    String name, {
    LbArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lb:Lb',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.dnsName = Output.createUnknown<String>();
    this.healthCheckPath = Output.createUnknown<String?>();
    this.instancePort = Output.createUnknown<int>();
    this.ipAddressType = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.protocol = Output.createUnknown<String>();
    this.publicPorts = Output.createUnknown<List<int>>();
    this.region = Output.createUnknown<String>();
    this.supportCode = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
