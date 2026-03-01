import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_cookie_stickiness_policy_args.dart';

/// Provides a load balancer cookie stickiness policy, which allows an ELB to control the sticky session lifetime of the browser.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.elb.LoadBalancer("lb", {
///     name: "test-lb",
///     availabilityZones: ["us-east-1a"],
///     listeners: [{
///         instancePort: 8000,
///         instanceProtocol: "http",
///         lbPort: 80,
///         lbProtocol: "http",
///     }],
/// });
/// const foo = new aws.elb.LoadBalancerCookieStickinessPolicy("foo", {
///     name: "foo-policy",
///     loadBalancer: lb.id,
///     lbPort: 80,
///     cookieExpirationPeriod: 600,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb = aws.elb.LoadBalancer("lb",
///     name="test-lb",
///     availability_zones=["us-east-1a"],
///     listeners=[{
///         "instance_port": 8000,
///         "instance_protocol": "http",
///         "lb_port": 80,
///         "lb_protocol": "http",
///     }])
/// foo = aws.elb.LoadBalancerCookieStickinessPolicy("foo",
///     name="foo-policy",
///     load_balancer=lb.id,
///     lb_port=80,
///     cookie_expiration_period=600)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb = new Aws.Elb.LoadBalancer("lb", new()
///     {
///         Name = "test-lb",
///         AvailabilityZones = new[]
///         {
///             "us-east-1a",
///         },
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 8000,
///                 InstanceProtocol = "http",
///                 LbPort = 80,
///                 LbProtocol = "http",
///             },
///         },
///     });
///
///     var foo = new Aws.Elb.LoadBalancerCookieStickinessPolicy("foo", new()
///     {
///         Name = "foo-policy",
///         LoadBalancer = lb.Id,
///         LbPort = 80,
///         CookieExpirationPeriod = 600,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		lb, err := elb.NewLoadBalancer(ctx, "lb", &elb.LoadBalancerArgs{
/// 			Name: pulumi.String("test-lb"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-east-1a"),
/// 			},
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(8000),
/// 					InstanceProtocol: pulumi.String("http"),
/// 					LbPort:           pulumi.Int(80),
/// 					LbProtocol:       pulumi.String("http"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elb.NewLoadBalancerCookieStickinessPolicy(ctx, "foo", &elb.LoadBalancerCookieStickinessPolicyArgs{
/// 			Name:                   pulumi.String("foo-policy"),
/// 			LoadBalancer:           lb.ID(),
/// 			LbPort:                 pulumi.Int(80),
/// 			CookieExpirationPeriod: pulumi.Int(600),
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
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.LoadBalancerCookieStickinessPolicy;
/// import com.pulumi.aws.elb.LoadBalancerCookieStickinessPolicyArgs;
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
///         var lb = new LoadBalancer("lb", LoadBalancerArgs.builder()
///             .name("test-lb")
///             .availabilityZones("us-east-1a")
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(8000)
///                 .instanceProtocol("http")
///                 .lbPort(80)
///                 .lbProtocol("http")
///                 .build())
///             .build());
///
///         var foo = new LoadBalancerCookieStickinessPolicy("foo", LoadBalancerCookieStickinessPolicyArgs.builder()
///             .name("foo-policy")
///             .loadBalancer(lb.id())
///             .lbPort(80)
///             .cookieExpirationPeriod(600)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb:
///     type: aws:elb:LoadBalancer
///     properties:
///       name: test-lb
///       availabilityZones:
///         - us-east-1a
///       listeners:
///         - instancePort: 8000
///           instanceProtocol: http
///           lbPort: 80
///           lbProtocol: http
///   foo:
///     type: aws:elb:LoadBalancerCookieStickinessPolicy
///     properties:
///       name: foo-policy
///       loadBalancer: ${lb.id}
///       lbPort: 80
///       cookieExpirationPeriod: 600
/// ```
class LoadBalancerCookieStickinessPolicy extends pulumi.CustomResource {
  /// The time period after which
  /// the session cookie should be considered stale, expressed in seconds.
  late final pulumi.Output<int?> cookieExpirationPeriod;

  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  late final pulumi.Output<int> lbPort;

  /// The load balancer to which the policy
  /// should be attached.
  late final pulumi.Output<String> loadBalancer;

  /// The name of the stickiness policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LoadBalancerCookieStickinessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerCookieStickinessPolicy]. {@macro pulumi_elb_load_balancer_cookie_stickiness_policy_load_balancer_cookie_stickiness_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerCookieStickinessPolicy(
    String name, {
    LoadBalancerCookieStickinessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elb/loadBalancerCookieStickinessPolicy:LoadBalancerCookieStickinessPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.cookieExpirationPeriod = registerOutput<int?>(
      'cookieExpirationPeriod',
    );
    this.lbPort = registerOutput<int>('lbPort');
    this.loadBalancer = registerOutput<String>('loadBalancer');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
