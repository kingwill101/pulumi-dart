import 'package:pulumi/pulumi.dart';
import 'lb_stickiness_policy_args.dart';

/// Manages session stickiness for a Lightsail Load Balancer.
///
/// Use this resource to configure session stickiness to ensure that user sessions are consistently routed to the same backend instance. This helps maintain session state for applications that store session data locally on the server.
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
/// const exampleLbStickinessPolicy = new aws.lightsail.LbStickinessPolicy("example", {
/// lbName: example.name,
/// cookieDuration: 900,
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
/// example_lb_stickiness_policy = aws.lightsail.LbStickinessPolicy("example",
/// lb_name=example.name,
/// cookie_duration=900,
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
/// var exampleLbStickinessPolicy = new Aws.LightSail.LbStickinessPolicy("example", new()
/// {
/// LbName = example.Name,
/// CookieDuration = 900,
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
/// _, err = lightsail.NewLbStickinessPolicy(ctx, "example", &lightsail.LbStickinessPolicyArgs{
/// LbName:         example.Name,
/// CookieDuration: pulumi.Int(900),
/// Enabled:        pulumi.Bool(true),
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
/// import com.pulumi.aws.lightsail.LbStickinessPolicy;
/// import com.pulumi.aws.lightsail.LbStickinessPolicyArgs;
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
/// var exampleLbStickinessPolicy = new LbStickinessPolicy("exampleLbStickinessPolicy", LbStickinessPolicyArgs.builder()
/// .lbName(example.name())
/// .cookieDuration(900)
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
/// exampleLbStickinessPolicy:
/// type: aws:lightsail:LbStickinessPolicy
/// name: example
/// properties:
/// lbName: ${example.name}
/// cookieDuration: 900
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.LbStickinessPolicy`" pulumi-lang-dotnet="`aws.lightsail.LbStickinessPolicy`" pulumi-lang-go="`lightsail.LbStickinessPolicy`" pulumi-lang-python="`lightsail.LbStickinessPolicy`" pulumi-lang-yaml="`aws.lightsail.LbStickinessPolicy`" pulumi-lang-java="`aws.lightsail.LbStickinessPolicy`">`aws.lightsail.LbStickinessPolicy`</span> using the <span pulumi-lang-nodejs="`lbName`" pulumi-lang-dotnet="`LbName`" pulumi-lang-go="`lbName`" pulumi-lang-python="`lb_name`" pulumi-lang-yaml="`lbName`" pulumi-lang-java="`lbName`">`lb_name`</span> attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbStickinessPolicy:LbStickinessPolicy example example-load-balancer
/// ```
class LbStickinessPolicy extends CustomResource {
  /// Cookie duration in seconds. This determines the length of the session stickiness.
  late final Output<int> cookieDuration;

  /// Whether to enable session stickiness for the load balancer.
  late final Output<bool> enabled;

  /// Name of the load balancer to which you want to enable session stickiness.
  ///
  /// The following arguments are optional:
  late final Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LbStickinessPolicy(
    String name, {
    LbStickinessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbStickinessPolicy:LbStickinessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cookieDuration = registerOutput<int>('cookieDuration');
    this.enabled = registerOutput<bool>('enabled');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
