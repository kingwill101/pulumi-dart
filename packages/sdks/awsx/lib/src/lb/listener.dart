// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

/// Provides a Load Balancer Listener resource.
///
/// > **Note:** `aws.alb.Listener` is known as `aws.lb.Listener`. The functionality is identical.
///
/// ## Example Usage
///
/// ### Forward Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndTargetGroup = new aws.lb.TargetGroup("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEnd.arn,
///     port: 443,
///     protocol: "HTTPS",
///     sslPolicy: "ELBSecurityPolicy-2016-08",
///     certificateArn: "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///     defaultActions: [{
///         type: "forward",
///         targetGroupArn: frontEndTargetGroup.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_target_group = aws.lb.TargetGroup("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end.arn,
///     port=443,
///     protocol="HTTPS",
///     ssl_policy="ELBSecurityPolicy-2016-08",
///     certificate_arn="arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///     default_actions=[{
///         "type": "forward",
///         "target_group_arn": front_end_target_group.arn,
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
///     var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
///     var frontEndTargetGroup = new Aws.LB.TargetGroup("front_end");
///
///     var frontEndListener = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEnd.Arn,
///         Port = 443,
///         Protocol = "HTTPS",
///         SslPolicy = "ELBSecurityPolicy-2016-08",
///         CertificateArn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "forward",
///                 TargetGroupArn = frontEndTargetGroup.Arn,
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
/// 		frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontEndTargetGroup, err := lb.NewTargetGroup(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: frontEnd.Arn,
/// 			Port:            pulumi.Int(443),
/// 			Protocol:        pulumi.String("HTTPS"),
/// 			SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// 			CertificateArn:  pulumi.String("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type:           pulumi.String("forward"),
/// 					TargetGroupArn: frontEndTargetGroup.Arn,
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
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
///         var frontEnd = new LoadBalancer("frontEnd");
///
///         var frontEndTargetGroup = new TargetGroup("frontEndTargetGroup");
///
///         var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
///             .loadBalancerArn(frontEnd.arn())
///             .port(443)
///             .protocol("HTTPS")
///             .sslPolicy("ELBSecurityPolicy-2016-08")
///             .certificateArn("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("forward")
///                 .targetGroupArn(frontEndTargetGroup.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:LoadBalancer
///     name: front_end
///   frontEndTargetGroup:
///     type: aws:lb:TargetGroup
///     name: front_end
///   frontEndListener:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEnd.arn}
///       port: '443'
///       protocol: HTTPS
///       sslPolicy: ELBSecurityPolicy-2016-08
///       certificateArn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
///       defaultActions:
///         - type: forward
///           targetGroupArn: ${frontEndTargetGroup.arn}
/// ```
///
///
/// With weighted target groups:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndBlue = new aws.lb.TargetGroup("front_end_blue", {});
/// const frontEndGreen = new aws.lb.TargetGroup("front_end_green", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEnd.arn,
///     port: 443,
///     protocol: "HTTPS",
///     sslPolicy: "ELBSecurityPolicy-2016-08",
///     certificateArn: "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///     defaultActions: [{
///         type: "forward",
///         forward: {
///             targetGroups: [
///                 {
///                     arn: frontEndBlue.arn,
///                     weight: 100,
///                 },
///                 {
///                     arn: frontEndGreen.arn,
///                     weight: 0,
///                 },
///             ],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_blue = aws.lb.TargetGroup("front_end_blue")
/// front_end_green = aws.lb.TargetGroup("front_end_green")
/// front_end_listener = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end.arn,
///     port=443,
///     protocol="HTTPS",
///     ssl_policy="ELBSecurityPolicy-2016-08",
///     certificate_arn="arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///     default_actions=[{
///         "type": "forward",
///         "forward": {
///             "target_groups": [
///                 {
///                     "arn": front_end_blue.arn,
///                     "weight": 100,
///                 },
///                 {
///                     "arn": front_end_green.arn,
///                     "weight": 0,
///                 },
///             ],
///         },
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
///     var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
///     var frontEndBlue = new Aws.LB.TargetGroup("front_end_blue");
///
///     var frontEndGreen = new Aws.LB.TargetGroup("front_end_green");
///
///     var frontEndListener = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEnd.Arn,
///         Port = 443,
///         Protocol = "HTTPS",
///         SslPolicy = "ELBSecurityPolicy-2016-08",
///         CertificateArn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "forward",
///                 Forward = new Aws.LB.Inputs.ListenerDefaultActionForwardArgs
///                 {
///                     TargetGroups = new[]
///                     {
///                         new Aws.LB.Inputs.ListenerDefaultActionForwardTargetGroupArgs
///                         {
///                             Arn = frontEndBlue.Arn,
///                             Weight = 100,
///                         },
///                         new Aws.LB.Inputs.ListenerDefaultActionForwardTargetGroupArgs
///                         {
///                             Arn = frontEndGreen.Arn,
///                             Weight = 0,
///                         },
///                     },
///                 },
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
/// 		frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontEndBlue, err := lb.NewTargetGroup(ctx, "front_end_blue", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontEndGreen, err := lb.NewTargetGroup(ctx, "front_end_green", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: frontEnd.Arn,
/// 			Port:            pulumi.Int(443),
/// 			Protocol:        pulumi.String("HTTPS"),
/// 			SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// 			CertificateArn:  pulumi.String("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("forward"),
/// 					Forward: &lb.ListenerDefaultActionForwardArgs{
/// 						TargetGroups: lb.ListenerDefaultActionForwardTargetGroupArray{
/// 							&lb.ListenerDefaultActionForwardTargetGroupArgs{
/// 								Arn:    frontEndBlue.Arn,
/// 								Weight: pulumi.Int(100),
/// 							},
/// 							&lb.ListenerDefaultActionForwardTargetGroupArgs{
/// 								Arn:    frontEndGreen.Arn,
/// 								Weight: pulumi.Int(0),
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionForwardArgs;
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
///         var frontEnd = new LoadBalancer("frontEnd");
///
///         var frontEndBlue = new TargetGroup("frontEndBlue");
///
///         var frontEndGreen = new TargetGroup("frontEndGreen");
///
///         var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
///             .loadBalancerArn(frontEnd.arn())
///             .port(443)
///             .protocol("HTTPS")
///             .sslPolicy("ELBSecurityPolicy-2016-08")
///             .certificateArn("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("forward")
///                 .forward(ListenerDefaultActionForwardArgs.builder()
///                     .targetGroups(
///                         ListenerDefaultActionForwardTargetGroupArgs.builder()
///                             .arn(frontEndBlue.arn())
///                             .weight(100)
///                             .build(),
///                         ListenerDefaultActionForwardTargetGroupArgs.builder()
///                             .arn(frontEndGreen.arn())
///                             .weight(0)
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:LoadBalancer
///     name: front_end
///   frontEndBlue:
///     type: aws:lb:TargetGroup
///     name: front_end_blue
///   frontEndGreen:
///     type: aws:lb:TargetGroup
///     name: front_end_green
///   frontEndListener:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEnd.arn}
///       port: '443'
///       protocol: HTTPS
///       sslPolicy: ELBSecurityPolicy-2016-08
///       certificateArn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
///       defaultActions:
///         - type: forward
///           forward:
///             targetGroups:
///               - arn: ${frontEndBlue.arn}
///                 weight: 100
///               - arn: ${frontEndGreen.arn}
///                 weight: 0
/// ```
///
///
/// To a NLB:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEndAwsLb.arn,
///     port: 443,
///     protocol: "TLS",
///     sslPolicy: "ELBSecurityPolicy-2016-08",
///     certificateArn: "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///     alpnPolicy: "HTTP2Preferred",
///     defaultActions: [{
///         type: "forward",
///         targetGroupArn: frontEndAwsLbTargetGroup.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end_aws_lb["arn"],
///     port=443,
///     protocol="TLS",
///     ssl_policy="ELBSecurityPolicy-2016-08",
///     certificate_arn="arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///     alpn_policy="HTTP2Preferred",
///     default_actions=[{
///         "type": "forward",
///         "target_group_arn": front_end_aws_lb_target_group["arn"],
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
///     var frontEnd = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEndAwsLb.Arn,
///         Port = 443,
///         Protocol = "TLS",
///         SslPolicy = "ELBSecurityPolicy-2016-08",
///         CertificateArn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
///         AlpnPolicy = "HTTP2Preferred",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "forward",
///                 TargetGroupArn = frontEndAwsLbTargetGroup.Arn,
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
/// 		_, err := lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: pulumi.Any(frontEndAwsLb.Arn),
/// 			Port:            pulumi.Int(443),
/// 			Protocol:        pulumi.String("TLS"),
/// 			SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// 			CertificateArn:  pulumi.String("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"),
/// 			AlpnPolicy:      pulumi.String("HTTP2Preferred"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type:           pulumi.String("forward"),
/// 					TargetGroupArn: pulumi.Any(frontEndAwsLbTargetGroup.Arn),
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
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
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
///         var frontEnd = new Listener("frontEnd", ListenerArgs.builder()
///             .loadBalancerArn(frontEndAwsLb.arn())
///             .port(443)
///             .protocol("TLS")
///             .sslPolicy("ELBSecurityPolicy-2016-08")
///             .certificateArn("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4")
///             .alpnPolicy("HTTP2Preferred")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("forward")
///                 .targetGroupArn(frontEndAwsLbTargetGroup.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEndAwsLb.arn}
///       port: '443'
///       protocol: TLS
///       sslPolicy: ELBSecurityPolicy-2016-08
///       certificateArn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
///       alpnPolicy: HTTP2Preferred
///       defaultActions:
///         - type: forward
///           targetGroupArn: ${frontEndAwsLbTargetGroup.arn}
/// ```
///
///
/// ### Redirect Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEnd.arn,
///     port: 80,
///     protocol: "HTTP",
///     defaultActions: [{
///         type: "redirect",
///         redirect: {
///             port: "443",
///             protocol: "HTTPS",
///             statusCode: "HTTP_301",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end.arn,
///     port=80,
///     protocol="HTTP",
///     default_actions=[{
///         "type": "redirect",
///         "redirect": {
///             "port": "443",
///             "protocol": "HTTPS",
///             "status_code": "HTTP_301",
///         },
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
///     var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
///     var frontEndListener = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEnd.Arn,
///         Port = 80,
///         Protocol = "HTTP",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "redirect",
///                 Redirect = new Aws.LB.Inputs.ListenerDefaultActionRedirectArgs
///                 {
///                     Port = "443",
///                     Protocol = "HTTPS",
///                     StatusCode = "HTTP_301",
///                 },
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
/// 		frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: frontEnd.Arn,
/// 			Port:            pulumi.Int(80),
/// 			Protocol:        pulumi.String("HTTP"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("redirect"),
/// 					Redirect: &lb.ListenerDefaultActionRedirectArgs{
/// 						Port:       pulumi.String("443"),
/// 						Protocol:   pulumi.String("HTTPS"),
/// 						StatusCode: pulumi.String("HTTP_301"),
/// 					},
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionRedirectArgs;
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
///         var frontEnd = new LoadBalancer("frontEnd");
///
///         var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
///             .loadBalancerArn(frontEnd.arn())
///             .port(80)
///             .protocol("HTTP")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("redirect")
///                 .redirect(ListenerDefaultActionRedirectArgs.builder()
///                     .port("443")
///                     .protocol("HTTPS")
///                     .statusCode("HTTP_301")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:LoadBalancer
///     name: front_end
///   frontEndListener:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEnd.arn}
///       port: '80'
///       protocol: HTTP
///       defaultActions:
///         - type: redirect
///           redirect:
///             port: '443'
///             protocol: HTTPS
///             statusCode: HTTP_301
/// ```
///
///
/// ### Fixed-response Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEnd.arn,
///     port: 80,
///     protocol: "HTTP",
///     defaultActions: [{
///         type: "fixed-response",
///         fixedResponse: {
///             contentType: "text/plain",
///             messageBody: "Fixed response content",
///             statusCode: "200",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end.arn,
///     port=80,
///     protocol="HTTP",
///     default_actions=[{
///         "type": "fixed-response",
///         "fixed_response": {
///             "content_type": "text/plain",
///             "message_body": "Fixed response content",
///             "status_code": "200",
///         },
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
///     var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
///     var frontEndListener = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEnd.Arn,
///         Port = 80,
///         Protocol = "HTTP",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "fixed-response",
///                 FixedResponse = new Aws.LB.Inputs.ListenerDefaultActionFixedResponseArgs
///                 {
///                     ContentType = "text/plain",
///                     MessageBody = "Fixed response content",
///                     StatusCode = "200",
///                 },
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
/// 		frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: frontEnd.Arn,
/// 			Port:            pulumi.Int(80),
/// 			Protocol:        pulumi.String("HTTP"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("fixed-response"),
/// 					FixedResponse: &lb.ListenerDefaultActionFixedResponseArgs{
/// 						ContentType: pulumi.String("text/plain"),
/// 						MessageBody: pulumi.String("Fixed response content"),
/// 						StatusCode:  pulumi.String("200"),
/// 					},
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionFixedResponseArgs;
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
///         var frontEnd = new LoadBalancer("frontEnd");
///
///         var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
///             .loadBalancerArn(frontEnd.arn())
///             .port(80)
///             .protocol("HTTP")
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("fixed-response")
///                 .fixedResponse(ListenerDefaultActionFixedResponseArgs.builder()
///                     .contentType("text/plain")
///                     .messageBody("Fixed response content")
///                     .statusCode("200")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:LoadBalancer
///     name: front_end
///   frontEndListener:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEnd.arn}
///       port: '80'
///       protocol: HTTP
///       defaultActions:
///         - type: fixed-response
///           fixedResponse:
///             contentType: text/plain
///             messageBody: Fixed response content
///             statusCode: '200'
/// ```
///
///
/// ### Authenticate-cognito Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndTargetGroup = new aws.lb.TargetGroup("front_end", {});
/// const pool = new aws.cognito.UserPool("pool", {});
/// const client = new aws.cognito.UserPoolClient("client", {});
/// const domain = new aws.cognito.UserPoolDomain("domain", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEnd.arn,
///     port: 80,
///     protocol: "HTTP",
///     defaultActions: [
///         {
///             type: "authenticate-cognito",
///             authenticateCognito: {
///                 userPoolArn: pool.arn,
///                 userPoolClientId: client.id,
///                 userPoolDomain: domain.domain,
///             },
///         },
///         {
///             type: "forward",
///             targetGroupArn: frontEndTargetGroup.arn,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_target_group = aws.lb.TargetGroup("front_end")
/// pool = aws.cognito.UserPool("pool")
/// client = aws.cognito.UserPoolClient("client")
/// domain = aws.cognito.UserPoolDomain("domain")
/// front_end_listener = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end.arn,
///     port=80,
///     protocol="HTTP",
///     default_actions=[
///         {
///             "type": "authenticate-cognito",
///             "authenticate_cognito": {
///                 "user_pool_arn": pool.arn,
///                 "user_pool_client_id": client.id,
///                 "user_pool_domain": domain.domain,
///             },
///         },
///         {
///             "type": "forward",
///             "target_group_arn": front_end_target_group.arn,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
///     var frontEndTargetGroup = new Aws.LB.TargetGroup("front_end");
///
///     var pool = new Aws.Cognito.UserPool("pool");
///
///     var client = new Aws.Cognito.UserPoolClient("client");
///
///     var domain = new Aws.Cognito.UserPoolDomain("domain");
///
///     var frontEndListener = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEnd.Arn,
///         Port = 80,
///         Protocol = "HTTP",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "authenticate-cognito",
///                 AuthenticateCognito = new Aws.LB.Inputs.ListenerDefaultActionAuthenticateCognitoArgs
///                 {
///                     UserPoolArn = pool.Arn,
///                     UserPoolClientId = client.Id,
///                     UserPoolDomain = domain.Domain,
///                 },
///             },
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "forward",
///                 TargetGroupArn = frontEndTargetGroup.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontEndTargetGroup, err := lb.NewTargetGroup(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pool, err := cognito.NewUserPool(ctx, "pool", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		client, err := cognito.NewUserPoolClient(ctx, "client", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		domain, err := cognito.NewUserPoolDomain(ctx, "domain", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: frontEnd.Arn,
/// 			Port:            pulumi.Int(80),
/// 			Protocol:        pulumi.String("HTTP"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("authenticate-cognito"),
/// 					AuthenticateCognito: &lb.ListenerDefaultActionAuthenticateCognitoArgs{
/// 						UserPoolArn:      pool.Arn,
/// 						UserPoolClientId: client.ID(),
/// 						UserPoolDomain:   domain.Domain,
/// 					},
/// 				},
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type:           pulumi.String("forward"),
/// 					TargetGroupArn: frontEndTargetGroup.Arn,
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolClient;
/// import com.pulumi.aws.cognito.UserPoolDomain;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionAuthenticateCognitoArgs;
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
///         var frontEnd = new LoadBalancer("frontEnd");
///
///         var frontEndTargetGroup = new TargetGroup("frontEndTargetGroup");
///
///         var pool = new UserPool("pool");
///
///         var client = new UserPoolClient("client");
///
///         var domain = new UserPoolDomain("domain");
///
///         var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
///             .loadBalancerArn(frontEnd.arn())
///             .port(80)
///             .protocol("HTTP")
///             .defaultActions(
///                 ListenerDefaultActionArgs.builder()
///                     .type("authenticate-cognito")
///                     .authenticateCognito(ListenerDefaultActionAuthenticateCognitoArgs.builder()
///                         .userPoolArn(pool.arn())
///                         .userPoolClientId(client.id())
///                         .userPoolDomain(domain.domain())
///                         .build())
///                     .build(),
///                 ListenerDefaultActionArgs.builder()
///                     .type("forward")
///                     .targetGroupArn(frontEndTargetGroup.arn())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:LoadBalancer
///     name: front_end
///   frontEndTargetGroup:
///     type: aws:lb:TargetGroup
///     name: front_end
///   pool:
///     type: aws:cognito:UserPool
///   client:
///     type: aws:cognito:UserPoolClient
///   domain:
///     type: aws:cognito:UserPoolDomain
///   frontEndListener:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEnd.arn}
///       port: '80'
///       protocol: HTTP
///       defaultActions:
///         - type: authenticate-cognito
///           authenticateCognito:
///             userPoolArn: ${pool.arn}
///             userPoolClientId: ${client.id}
///             userPoolDomain: ${domain.domain}
///         - type: forward
///           targetGroupArn: ${frontEndTargetGroup.arn}
/// ```
///
///
/// ### Authenticate-OIDC Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndTargetGroup = new aws.lb.TargetGroup("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
///     loadBalancerArn: frontEnd.arn,
///     port: 80,
///     protocol: "HTTP",
///     defaultActions: [
///         {
///             type: "authenticate-oidc",
///             authenticateOidc: {
///                 authorizationEndpoint: "https://example.com/authorization_endpoint",
///                 clientId: "client_id",
///                 clientSecret: "client_secret",
///                 issuer: "https://example.com",
///                 tokenEndpoint: "https://example.com/token_endpoint",
///                 userInfoEndpoint: "https://example.com/user_info_endpoint",
///             },
///         },
///         {
///             type: "forward",
///             targetGroupArn: frontEndTargetGroup.arn,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_target_group = aws.lb.TargetGroup("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
///     load_balancer_arn=front_end.arn,
///     port=80,
///     protocol="HTTP",
///     default_actions=[
///         {
///             "type": "authenticate-oidc",
///             "authenticate_oidc": {
///                 "authorization_endpoint": "https://example.com/authorization_endpoint",
///                 "client_id": "client_id",
///                 "client_secret": "client_secret",
///                 "issuer": "https://example.com",
///                 "token_endpoint": "https://example.com/token_endpoint",
///                 "user_info_endpoint": "https://example.com/user_info_endpoint",
///             },
///         },
///         {
///             "type": "forward",
///             "target_group_arn": front_end_target_group.arn,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
///     var frontEndTargetGroup = new Aws.LB.TargetGroup("front_end");
///
///     var frontEndListener = new Aws.LB.Listener("front_end", new()
///     {
///         LoadBalancerArn = frontEnd.Arn,
///         Port = 80,
///         Protocol = "HTTP",
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "authenticate-oidc",
///                 AuthenticateOidc = new Aws.LB.Inputs.ListenerDefaultActionAuthenticateOidcArgs
///                 {
///                     AuthorizationEndpoint = "https://example.com/authorization_endpoint",
///                     ClientId = "client_id",
///                     ClientSecret = "client_secret",
///                     Issuer = "https://example.com",
///                     TokenEndpoint = "https://example.com/token_endpoint",
///                     UserInfoEndpoint = "https://example.com/user_info_endpoint",
///                 },
///             },
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "forward",
///                 TargetGroupArn = frontEndTargetGroup.Arn,
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
/// 		frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frontEndTargetGroup, err := lb.NewTargetGroup(ctx, "front_end", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// 			LoadBalancerArn: frontEnd.Arn,
/// 			Port:            pulumi.Int(80),
/// 			Protocol:        pulumi.String("HTTP"),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("authenticate-oidc"),
/// 					AuthenticateOidc: &lb.ListenerDefaultActionAuthenticateOidcArgs{
/// 						AuthorizationEndpoint: pulumi.String("https://example.com/authorization_endpoint"),
/// 						ClientId:              pulumi.String("client_id"),
/// 						ClientSecret:          pulumi.String("client_secret"),
/// 						Issuer:                pulumi.String("https://example.com"),
/// 						TokenEndpoint:         pulumi.String("https://example.com/token_endpoint"),
/// 						UserInfoEndpoint:      pulumi.String("https://example.com/user_info_endpoint"),
/// 					},
/// 				},
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type:           pulumi.String("forward"),
/// 					TargetGroupArn: frontEndTargetGroup.Arn,
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionAuthenticateOidcArgs;
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
///         var frontEnd = new LoadBalancer("frontEnd");
///
///         var frontEndTargetGroup = new TargetGroup("frontEndTargetGroup");
///
///         var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
///             .loadBalancerArn(frontEnd.arn())
///             .port(80)
///             .protocol("HTTP")
///             .defaultActions(
///                 ListenerDefaultActionArgs.builder()
///                     .type("authenticate-oidc")
///                     .authenticateOidc(ListenerDefaultActionAuthenticateOidcArgs.builder()
///                         .authorizationEndpoint("https://example.com/authorization_endpoint")
///                         .clientId("client_id")
///                         .clientSecret("client_secret")
///                         .issuer("https://example.com")
///                         .tokenEndpoint("https://example.com/token_endpoint")
///                         .userInfoEndpoint("https://example.com/user_info_endpoint")
///                         .build())
///                     .build(),
///                 ListenerDefaultActionArgs.builder()
///                     .type("forward")
///                     .targetGroupArn(frontEndTargetGroup.arn())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   frontEnd:
///     type: aws:lb:LoadBalancer
///     name: front_end
///   frontEndTargetGroup:
///     type: aws:lb:TargetGroup
///     name: front_end
///   frontEndListener:
///     type: aws:lb:Listener
///     name: front_end
///     properties:
///       loadBalancerArn: ${frontEnd.arn}
///       port: '80'
///       protocol: HTTP
///       defaultActions:
///         - type: authenticate-oidc
///           authenticateOidc:
///             authorizationEndpoint: https://example.com/authorization_endpoint
///             clientId: client_id
///             clientSecret: client_secret
///             issuer: https://example.com
///             tokenEndpoint: https://example.com/token_endpoint
///             userInfoEndpoint: https://example.com/user_info_endpoint
///         - type: forward
///           targetGroupArn: ${frontEndTargetGroup.arn}
/// ```
///
///
/// ### JWT Validation Action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.Listener("test", {
///     loadBalancerArn: testAwsLb.id,
///     protocol: "HTTPS",
///     port: 443,
///     sslPolicy: "ELBSecurityPolicy-2016-08",
///     certificateArn: testAwsIamServerCertificate.arn,
///     defaultActions: [
///         {
///             type: "jwt-validation",
///             jwtValidation: {
///                 issuer: "https://example.com",
///                 jwksEndpoint: "https://example.com/.well-known/jwks.json",
///                 additionalClaims: [
///                     {
///                         format: "string-array",
///                         name: "claim_name1",
///                         values: [
///                             "value1",
///                             "value2",
///                         ],
///                     },
///                     {
///                         format: "single-string",
///                         name: "claim_name2",
///                         values: ["value1"],
///                     },
///                 ],
///             },
///         },
///         {
///             targetGroupArn: testAwsLbTargetGroup.id,
///             type: "forward",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.Listener("test",
///     load_balancer_arn=test_aws_lb["id"],
///     protocol="HTTPS",
///     port=443,
///     ssl_policy="ELBSecurityPolicy-2016-08",
///     certificate_arn=test_aws_iam_server_certificate["arn"],
///     default_actions=[
///         {
///             "type": "jwt-validation",
///             "jwt_validation": {
///                 "issuer": "https://example.com",
///                 "jwks_endpoint": "https://example.com/.well-known/jwks.json",
///                 "additional_claims": [
///                     {
///                         "format": "string-array",
///                         "name": "claim_name1",
///                         "values": [
///                             "value1",
///                             "value2",
///                         ],
///                     },
///                     {
///                         "format": "single-string",
///                         "name": "claim_name2",
///                         "values": ["value1"],
///                     },
///                 ],
///             },
///         },
///         {
///             "target_group_arn": test_aws_lb_target_group["id"],
///             "type": "forward",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.LB.Listener("test", new()
///     {
///         LoadBalancerArn = testAwsLb.Id,
///         Protocol = "HTTPS",
///         Port = 443,
///         SslPolicy = "ELBSecurityPolicy-2016-08",
///         CertificateArn = testAwsIamServerCertificate.Arn,
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "jwt-validation",
///                 JwtValidation = new Aws.LB.Inputs.ListenerDefaultActionJwtValidationArgs
///                 {
///                     Issuer = "https://example.com",
///                     JwksEndpoint = "https://example.com/.well-known/jwks.json",
///                     AdditionalClaims = new[]
///                     {
///                         new Aws.LB.Inputs.ListenerDefaultActionJwtValidationAdditionalClaimArgs
///                         {
///                             Format = "string-array",
///                             Name = "claim_name1",
///                             Values = new[]
///                             {
///                                 "value1",
///                                 "value2",
///                             },
///                         },
///                         new Aws.LB.Inputs.ListenerDefaultActionJwtValidationAdditionalClaimArgs
///                         {
///                             Format = "single-string",
///                             Name = "claim_name2",
///                             Values = new[]
///                             {
///                                 "value1",
///                             },
///                         },
///                     },
///                 },
///             },
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 TargetGroupArn = testAwsLbTargetGroup.Id,
///                 Type = "forward",
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
/// 		_, err := lb.NewListener(ctx, "test", &lb.ListenerArgs{
/// 			LoadBalancerArn: pulumi.Any(testAwsLb.Id),
/// 			Protocol:        pulumi.String("HTTPS"),
/// 			Port:            pulumi.Int(443),
/// 			SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// 			CertificateArn:  pulumi.Any(testAwsIamServerCertificate.Arn),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("jwt-validation"),
/// 					JwtValidation: &lb.ListenerDefaultActionJwtValidationArgs{
/// 						Issuer:       pulumi.String("https://example.com"),
/// 						JwksEndpoint: pulumi.String("https://example.com/.well-known/jwks.json"),
/// 						AdditionalClaims: lb.ListenerDefaultActionJwtValidationAdditionalClaimArray{
/// 							&lb.ListenerDefaultActionJwtValidationAdditionalClaimArgs{
/// 								Format: pulumi.String("string-array"),
/// 								Name:   pulumi.String("claim_name1"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("value1"),
/// 									pulumi.String("value2"),
/// 								},
/// 							},
/// 							&lb.ListenerDefaultActionJwtValidationAdditionalClaimArgs{
/// 								Format: pulumi.String("single-string"),
/// 								Name:   pulumi.String("claim_name2"),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("value1"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&lb.ListenerDefaultActionArgs{
/// 					TargetGroupArn: pulumi.Any(testAwsLbTargetGroup.Id),
/// 					Type:           pulumi.String("forward"),
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
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionJwtValidationArgs;
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
///         var test = new Listener("test", ListenerArgs.builder()
///             .loadBalancerArn(testAwsLb.id())
///             .protocol("HTTPS")
///             .port(443)
///             .sslPolicy("ELBSecurityPolicy-2016-08")
///             .certificateArn(testAwsIamServerCertificate.arn())
///             .defaultActions(
///                 ListenerDefaultActionArgs.builder()
///                     .type("jwt-validation")
///                     .jwtValidation(ListenerDefaultActionJwtValidationArgs.builder()
///                         .issuer("https://example.com")
///                         .jwksEndpoint("https://example.com/.well-known/jwks.json")
///                         .additionalClaims(
///                             ListenerDefaultActionJwtValidationAdditionalClaimArgs.builder()
///                                 .format("string-array")
///                                 .name("claim_name1")
///                                 .values(
///                                     "value1",
///                                     "value2")
///                                 .build(),
///                             ListenerDefaultActionJwtValidationAdditionalClaimArgs.builder()
///                                 .format("single-string")
///                                 .name("claim_name2")
///                                 .values("value1")
///                                 .build())
///                         .build())
///                     .build(),
///                 ListenerDefaultActionArgs.builder()
///                     .targetGroupArn(testAwsLbTargetGroup.id())
///                     .type("forward")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:lb:Listener
///     properties:
///       loadBalancerArn: ${testAwsLb.id}
///       protocol: HTTPS
///       port: '443'
///       sslPolicy: ELBSecurityPolicy-2016-08
///       certificateArn: ${testAwsIamServerCertificate.arn}
///       defaultActions:
///         - type: jwt-validation
///           jwtValidation:
///             issuer: https://example.com
///             jwksEndpoint: https://example.com/.well-known/jwks.json
///             additionalClaims:
///               - format: string-array
///                 name: claim_name1
///                 values:
///                   - value1
///                   - value2
///               - format: single-string
///                 name: claim_name2
///                 values:
///                   - value1
///         - targetGroupArn: ${testAwsLbTargetGroup.id}
///           type: forward
/// ```
///
///
/// ### Gateway Load Balancer Listener
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
///     loadBalancerType: "gateway",
///     name: "example",
///     subnetMappings: [{
///         subnetId: exampleAwsSubnet.id,
///     }],
/// });
/// const exampleTargetGroup = new aws.lb.TargetGroup("example", {
///     name: "example",
///     port: 6081,
///     protocol: "GENEVE",
///     vpcId: exampleAwsVpc.id,
///     healthCheck: {
///         port: "80",
///         protocol: "HTTP",
///     },
/// });
/// const exampleListener = new aws.lb.Listener("example", {
///     loadBalancerArn: example.id,
///     defaultActions: [{
///         targetGroupArn: exampleTargetGroup.id,
///         type: "forward",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
///     load_balancer_type="gateway",
///     name="example",
///     subnet_mappings=[{
///         "subnet_id": example_aws_subnet["id"],
///     }])
/// example_target_group = aws.lb.TargetGroup("example",
///     name="example",
///     port=6081,
///     protocol="GENEVE",
///     vpc_id=example_aws_vpc["id"],
///     health_check={
///         "port": "80",
///         "protocol": "HTTP",
///     })
/// example_listener = aws.lb.Listener("example",
///     load_balancer_arn=example.id,
///     default_actions=[{
///         "target_group_arn": example_target_group.id,
///         "type": "forward",
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
///     var example = new Aws.LB.LoadBalancer("example", new()
///     {
///         LoadBalancerType = "gateway",
///         Name = "example",
///         SubnetMappings = new[]
///         {
///             new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
///             {
///                 SubnetId = exampleAwsSubnet.Id,
///             },
///         },
///     });
///
///     var exampleTargetGroup = new Aws.LB.TargetGroup("example", new()
///     {
///         Name = "example",
///         Port = 6081,
///         Protocol = "GENEVE",
///         VpcId = exampleAwsVpc.Id,
///         HealthCheck = new Aws.LB.Inputs.TargetGroupHealthCheckArgs
///         {
///             Port = "80",
///             Protocol = "HTTP",
///         },
///     });
///
///     var exampleListener = new Aws.LB.Listener("example", new()
///     {
///         LoadBalancerArn = example.Id,
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 TargetGroupArn = exampleTargetGroup.Id,
///                 Type = "forward",
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
/// 		example, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			LoadBalancerType: pulumi.String("gateway"),
/// 			Name:             pulumi.String("example"),
/// 			SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// 				&lb.LoadBalancerSubnetMappingArgs{
/// 					SubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTargetGroup, err := lb.NewTargetGroup(ctx, "example", &lb.TargetGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Port:     pulumi.Int(6081),
/// 			Protocol: pulumi.String("GENEVE"),
/// 			VpcId:    pulumi.Any(exampleAwsVpc.Id),
/// 			HealthCheck: &lb.TargetGroupHealthCheckArgs{
/// 				Port:     pulumi.String("80"),
/// 				Protocol: pulumi.String("HTTP"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// 			LoadBalancerArn: example.ID(),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					TargetGroupArn: exampleTargetGroup.ID(),
/// 					Type:           pulumi.String("forward"),
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.inputs.LoadBalancerSubnetMappingArgs;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.TargetGroupArgs;
/// import com.pulumi.aws.lb.inputs.TargetGroupHealthCheckArgs;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
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
///         var example = new LoadBalancer("example", LoadBalancerArgs.builder()
///             .loadBalancerType("gateway")
///             .name("example")
///             .subnetMappings(LoadBalancerSubnetMappingArgs.builder()
///                 .subnetId(exampleAwsSubnet.id())
///                 .build())
///             .build());
///
///         var exampleTargetGroup = new TargetGroup("exampleTargetGroup", TargetGroupArgs.builder()
///             .name("example")
///             .port(6081)
///             .protocol("GENEVE")
///             .vpcId(exampleAwsVpc.id())
///             .healthCheck(TargetGroupHealthCheckArgs.builder()
///                 .port("80")
///                 .protocol("HTTP")
///                 .build())
///             .build());
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .loadBalancerArn(example.id())
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .targetGroupArn(exampleTargetGroup.id())
///                 .type("forward")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lb:LoadBalancer
///     properties:
///       loadBalancerType: gateway
///       name: example
///       subnetMappings:
///         - subnetId: ${exampleAwsSubnet.id}
///   exampleTargetGroup:
///     type: aws:lb:TargetGroup
///     name: example
///     properties:
///       name: example
///       port: 6081
///       protocol: GENEVE
///       vpcId: ${exampleAwsVpc.id}
///       healthCheck:
///         port: 80
///         protocol: HTTP
///   exampleListener:
///     type: aws:lb:Listener
///     name: example
///     properties:
///       loadBalancerArn: ${example.id}
///       defaultActions:
///         - targetGroupArn: ${exampleTargetGroup.id}
///           type: forward
/// ```
///
///
/// ### Mutual TLS Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {loadBalancerType: "application"});
/// const exampleTargetGroup = new aws.lb.TargetGroup("example", {});
/// const exampleListener = new aws.lb.Listener("example", {
///     loadBalancerArn: example.id,
///     defaultActions: [{
///         targetGroupArn: exampleTargetGroup.id,
///         type: "forward",
///     }],
///     mutualAuthentication: {
///         mode: "verify",
///         trustStoreArn: "...",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example", load_balancer_type="application")
/// example_target_group = aws.lb.TargetGroup("example")
/// example_listener = aws.lb.Listener("example",
///     load_balancer_arn=example.id,
///     default_actions=[{
///         "target_group_arn": example_target_group.id,
///         "type": "forward",
///     }],
///     mutual_authentication={
///         "mode": "verify",
///         "trust_store_arn": "...",
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
///     var example = new Aws.LB.LoadBalancer("example", new()
///     {
///         LoadBalancerType = "application",
///     });
///
///     var exampleTargetGroup = new Aws.LB.TargetGroup("example");
///
///     var exampleListener = new Aws.LB.Listener("example", new()
///     {
///         LoadBalancerArn = example.Id,
///         DefaultActions = new[]
///         {
///             new Aws.LB.Inputs.ListenerDefaultActionArgs
///             {
///                 TargetGroupArn = exampleTargetGroup.Id,
///                 Type = "forward",
///             },
///         },
///         MutualAuthentication = new Aws.LB.Inputs.ListenerMutualAuthenticationArgs
///         {
///             Mode = "verify",
///             TrustStoreArn = "...",
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
/// 		example, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			LoadBalancerType: pulumi.String("application"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTargetGroup, err := lb.NewTargetGroup(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// 			LoadBalancerArn: example.ID(),
/// 			DefaultActions: lb.ListenerDefaultActionArray{
/// 				&lb.ListenerDefaultActionArgs{
/// 					TargetGroupArn: exampleTargetGroup.ID(),
/// 					Type:           pulumi.String("forward"),
/// 				},
/// 			},
/// 			MutualAuthentication: &lb.ListenerMutualAuthenticationArgs{
/// 				Mode:          pulumi.String("verify"),
/// 				TrustStoreArn: pulumi.String("..."),
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
/// import com.pulumi.aws.lb.LoadBalancer;
/// import com.pulumi.aws.lb.LoadBalancerArgs;
/// import com.pulumi.aws.lb.TargetGroup;
/// import com.pulumi.aws.lb.Listener;
/// import com.pulumi.aws.lb.ListenerArgs;
/// import com.pulumi.aws.lb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.aws.lb.inputs.ListenerMutualAuthenticationArgs;
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
///         var example = new LoadBalancer("example", LoadBalancerArgs.builder()
///             .loadBalancerType("application")
///             .build());
///
///         var exampleTargetGroup = new TargetGroup("exampleTargetGroup");
///
///         var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
///             .loadBalancerArn(example.id())
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .targetGroupArn(exampleTargetGroup.id())
///                 .type("forward")
///                 .build())
///             .mutualAuthentication(ListenerMutualAuthenticationArgs.builder()
///                 .mode("verify")
///                 .trustStoreArn("...")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lb:LoadBalancer
///     properties:
///       loadBalancerType: application
///   exampleTargetGroup:
///     type: aws:lb:TargetGroup
///     name: example
///   exampleListener:
///     type: aws:lb:Listener
///     name: example
///     properties:
///       loadBalancerArn: ${example.id}
///       defaultActions:
///         - targetGroupArn: ${exampleTargetGroup.id}
///           type: forward
///       mutualAuthentication:
///         mode: verify
///         trustStoreArn: '...'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the load balancer listener.
///
/// Using `pulumi import`, import listeners using their ARN. For example:
///
/// % pulumi import aws_lb_listener.front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener/app/front-end-alb/8e4497da625e2d8a/9ab28ade35828f96
class Listener {
  /// Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  final String? alpnPolicy;
  /// ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  final String? certificateArn;
  /// Configuration block for default actions. See below.
  final List<pulumi_aws_lb.ListenerDefaultAction>? defaultActions;
  /// The mutual authentication configuration information. See below.
  final pulumi_aws_lb.ListenerMutualAuthentication? mutualAuthentication;
  /// Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  final int? port;
  /// Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, and `TCP_UDP`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  final String? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertLeafHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznMtlsClientcertValidityHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznTlsCipherSuiteHeaderName;
  /// Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  final String? routingHttpRequestXAmznTlsVersionHeaderName;
  /// Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  final String? routingHttpResponseAccessControlAllowCredentialsHeaderValue;
  /// Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  final String? routingHttpResponseAccessControlAllowHeadersHeaderValue;
  /// Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  final String? routingHttpResponseAccessControlAllowMethodsHeaderValue;
  /// Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  final String? routingHttpResponseAccessControlAllowOriginHeaderValue;
  /// Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  final String? routingHttpResponseAccessControlExposeHeadersHeaderValue;
  /// Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  final String? routingHttpResponseAccessControlMaxAgeHeaderValue;
  /// Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  final String? routingHttpResponseContentSecurityPolicyHeaderValue;
  /// Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  final bool? routingHttpResponseServerEnabled;
  /// Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  final String? routingHttpResponseStrictTransportSecurityHeaderValue;
  /// Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  final String? routingHttpResponseXContentTypeOptionsHeaderValue;
  /// Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  final String? routingHttpResponseXFrameOptionsHeaderValue;
  /// Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  final String? sslPolicy;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
  final Map<String, String>? tags;
  /// TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  final int? tcpIdleTimeoutSeconds;

  /// Creates a new [Listener].
  /// [alpnPolicy] Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if `protocol` is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  /// [certificateArn] ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the `aws.lb.ListenerCertificate` resource.
  /// [defaultActions] Configuration block for default actions. See below.
  /// [mutualAuthentication] The mutual authentication configuration information. See below.
  /// [port] Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  /// [protocol] Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, and `TCP_UDP`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingHttpRequestXAmznMtlsClientcertHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertIssuerHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertLeafHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertSubjectHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznMtlsClientcertValidityHeaderName] Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznTlsCipherSuiteHeaderName] Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpRequestXAmznTlsVersionHeaderName] Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  /// [routingHttpResponseAccessControlAllowCredentialsHeaderValue] Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `true`.
  /// [routingHttpResponseAccessControlAllowHeadersHeaderValue] Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  /// [routingHttpResponseAccessControlAllowMethodsHeaderValue] Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  /// [routingHttpResponseAccessControlAllowOriginHeaderValue] Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  /// [routingHttpResponseAccessControlExposeHeadersHeaderValue] Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  /// [routingHttpResponseAccessControlMaxAgeHeaderValue] Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between `0` and `86400`. This value is browser specific, consult the Access-Control-Max-Age documentation.
  /// [routingHttpResponseContentSecurityPolicyHeaderValue] Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  /// [routingHttpResponseServerEnabled] Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `true` or `false`.
  /// [routingHttpResponseStrictTransportSecurityHeaderValue] Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  /// [routingHttpResponseXContentTypeOptionsHeaderValue] Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is `nosniff`.
  /// [routingHttpResponseXFrameOptionsHeaderValue] Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  /// [sslPolicy] Name of the SSL Policy for the listener. Required if `protocol` is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tcpIdleTimeoutSeconds] TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between `60` and `6000` inclusive. Default: `350`.
  Listener({
    this.alpnPolicy,
    this.certificateArn,
    this.defaultActions,
    this.mutualAuthentication,
    this.port,
    this.protocol,
    this.region,
    this.routingHttpRequestXAmznMtlsClientcertHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
    this.routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
    this.routingHttpRequestXAmznTlsCipherSuiteHeaderName,
    this.routingHttpRequestXAmznTlsVersionHeaderName,
    this.routingHttpResponseAccessControlAllowCredentialsHeaderValue,
    this.routingHttpResponseAccessControlAllowHeadersHeaderValue,
    this.routingHttpResponseAccessControlAllowMethodsHeaderValue,
    this.routingHttpResponseAccessControlAllowOriginHeaderValue,
    this.routingHttpResponseAccessControlExposeHeadersHeaderValue,
    this.routingHttpResponseAccessControlMaxAgeHeaderValue,
    this.routingHttpResponseContentSecurityPolicyHeaderValue,
    this.routingHttpResponseServerEnabled,
    this.routingHttpResponseStrictTransportSecurityHeaderValue,
    this.routingHttpResponseXContentTypeOptionsHeaderValue,
    this.routingHttpResponseXFrameOptionsHeaderValue,
    this.sslPolicy,
    this.tags,
    this.tcpIdleTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpnPolicy': ?alpnPolicy,
      'certificateArn': ?certificateArn,
      'defaultActions': ?defaultActions == null ? null : pulumi.Input.encodeList<pulumi_aws_lb.ListenerDefaultAction, Map<String, dynamic>>(defaultActions!, (value) => value.toMap()),
      'mutualAuthentication': ?mutualAuthentication == null ? null : mutualAuthentication!.toMap(),
      'port': ?port,
      'protocol': ?protocol,
      'region': ?region,
      'routingHttpRequestXAmznMtlsClientcertHeaderName': ?routingHttpRequestXAmznMtlsClientcertHeaderName,
      'routingHttpRequestXAmznMtlsClientcertIssuerHeaderName': ?routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
      'routingHttpRequestXAmznMtlsClientcertLeafHeaderName': ?routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
      'routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName': ?routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
      'routingHttpRequestXAmznMtlsClientcertSubjectHeaderName': ?routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
      'routingHttpRequestXAmznMtlsClientcertValidityHeaderName': ?routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
      'routingHttpRequestXAmznTlsCipherSuiteHeaderName': ?routingHttpRequestXAmznTlsCipherSuiteHeaderName,
      'routingHttpRequestXAmznTlsVersionHeaderName': ?routingHttpRequestXAmznTlsVersionHeaderName,
      'routingHttpResponseAccessControlAllowCredentialsHeaderValue': ?routingHttpResponseAccessControlAllowCredentialsHeaderValue,
      'routingHttpResponseAccessControlAllowHeadersHeaderValue': ?routingHttpResponseAccessControlAllowHeadersHeaderValue,
      'routingHttpResponseAccessControlAllowMethodsHeaderValue': ?routingHttpResponseAccessControlAllowMethodsHeaderValue,
      'routingHttpResponseAccessControlAllowOriginHeaderValue': ?routingHttpResponseAccessControlAllowOriginHeaderValue,
      'routingHttpResponseAccessControlExposeHeadersHeaderValue': ?routingHttpResponseAccessControlExposeHeadersHeaderValue,
      'routingHttpResponseAccessControlMaxAgeHeaderValue': ?routingHttpResponseAccessControlMaxAgeHeaderValue,
      'routingHttpResponseContentSecurityPolicyHeaderValue': ?routingHttpResponseContentSecurityPolicyHeaderValue,
      'routingHttpResponseServerEnabled': ?routingHttpResponseServerEnabled,
      'routingHttpResponseStrictTransportSecurityHeaderValue': ?routingHttpResponseStrictTransportSecurityHeaderValue,
      'routingHttpResponseXContentTypeOptionsHeaderValue': ?routingHttpResponseXContentTypeOptionsHeaderValue,
      'routingHttpResponseXFrameOptionsHeaderValue': ?routingHttpResponseXFrameOptionsHeaderValue,
      'sslPolicy': ?sslPolicy,
      'tags': ?tags,
      'tcpIdleTimeoutSeconds': ?tcpIdleTimeoutSeconds,
    };
  }

  factory Listener.fromMap(Map<String, dynamic> map) {
    return Listener(
      alpnPolicy: map['alpnPolicy'] == null ? null : map['alpnPolicy'] as String,
      certificateArn: map['certificateArn'] == null ? null : map['certificateArn'] as String,
      defaultActions: map['defaultActions'] == null ? null : pulumi.Input.decodeList<pulumi_aws_lb.ListenerDefaultAction>(map['defaultActions'], (value) => pulumi_aws_lb.ListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>())),
      mutualAuthentication: map['mutualAuthentication'] == null ? null : pulumi_aws_lb.ListenerMutualAuthentication.fromMap((map['mutualAuthentication'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routingHttpRequestXAmznMtlsClientcertHeaderName: map['routingHttpRequestXAmznMtlsClientcertHeaderName'] == null ? null : map['routingHttpRequestXAmznMtlsClientcertHeaderName'] as String,
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName: map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName'] == null ? null : map['routingHttpRequestXAmznMtlsClientcertIssuerHeaderName'] as String,
      routingHttpRequestXAmznMtlsClientcertLeafHeaderName: map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName'] == null ? null : map['routingHttpRequestXAmznMtlsClientcertLeafHeaderName'] as String,
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName: map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName'] == null ? null : map['routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName'] as String,
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName: map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName'] == null ? null : map['routingHttpRequestXAmznMtlsClientcertSubjectHeaderName'] as String,
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName: map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName'] == null ? null : map['routingHttpRequestXAmznMtlsClientcertValidityHeaderName'] as String,
      routingHttpRequestXAmznTlsCipherSuiteHeaderName: map['routingHttpRequestXAmznTlsCipherSuiteHeaderName'] == null ? null : map['routingHttpRequestXAmznTlsCipherSuiteHeaderName'] as String,
      routingHttpRequestXAmznTlsVersionHeaderName: map['routingHttpRequestXAmznTlsVersionHeaderName'] == null ? null : map['routingHttpRequestXAmznTlsVersionHeaderName'] as String,
      routingHttpResponseAccessControlAllowCredentialsHeaderValue: map['routingHttpResponseAccessControlAllowCredentialsHeaderValue'] == null ? null : map['routingHttpResponseAccessControlAllowCredentialsHeaderValue'] as String,
      routingHttpResponseAccessControlAllowHeadersHeaderValue: map['routingHttpResponseAccessControlAllowHeadersHeaderValue'] == null ? null : map['routingHttpResponseAccessControlAllowHeadersHeaderValue'] as String,
      routingHttpResponseAccessControlAllowMethodsHeaderValue: map['routingHttpResponseAccessControlAllowMethodsHeaderValue'] == null ? null : map['routingHttpResponseAccessControlAllowMethodsHeaderValue'] as String,
      routingHttpResponseAccessControlAllowOriginHeaderValue: map['routingHttpResponseAccessControlAllowOriginHeaderValue'] == null ? null : map['routingHttpResponseAccessControlAllowOriginHeaderValue'] as String,
      routingHttpResponseAccessControlExposeHeadersHeaderValue: map['routingHttpResponseAccessControlExposeHeadersHeaderValue'] == null ? null : map['routingHttpResponseAccessControlExposeHeadersHeaderValue'] as String,
      routingHttpResponseAccessControlMaxAgeHeaderValue: map['routingHttpResponseAccessControlMaxAgeHeaderValue'] == null ? null : map['routingHttpResponseAccessControlMaxAgeHeaderValue'] as String,
      routingHttpResponseContentSecurityPolicyHeaderValue: map['routingHttpResponseContentSecurityPolicyHeaderValue'] == null ? null : map['routingHttpResponseContentSecurityPolicyHeaderValue'] as String,
      routingHttpResponseServerEnabled: map['routingHttpResponseServerEnabled'] == null ? null : map['routingHttpResponseServerEnabled'] as bool,
      routingHttpResponseStrictTransportSecurityHeaderValue: map['routingHttpResponseStrictTransportSecurityHeaderValue'] == null ? null : map['routingHttpResponseStrictTransportSecurityHeaderValue'] as String,
      routingHttpResponseXContentTypeOptionsHeaderValue: map['routingHttpResponseXContentTypeOptionsHeaderValue'] == null ? null : map['routingHttpResponseXContentTypeOptionsHeaderValue'] as String,
      routingHttpResponseXFrameOptionsHeaderValue: map['routingHttpResponseXFrameOptionsHeaderValue'] == null ? null : map['routingHttpResponseXFrameOptionsHeaderValue'] as String,
      sslPolicy: map['sslPolicy'] == null ? null : map['sslPolicy'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tcpIdleTimeoutSeconds: map['tcpIdleTimeoutSeconds'] == null ? null : map['tcpIdleTimeoutSeconds'] as int,
    );
  }
}

