import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_args.dart';
import 'target_group_health_check.dart';
import 'target_group_stickiness.dart';
import 'target_group_target_failover.dart';
import 'target_group_target_group_health.dart';
import 'target_group_target_health_state.dart';

/// Provides a Target Group resource for use with Load Balancer resources.
///
/// > **Note:** `aws.alb.TargetGroup` is known as `aws.lb.TargetGroup`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Instance Target Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const test = new aws.lb.TargetGroup("test", {
///     name: "tf-example-lb-tg",
///     port: 80,
///     protocol: "HTTP",
///     vpcId: main.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// test = aws.lb.TargetGroup("test",
///     name="tf-example-lb-tg",
///     port=80,
///     protocol="HTTP",
///     vpc_id=main.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var test = new Aws.LB.TargetGroup("test", new()
///     {
///         Name = "tf-example-lb-tg",
///         Port = 80,
///         Protocol = "HTTP",
///         VpcId = main.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewTargetGroup(ctx, "test", &lb.TargetGroupArgs{
/// 			Name:     pulumi.String("tf-example-lb-tg"),
/// 			Port:     pulumi.Int(80),
/// 			Protocol: pulumi.String("HTTP"),
/// 			VpcId:    main.ID(),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var test = new TargetGroup("test", TargetGroupArgs.builder()
///             .name("tf-example-lb-tg")
///             .port(80)
///             .protocol("HTTP")
///             .vpcId(main.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lb:TargetGroup
///     properties:
///       name: tf-example-lb-tg
///       port: 80
///       protocol: HTTP
///       vpcId: ${main.id}
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
/// ```
///
///
/// ### IP Target Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const ip_example = new aws.lb.TargetGroup("ip-example", {
///     name: "tf-example-lb-tg",
///     port: 80,
///     protocol: "HTTP",
///     targetType: "ip",
///     vpcId: main.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// ip_example = aws.lb.TargetGroup("ip-example",
///     name="tf-example-lb-tg",
///     port=80,
///     protocol="HTTP",
///     target_type="ip",
///     vpc_id=main.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var ip_example = new Aws.LB.TargetGroup("ip-example", new()
///     {
///         Name = "tf-example-lb-tg",
///         Port = 80,
///         Protocol = "HTTP",
///         TargetType = "ip",
///         VpcId = main.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewTargetGroup(ctx, "ip-example", &lb.TargetGroupArgs{
/// 			Name:       pulumi.String("tf-example-lb-tg"),
/// 			Port:       pulumi.Int(80),
/// 			Protocol:   pulumi.String("HTTP"),
/// 			TargetType: pulumi.String("ip"),
/// 			VpcId:      main.ID(),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var ip_example = new TargetGroup("ip-example", TargetGroupArgs.builder()
///             .name("tf-example-lb-tg")
///             .port(80)
///             .protocol("HTTP")
///             .targetType("ip")
///             .vpcId(main.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ip-example:
///     type: aws:lb:TargetGroup
///     properties:
///       name: tf-example-lb-tg
///       port: 80
///       protocol: HTTP
///       targetType: ip
///       vpcId: ${main.id}
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
/// ```
///
///
/// ### Lambda Target Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lambda_example = new aws.lb.TargetGroup("lambda-example", {
///     name: "tf-example-lb-tg",
///     targetType: "lambda",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lambda_example = aws.lb.TargetGroup("lambda-example",
///     name="tf-example-lb-tg",
///     target_type="lambda")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lambda_example = new Aws.LB.TargetGroup("lambda-example", new()
///     {
///         Name = "tf-example-lb-tg",
///         TargetType = "lambda",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lb.NewTargetGroup(ctx, "lambda-example", &lb.TargetGroupArgs{
/// 			Name:       pulumi.String("tf-example-lb-tg"),
/// 			TargetType: pulumi.String("lambda"),
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
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
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
///         var lambda_example = new TargetGroup("lambda-example", TargetGroupArgs.builder()
///             .name("tf-example-lb-tg")
///             .targetType("lambda")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lambda-example:
///     type: aws:lb:TargetGroup
///     properties:
///       name: tf-example-lb-tg
///       targetType: lambda
/// ```
///
///
/// ### ALB Target Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const alb_example = new aws.lb.TargetGroup("alb-example", {
///     name: "tf-example-lb-alb-tg",
///     targetType: "alb",
///     port: 80,
///     protocol: "TCP",
///     vpcId: main.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// alb_example = aws.lb.TargetGroup("alb-example",
///     name="tf-example-lb-alb-tg",
///     target_type="alb",
///     port=80,
///     protocol="TCP",
///     vpc_id=main["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var alb_example = new Aws.LB.TargetGroup("alb-example", new()
///     {
///         Name = "tf-example-lb-alb-tg",
///         TargetType = "alb",
///         Port = 80,
///         Protocol = "TCP",
///         VpcId = main.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lb.NewTargetGroup(ctx, "alb-example", &lb.TargetGroupArgs{
/// 			Name:       pulumi.String("tf-example-lb-alb-tg"),
/// 			TargetType: pulumi.String("alb"),
/// 			Port:       pulumi.Int(80),
/// 			Protocol:   pulumi.String("TCP"),
/// 			VpcId:      pulumi.Any(main.Id),
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
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
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
///         var alb_example = new TargetGroup("alb-example", TargetGroupArgs.builder()
///             .name("tf-example-lb-alb-tg")
///             .targetType("alb")
///             .port(80)
///             .protocol("TCP")
///             .vpcId(main.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   alb-example:
///     type: aws:lb:TargetGroup
///     properties:
///       name: tf-example-lb-alb-tg
///       targetType: alb
///       port: 80
///       protocol: TCP
///       vpcId: ${main.id}
/// ```
///
///
/// ### Target group with unhealthy connection termination disabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tcp_example = new aws.lb.TargetGroup("tcp-example", {
///     name: "tf-example-lb-nlb-tg",
///     port: 25,
///     protocol: "TCP",
///     vpcId: main.id,
///     targetHealthStates: [{
///         enableUnhealthyConnectionTermination: false,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// tcp_example = aws.lb.TargetGroup("tcp-example",
///     name="tf-example-lb-nlb-tg",
///     port=25,
///     protocol="TCP",
///     vpc_id=main["id"],
///     target_health_states=[{
///         "enable_unhealthy_connection_termination": False,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tcp_example = new Aws.LB.TargetGroup("tcp-example", new()
///     {
///         Name = "tf-example-lb-nlb-tg",
///         Port = 25,
///         Protocol = "TCP",
///         VpcId = main.Id,
///         TargetHealthStates = new[]
///         {
///             new Aws.LB.Inputs.TargetGroupTargetHealthStateArgs
///             {
///                 EnableUnhealthyConnectionTermination = false,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lb.NewTargetGroup(ctx, "tcp-example", &lb.TargetGroupArgs{
/// 			Name:     pulumi.String("tf-example-lb-nlb-tg"),
/// 			Port:     pulumi.Int(25),
/// 			Protocol: pulumi.String("TCP"),
/// 			VpcId:    pulumi.Any(main.Id),
/// 			TargetHealthStates: lb.TargetGroupTargetHealthStateArray{
/// 				&lb.TargetGroupTargetHealthStateArgs{
/// 					EnableUnhealthyConnectionTermination: pulumi.Bool(false),
/// 				},
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
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
/// import com.pulumi.aws.lb.inputs.TargetGroupTargetHealthStateArgs;
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
///         var tcp_example = new TargetGroup("tcp-example", TargetGroupArgs.builder()
///             .name("tf-example-lb-nlb-tg")
///             .port(25)
///             .protocol("TCP")
///             .vpcId(main.id())
///             .targetHealthStates(TargetGroupTargetHealthStateArgs.builder()
///                 .enableUnhealthyConnectionTermination(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcp-example:
///     type: aws:lb:TargetGroup
///     properties:
///       name: tf-example-lb-nlb-tg
///       port: 25
///       protocol: TCP
///       vpcId: ${main.id}
///       targetHealthStates:
///         - enableUnhealthyConnectionTermination: false
/// ```
///
///
/// ### Target group with health requirements
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tcp_example = new aws.lb.TargetGroup("tcp-example", {
///     name: "tf-example-lb-nlb-tg",
///     port: 80,
///     protocol: "TCP",
///     vpcId: main.id,
///     targetGroupHealth: {
///         dnsFailover: {
///             minimumHealthyTargetsCount: "1",
///             minimumHealthyTargetsPercentage: "off",
///         },
///         unhealthyStateRouting: {
///             minimumHealthyTargetsCount: 1,
///             minimumHealthyTargetsPercentage: "off",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// tcp_example = aws.lb.TargetGroup("tcp-example",
///     name="tf-example-lb-nlb-tg",
///     port=80,
///     protocol="TCP",
///     vpc_id=main["id"],
///     target_group_health={
///         "dns_failover": {
///             "minimum_healthy_targets_count": "1",
///             "minimum_healthy_targets_percentage": "off",
///         },
///         "unhealthy_state_routing": {
///             "minimum_healthy_targets_count": 1,
///             "minimum_healthy_targets_percentage": "off",
///         },
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
///     var tcp_example = new Aws.LB.TargetGroup("tcp-example", new()
///     {
///         Name = "tf-example-lb-nlb-tg",
///         Port = 80,
///         Protocol = "TCP",
///         VpcId = main.Id,
///         TargetGroupHealth = new Aws.LB.Inputs.TargetGroupTargetGroupHealthArgs
///         {
///             DnsFailover = new Aws.LB.Inputs.TargetGroupTargetGroupHealthDnsFailoverArgs
///             {
///                 MinimumHealthyTargetsCount = "1",
///                 MinimumHealthyTargetsPercentage = "off",
///             },
///             UnhealthyStateRouting = new Aws.LB.Inputs.TargetGroupTargetGroupHealthUnhealthyStateRoutingArgs
///             {
///                 MinimumHealthyTargetsCount = 1,
///                 MinimumHealthyTargetsPercentage = "off",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lb.NewTargetGroup(ctx, "tcp-example", &lb.TargetGroupArgs{
/// 			Name:     pulumi.String("tf-example-lb-nlb-tg"),
/// 			Port:     pulumi.Int(80),
/// 			Protocol: pulumi.String("TCP"),
/// 			VpcId:    pulumi.Any(main.Id),
/// 			TargetGroupHealth: &lb.TargetGroupTargetGroupHealthArgs{
/// 				DnsFailover: &lb.TargetGroupTargetGroupHealthDnsFailoverArgs{
/// 					MinimumHealthyTargetsCount:      pulumi.String("1"),
/// 					MinimumHealthyTargetsPercentage: pulumi.String("off"),
/// 				},
/// 				UnhealthyStateRouting: &lb.TargetGroupTargetGroupHealthUnhealthyStateRoutingArgs{
/// 					MinimumHealthyTargetsCount:      pulumi.Int(1),
/// 					MinimumHealthyTargetsPercentage: pulumi.String("off"),
/// 				},
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
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
/// import com.pulumi.aws.lb.inputs.TargetGroupTargetGroupHealthArgs;
/// import com.pulumi.aws.lb.inputs.TargetGroupTargetGroupHealthDnsFailoverArgs;
/// import com.pulumi.aws.lb.inputs.TargetGroupTargetGroupHealthUnhealthyStateRoutingArgs;
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
///         var tcp_example = new TargetGroup("tcp-example", TargetGroupArgs.builder()
///             .name("tf-example-lb-nlb-tg")
///             .port(80)
///             .protocol("TCP")
///             .vpcId(main.id())
///             .targetGroupHealth(TargetGroupTargetGroupHealthArgs.builder()
///                 .dnsFailover(TargetGroupTargetGroupHealthDnsFailoverArgs.builder()
///                     .minimumHealthyTargetsCount("1")
///                     .minimumHealthyTargetsPercentage("off")
///                     .build())
///                 .unhealthyStateRouting(TargetGroupTargetGroupHealthUnhealthyStateRoutingArgs.builder()
///                     .minimumHealthyTargetsCount(1)
///                     .minimumHealthyTargetsPercentage("off")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcp-example:
///     type: aws:lb:TargetGroup
///     properties:
///       name: tf-example-lb-nlb-tg
///       port: 80
///       protocol: TCP
///       vpcId: ${main.id}
///       targetGroupHealth:
///         dnsFailover:
///           minimumHealthyTargetsCount: '1'
///           minimumHealthyTargetsPercentage: off
///         unhealthyStateRouting:
///           minimumHealthyTargetsCount: '1'
///           minimumHealthyTargetsPercentage: off
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the target group.
///
///
/// Using `pulumi import`, import Target Groups using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:alb/targetGroup:TargetGroup app_front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:targetgroup/app-front-end/20cfe21448b66314
/// ```
class TargetGroup extends pulumi.CustomResource {
  /// ARN of the Target Group (matches `id`).
  late final pulumi.Output<String> arn;
  /// ARN suffix for use with CloudWatch Metrics.
  late final pulumi.Output<String> arnSuffix;
  /// Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#deregistration-delay) for more information. Default is `false`.
  late final pulumi.Output<bool> connectionTermination;
  /// Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds.
  late final pulumi.Output<int?> deregistrationDelay;
  /// Health Check configuration block. Detailed below.
  late final pulumi.Output<TargetGroupHealthCheck> healthCheck;
  /// The type of IP addresses used by the target group, only supported when target type is set to `ip`. Possible values are `ipv4` or `ipv6`.
  late final pulumi.Output<String> ipAddressType;
  /// Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when `target_type` is `lambda`. Default is `false`.
  late final pulumi.Output<bool?> lambdaMultiValueHeadersEnabled;
  /// ARNs of the Load Balancers associated with the Target Group.
  late final pulumi.Output<List<String>> loadBalancerArns;
  /// Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is `round_robin`, `least_outstanding_requests`, or `weighted_random`. The default is `round_robin`.
  late final pulumi.Output<String> loadBalancingAlgorithmType;
  /// Determines whether to enable target anomaly mitigation.  Target anomaly mitigation is only supported by the `weighted_random` load balancing algorithm type.  See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#automatic-target-weights) for more information.  The value is `"on"` or `"off"`. The default is `"off"`.
  late final pulumi.Output<String> loadBalancingAnomalyMitigation;
  /// Indicates whether cross zone load balancing is enabled. The value is `"true"`, `"false"` or `"use_load_balancer_configuration"`. The default is `"use_load_balancer_configuration"`.
  late final pulumi.Output<String> loadBalancingCrossZoneEnabled;
  /// Name of the target group. If omitted, this provider will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Cannot be longer than 6 characters.
  late final pulumi.Output<String> namePrefix;
  /// Port on which targets receive traffic, unless overridden when registering a specific target. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  late final pulumi.Output<int?> port;
  /// Whether client IP preservation is enabled. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#client-ip-preservation) for more information.
  late final pulumi.Output<String> preserveClientIp;
  /// Protocol to use for routing traffic to the targets.
  /// Should be one of `GENEVE`, `HTTP`, `HTTPS`, `TCP`, `TCP_UDP`, `TLS`, `UDP`, `QUIC`, or `TCP_QUIC`.
  /// Required when `target_type` is `instance`, `ip`, or `alb`.
  /// Does not apply when `target_type` is `lambda`.
  late final pulumi.Output<String?> protocol;
  /// Only applicable when `protocol` is `HTTP` or `HTTPS`. The protocol version. Specify `GRPC` to send requests to targets using gRPC. Specify `HTTP2` to send requests to targets using HTTP/2. The default is `HTTP1`, which sends requests to targets using HTTP/1.1
  late final pulumi.Output<String> protocolVersion;
  /// Whether to enable support for proxy protocol v2 on Network Load Balancers. See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#proxy-protocol) for more information. Default is `false`.
  late final pulumi.Output<bool?> proxyProtocolV2;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds.
  late final pulumi.Output<int?> slowStart;
  /// Stickiness configuration block. Detailed below.
  late final pulumi.Output<TargetGroupStickiness> stickiness;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Port on which the target control agent and application load balancer exchange management traffic for the target optimizer feature. Only applicable for Application Load Balancer target groups when `target_type` is `instance` or `ip`.
  late final pulumi.Output<int?> targetControlPort;
  /// Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information.
  late final pulumi.Output<List<TargetGroupTargetFailover>> targetFailovers;
  /// Target health requirements block. See target_group_health for more information.
  late final pulumi.Output<TargetGroupTargetGroupHealth> targetGroupHealth;
  /// Target health state block. Only applicable for Network Load Balancer target groups when `protocol` is `TCP` or `TLS`. See target_health_state for more information.
  late final pulumi.Output<List<TargetGroupTargetHealthState>> targetHealthStates;
  /// Type of target that you must specify when registering targets with this target group.
  /// See [doc](https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html) for supported values.
  /// The default is `instance`.
  ///
  /// Note that you can't specify targets for a target group using both instance IDs and IP addresses.
  ///
  /// If the target type is `ip`, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.
  ///
  /// Network Load Balancers do not support the `lambda` target type.
  ///
  /// Application Load Balancers do not support the `alb` target type.
  late final pulumi.Output<String?> targetType;
  /// Identifier of the VPC in which to create the target group. Required when `target_type` is `instance`, `ip` or `alb`. Does not apply when `target_type` is `lambda`.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [TargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetGroup]. {@macro pulumi_alb_target_group_target_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetGroup(
    String name, {
    TargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:alb/targetGroup:TargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.arnSuffix = registerOutput<String>('arnSuffix');
    this.connectionTermination = registerOutput<bool>('connectionTermination');
    this.deregistrationDelay = registerOutput<int?>('deregistrationDelay');
    this.healthCheck = registerOutput<TargetGroupHealthCheck>('healthCheck');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.lambdaMultiValueHeadersEnabled = registerOutput<bool?>('lambdaMultiValueHeadersEnabled');
    this.loadBalancerArns = registerOutput<List<String>>('loadBalancerArns');
    this.loadBalancingAlgorithmType = registerOutput<String>('loadBalancingAlgorithmType');
    this.loadBalancingAnomalyMitigation = registerOutput<String>('loadBalancingAnomalyMitigation');
    this.loadBalancingCrossZoneEnabled = registerOutput<String>('loadBalancingCrossZoneEnabled');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.port = registerOutput<int?>('port');
    this.preserveClientIp = registerOutput<String>('preserveClientIp');
    this.protocol = registerOutput<String?>('protocol');
    this.protocolVersion = registerOutput<String>('protocolVersion');
    this.proxyProtocolV2 = registerOutput<bool?>('proxyProtocolV2');
    this.region = registerOutput<String>('region');
    this.slowStart = registerOutput<int?>('slowStart');
    this.stickiness = registerOutput<TargetGroupStickiness>('stickiness');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetControlPort = registerOutput<int?>('targetControlPort');
    this.targetFailovers = registerOutput<List<TargetGroupTargetFailover>>('targetFailovers');
    this.targetGroupHealth = registerOutput<TargetGroupTargetGroupHealth>('targetGroupHealth');
    this.targetHealthStates = registerOutput<List<TargetGroupTargetHealthState>>('targetHealthStates');
    this.targetType = registerOutput<String?>('targetType');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
