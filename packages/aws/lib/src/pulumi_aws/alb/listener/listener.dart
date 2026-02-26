import 'package:pulumi/pulumi.dart';
import '../listener_default_action/listener_default_action.dart';
import '../listener_mutual_authentication/listener_mutual_authentication.dart';
import 'listener_args.dart';

/// Provides a Load Balancer Listener resource.
///
/// > **Note:** <span pulumi-lang-nodejs="`aws.alb.Listener`" pulumi-lang-dotnet="`aws.alb.Listener`" pulumi-lang-go="`alb.Listener`" pulumi-lang-python="`alb.Listener`" pulumi-lang-yaml="`aws.alb.Listener`" pulumi-lang-java="`aws.alb.Listener`">`aws.alb.Listener`</span> is known as <span pulumi-lang-nodejs="`aws.lb.Listener`" pulumi-lang-dotnet="`aws.lb.Listener`" pulumi-lang-go="`lb.Listener`" pulumi-lang-python="`lb.Listener`" pulumi-lang-yaml="`aws.lb.Listener`" pulumi-lang-java="`aws.lb.Listener`">`aws.lb.Listener`</span>. The functionality is identical.
///
/// ## Example Usage
///
/// ### Forward Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndTargetGroup = new aws.lb.TargetGroup("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
/// loadBalancerArn: frontEnd.arn,
/// port: 443,
/// protocol: "HTTPS",
/// sslPolicy: "ELBSecurityPolicy-2016-08",
/// certificateArn: "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// defaultActions: [{
/// type: "forward",
/// targetGroupArn: frontEndTargetGroup.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_target_group = aws.lb.TargetGroup("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
/// load_balancer_arn=front_end.arn,
/// port=443,
/// protocol="HTTPS",
/// ssl_policy="ELBSecurityPolicy-2016-08",
/// certificate_arn="arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// default_actions=[{
/// "type": "forward",
/// "target_group_arn": front_end_target_group.arn,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndTargetGroup = new Aws.LB.TargetGroup("front_end");
///
/// var frontEndListener = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEnd.Arn,
/// Port = 443,
/// Protocol = "HTTPS",
/// SslPolicy = "ELBSecurityPolicy-2016-08",
/// CertificateArn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "forward",
/// TargetGroupArn = frontEndTargetGroup.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// frontEndTargetGroup, err := lb.NewTargetGroup(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: frontEnd.Arn,
/// Port:            pulumi.Int(443),
/// Protocol:        pulumi.String("HTTPS"),
/// SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// CertificateArn:  pulumi.String("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type:           pulumi.String("forward"),
/// TargetGroupArn: frontEndTargetGroup.Arn,
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndTargetGroup = new TargetGroup("frontEndTargetGroup");
///
/// var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
/// .loadBalancerArn(frontEnd.arn())
/// .port(443)
/// .protocol("HTTPS")
/// .sslPolicy("ELBSecurityPolicy-2016-08")
/// .certificateArn("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4")
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .type("forward")
/// .targetGroupArn(frontEndTargetGroup.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndTargetGroup:
/// type: aws:lb:TargetGroup
/// name: front_end
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEnd.arn}
/// port: '443'
/// protocol: HTTPS
/// sslPolicy: ELBSecurityPolicy-2016-08
/// certificateArn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
/// defaultActions:
/// - type: forward
/// targetGroupArn: ${frontEndTargetGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With weighted target groups:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndBlue = new aws.lb.TargetGroup("front_end_blue", {});
/// const frontEndGreen = new aws.lb.TargetGroup("front_end_green", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
/// loadBalancerArn: frontEnd.arn,
/// port: 443,
/// protocol: "HTTPS",
/// sslPolicy: "ELBSecurityPolicy-2016-08",
/// certificateArn: "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// defaultActions: [{
/// type: "forward",
/// forward: {
/// targetGroups: [
/// {
/// arn: frontEndBlue.arn,
/// weight: 100,
/// },
/// {
/// arn: frontEndGreen.arn,
/// weight: 0,
/// },
/// ],
/// },
/// }],
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
/// load_balancer_arn=front_end.arn,
/// port=443,
/// protocol="HTTPS",
/// ssl_policy="ELBSecurityPolicy-2016-08",
/// certificate_arn="arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// default_actions=[{
/// "type": "forward",
/// "forward": {
/// "target_groups": [
/// {
/// "arn": front_end_blue.arn,
/// "weight": 100,
/// },
/// {
/// "arn": front_end_green.arn,
/// "weight": 0,
/// },
/// ],
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndBlue = new Aws.LB.TargetGroup("front_end_blue");
///
/// var frontEndGreen = new Aws.LB.TargetGroup("front_end_green");
///
/// var frontEndListener = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEnd.Arn,
/// Port = 443,
/// Protocol = "HTTPS",
/// SslPolicy = "ELBSecurityPolicy-2016-08",
/// CertificateArn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "forward",
/// Forward = new Aws.LB.Inputs.ListenerDefaultActionForwardArgs
/// {
/// TargetGroups = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionForwardTargetGroupArgs
/// {
/// Arn = frontEndBlue.Arn,
/// Weight = 100,
/// },
/// new Aws.LB.Inputs.ListenerDefaultActionForwardTargetGroupArgs
/// {
/// Arn = frontEndGreen.Arn,
/// Weight = 0,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// frontEndBlue, err := lb.NewTargetGroup(ctx, "front_end_blue", nil)
/// if err != nil {
/// return err
/// }
/// frontEndGreen, err := lb.NewTargetGroup(ctx, "front_end_green", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: frontEnd.Arn,
/// Port:            pulumi.Int(443),
/// Protocol:        pulumi.String("HTTPS"),
/// SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// CertificateArn:  pulumi.String("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("forward"),
/// Forward: &lb.ListenerDefaultActionForwardArgs{
/// TargetGroups: lb.ListenerDefaultActionForwardTargetGroupArray{
/// &lb.ListenerDefaultActionForwardTargetGroupArgs{
/// Arn:    frontEndBlue.Arn,
/// Weight: pulumi.Int(100),
/// },
/// &lb.ListenerDefaultActionForwardTargetGroupArgs{
/// Arn:    frontEndGreen.Arn,
/// Weight: pulumi.Int(0),
/// },
/// },
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndBlue = new TargetGroup("frontEndBlue");
///
/// var frontEndGreen = new TargetGroup("frontEndGreen");
///
/// var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
/// .loadBalancerArn(frontEnd.arn())
/// .port(443)
/// .protocol("HTTPS")
/// .sslPolicy("ELBSecurityPolicy-2016-08")
/// .certificateArn("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4")
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .type("forward")
/// .forward(ListenerDefaultActionForwardArgs.builder()
/// .targetGroups(
/// ListenerDefaultActionForwardTargetGroupArgs.builder()
/// .arn(frontEndBlue.arn())
/// .weight(100)
/// .build(),
/// ListenerDefaultActionForwardTargetGroupArgs.builder()
/// .arn(frontEndGreen.arn())
/// .weight(0)
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndBlue:
/// type: aws:lb:TargetGroup
/// name: front_end_blue
/// frontEndGreen:
/// type: aws:lb:TargetGroup
/// name: front_end_green
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEnd.arn}
/// port: '443'
/// protocol: HTTPS
/// sslPolicy: ELBSecurityPolicy-2016-08
/// certificateArn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
/// defaultActions:
/// - type: forward
/// forward:
/// targetGroups:
/// - arn: ${frontEndBlue.arn}
/// weight: 100
/// - arn: ${frontEndGreen.arn}
/// weight: 0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To a NLB:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.Listener("front_end", {
/// loadBalancerArn: frontEndAwsLb.arn,
/// port: 443,
/// protocol: "TLS",
/// sslPolicy: "ELBSecurityPolicy-2016-08",
/// certificateArn: "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// alpnPolicy: "HTTP2Preferred",
/// defaultActions: [{
/// type: "forward",
/// targetGroupArn: frontEndAwsLbTargetGroup.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.Listener("front_end",
/// load_balancer_arn=front_end_aws_lb["arn"],
/// port=443,
/// protocol="TLS",
/// ssl_policy="ELBSecurityPolicy-2016-08",
/// certificate_arn="arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// alpn_policy="HTTP2Preferred",
/// default_actions=[{
/// "type": "forward",
/// "target_group_arn": front_end_aws_lb_target_group["arn"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEndAwsLb.Arn,
/// Port = 443,
/// Protocol = "TLS",
/// SslPolicy = "ELBSecurityPolicy-2016-08",
/// CertificateArn = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4",
/// AlpnPolicy = "HTTP2Preferred",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "forward",
/// TargetGroupArn = frontEndAwsLbTargetGroup.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: pulumi.Any(frontEndAwsLb.Arn),
/// Port:            pulumi.Int(443),
/// Protocol:        pulumi.String("TLS"),
/// SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// CertificateArn:  pulumi.String("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"),
/// AlpnPolicy:      pulumi.String("HTTP2Preferred"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type:           pulumi.String("forward"),
/// TargetGroupArn: pulumi.Any(frontEndAwsLbTargetGroup.Arn),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new Listener("frontEnd", ListenerArgs.builder()
/// .loadBalancerArn(frontEndAwsLb.arn())
/// .port(443)
/// .protocol("TLS")
/// .sslPolicy("ELBSecurityPolicy-2016-08")
/// .certificateArn("arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4")
/// .alpnPolicy("HTTP2Preferred")
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .type("forward")
/// .targetGroupArn(frontEndAwsLbTargetGroup.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEndAwsLb.arn}
/// port: '443'
/// protocol: TLS
/// sslPolicy: ELBSecurityPolicy-2016-08
/// certificateArn: arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4
/// alpnPolicy: HTTP2Preferred
/// defaultActions:
/// - type: forward
/// targetGroupArn: ${frontEndAwsLbTargetGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Redirect Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
/// loadBalancerArn: frontEnd.arn,
/// port: 80,
/// protocol: "HTTP",
/// defaultActions: [{
/// type: "redirect",
/// redirect: {
/// port: "443",
/// protocol: "HTTPS",
/// statusCode: "HTTP_301",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
/// load_balancer_arn=front_end.arn,
/// port=80,
/// protocol="HTTP",
/// default_actions=[{
/// "type": "redirect",
/// "redirect": {
/// "port": "443",
/// "protocol": "HTTPS",
/// "status_code": "HTTP_301",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndListener = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEnd.Arn,
/// Port = 80,
/// Protocol = "HTTP",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "redirect",
/// Redirect = new Aws.LB.Inputs.ListenerDefaultActionRedirectArgs
/// {
/// Port = "443",
/// Protocol = "HTTPS",
/// StatusCode = "HTTP_301",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: frontEnd.Arn,
/// Port:            pulumi.Int(80),
/// Protocol:        pulumi.String("HTTP"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("redirect"),
/// Redirect: &lb.ListenerDefaultActionRedirectArgs{
/// Port:       pulumi.String("443"),
/// Protocol:   pulumi.String("HTTPS"),
/// StatusCode: pulumi.String("HTTP_301"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
/// .loadBalancerArn(frontEnd.arn())
/// .port(80)
/// .protocol("HTTP")
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .type("redirect")
/// .redirect(ListenerDefaultActionRedirectArgs.builder()
/// .port("443")
/// .protocol("HTTPS")
/// .statusCode("HTTP_301")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEnd.arn}
/// port: '80'
/// protocol: HTTP
/// defaultActions:
/// - type: redirect
/// redirect:
/// port: '443'
/// protocol: HTTPS
/// statusCode: HTTP_301
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Fixed-response Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
/// loadBalancerArn: frontEnd.arn,
/// port: 80,
/// protocol: "HTTP",
/// defaultActions: [{
/// type: "fixed-response",
/// fixedResponse: {
/// contentType: "text/plain",
/// messageBody: "Fixed response content",
/// statusCode: "200",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
/// load_balancer_arn=front_end.arn,
/// port=80,
/// protocol="HTTP",
/// default_actions=[{
/// "type": "fixed-response",
/// "fixed_response": {
/// "content_type": "text/plain",
/// "message_body": "Fixed response content",
/// "status_code": "200",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndListener = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEnd.Arn,
/// Port = 80,
/// Protocol = "HTTP",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "fixed-response",
/// FixedResponse = new Aws.LB.Inputs.ListenerDefaultActionFixedResponseArgs
/// {
/// ContentType = "text/plain",
/// MessageBody = "Fixed response content",
/// StatusCode = "200",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: frontEnd.Arn,
/// Port:            pulumi.Int(80),
/// Protocol:        pulumi.String("HTTP"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("fixed-response"),
/// FixedResponse: &lb.ListenerDefaultActionFixedResponseArgs{
/// ContentType: pulumi.String("text/plain"),
/// MessageBody: pulumi.String("Fixed response content"),
/// StatusCode:  pulumi.String("200"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
/// .loadBalancerArn(frontEnd.arn())
/// .port(80)
/// .protocol("HTTP")
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .type("fixed-response")
/// .fixedResponse(ListenerDefaultActionFixedResponseArgs.builder()
/// .contentType("text/plain")
/// .messageBody("Fixed response content")
/// .statusCode("200")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEnd.arn}
/// port: '80'
/// protocol: HTTP
/// defaultActions:
/// - type: fixed-response
/// fixedResponse:
/// contentType: text/plain
/// messageBody: Fixed response content
/// statusCode: '200'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Authenticate-cognito Action
///
/// <!--Start PulumiCodeChooser -->
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
/// loadBalancerArn: frontEnd.arn,
/// port: 80,
/// protocol: "HTTP",
/// defaultActions: [
/// {
/// type: "authenticate-cognito",
/// authenticateCognito: {
/// userPoolArn: pool.arn,
/// userPoolClientId: client.id,
/// userPoolDomain: domain.domain,
/// },
/// },
/// {
/// type: "forward",
/// targetGroupArn: frontEndTargetGroup.arn,
/// },
/// ],
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
/// load_balancer_arn=front_end.arn,
/// port=80,
/// protocol="HTTP",
/// default_actions=[
/// {
/// "type": "authenticate-cognito",
/// "authenticate_cognito": {
/// "user_pool_arn": pool.arn,
/// "user_pool_client_id": client.id,
/// "user_pool_domain": domain.domain,
/// },
/// },
/// {
/// "type": "forward",
/// "target_group_arn": front_end_target_group.arn,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndTargetGroup = new Aws.LB.TargetGroup("front_end");
///
/// var pool = new Aws.Cognito.UserPool("pool");
///
/// var client = new Aws.Cognito.UserPoolClient("client");
///
/// var domain = new Aws.Cognito.UserPoolDomain("domain");
///
/// var frontEndListener = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEnd.Arn,
/// Port = 80,
/// Protocol = "HTTP",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "authenticate-cognito",
/// AuthenticateCognito = new Aws.LB.Inputs.ListenerDefaultActionAuthenticateCognitoArgs
/// {
/// UserPoolArn = pool.Arn,
/// UserPoolClientId = client.Id,
/// UserPoolDomain = domain.Domain,
/// },
/// },
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "forward",
/// TargetGroupArn = frontEndTargetGroup.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// frontEndTargetGroup, err := lb.NewTargetGroup(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// pool, err := cognito.NewUserPool(ctx, "pool", nil)
/// if err != nil {
/// return err
/// }
/// client, err := cognito.NewUserPoolClient(ctx, "client", nil)
/// if err != nil {
/// return err
/// }
/// domain, err := cognito.NewUserPoolDomain(ctx, "domain", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: frontEnd.Arn,
/// Port:            pulumi.Int(80),
/// Protocol:        pulumi.String("HTTP"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("authenticate-cognito"),
/// AuthenticateCognito: &lb.ListenerDefaultActionAuthenticateCognitoArgs{
/// UserPoolArn:      pool.Arn,
/// UserPoolClientId: client.ID(),
/// UserPoolDomain:   domain.Domain,
/// },
/// },
/// &lb.ListenerDefaultActionArgs{
/// Type:           pulumi.String("forward"),
/// TargetGroupArn: frontEndTargetGroup.Arn,
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndTargetGroup = new TargetGroup("frontEndTargetGroup");
///
/// var pool = new UserPool("pool");
///
/// var client = new UserPoolClient("client");
///
/// var domain = new UserPoolDomain("domain");
///
/// var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
/// .loadBalancerArn(frontEnd.arn())
/// .port(80)
/// .protocol("HTTP")
/// .defaultActions(
/// ListenerDefaultActionArgs.builder()
/// .type("authenticate-cognito")
/// .authenticateCognito(ListenerDefaultActionAuthenticateCognitoArgs.builder()
/// .userPoolArn(pool.arn())
/// .userPoolClientId(client.id())
/// .userPoolDomain(domain.domain())
/// .build())
/// .build(),
/// ListenerDefaultActionArgs.builder()
/// .type("forward")
/// .targetGroupArn(frontEndTargetGroup.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndTargetGroup:
/// type: aws:lb:TargetGroup
/// name: front_end
/// pool:
/// type: aws:cognito:UserPool
/// client:
/// type: aws:cognito:UserPoolClient
/// domain:
/// type: aws:cognito:UserPoolDomain
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEnd.arn}
/// port: '80'
/// protocol: HTTP
/// defaultActions:
/// - type: authenticate-cognito
/// authenticateCognito:
/// userPoolArn: ${pool.arn}
/// userPoolClientId: ${client.id}
/// userPoolDomain: ${domain.domain}
/// - type: forward
/// targetGroupArn: ${frontEndTargetGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Authenticate-OIDC Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const frontEnd = new aws.lb.LoadBalancer("front_end", {});
/// const frontEndTargetGroup = new aws.lb.TargetGroup("front_end", {});
/// const frontEndListener = new aws.lb.Listener("front_end", {
/// loadBalancerArn: frontEnd.arn,
/// port: 80,
/// protocol: "HTTP",
/// defaultActions: [
/// {
/// type: "authenticate-oidc",
/// authenticateOidc: {
/// authorizationEndpoint: "https://example.com/authorization_endpoint",
/// clientId: "client_id",
/// clientSecret: "client_secret",
/// issuer: "https://example.com",
/// tokenEndpoint: "https://example.com/token_endpoint",
/// userInfoEndpoint: "https://example.com/user_info_endpoint",
/// },
/// },
/// {
/// type: "forward",
/// targetGroupArn: frontEndTargetGroup.arn,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// front_end = aws.lb.LoadBalancer("front_end")
/// front_end_target_group = aws.lb.TargetGroup("front_end")
/// front_end_listener = aws.lb.Listener("front_end",
/// load_balancer_arn=front_end.arn,
/// port=80,
/// protocol="HTTP",
/// default_actions=[
/// {
/// "type": "authenticate-oidc",
/// "authenticate_oidc": {
/// "authorization_endpoint": "https://example.com/authorization_endpoint",
/// "client_id": "client_id",
/// "client_secret": "client_secret",
/// "issuer": "https://example.com",
/// "token_endpoint": "https://example.com/token_endpoint",
/// "user_info_endpoint": "https://example.com/user_info_endpoint",
/// },
/// },
/// {
/// "type": "forward",
/// "target_group_arn": front_end_target_group.arn,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var frontEnd = new Aws.LB.LoadBalancer("front_end");
///
/// var frontEndTargetGroup = new Aws.LB.TargetGroup("front_end");
///
/// var frontEndListener = new Aws.LB.Listener("front_end", new()
/// {
/// LoadBalancerArn = frontEnd.Arn,
/// Port = 80,
/// Protocol = "HTTP",
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "authenticate-oidc",
/// AuthenticateOidc = new Aws.LB.Inputs.ListenerDefaultActionAuthenticateOidcArgs
/// {
/// AuthorizationEndpoint = "https://example.com/authorization_endpoint",
/// ClientId = "client_id",
/// ClientSecret = "client_secret",
/// Issuer = "https://example.com",
/// TokenEndpoint = "https://example.com/token_endpoint",
/// UserInfoEndpoint = "https://example.com/user_info_endpoint",
/// },
/// },
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "forward",
/// TargetGroupArn = frontEndTargetGroup.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// frontEnd, err := lb.NewLoadBalancer(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// frontEndTargetGroup, err := lb.NewTargetGroup(ctx, "front_end", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "front_end", &lb.ListenerArgs{
/// LoadBalancerArn: frontEnd.Arn,
/// Port:            pulumi.Int(80),
/// Protocol:        pulumi.String("HTTP"),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("authenticate-oidc"),
/// AuthenticateOidc: &lb.ListenerDefaultActionAuthenticateOidcArgs{
/// AuthorizationEndpoint: pulumi.String("https://example.com/authorization_endpoint"),
/// ClientId:              pulumi.String("client_id"),
/// ClientSecret:          pulumi.String("client_secret"),
/// Issuer:                pulumi.String("https://example.com"),
/// TokenEndpoint:         pulumi.String("https://example.com/token_endpoint"),
/// UserInfoEndpoint:      pulumi.String("https://example.com/user_info_endpoint"),
/// },
/// },
/// &lb.ListenerDefaultActionArgs{
/// Type:           pulumi.String("forward"),
/// TargetGroupArn: frontEndTargetGroup.Arn,
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var frontEnd = new LoadBalancer("frontEnd");
///
/// var frontEndTargetGroup = new TargetGroup("frontEndTargetGroup");
///
/// var frontEndListener = new Listener("frontEndListener", ListenerArgs.builder()
/// .loadBalancerArn(frontEnd.arn())
/// .port(80)
/// .protocol("HTTP")
/// .defaultActions(
/// ListenerDefaultActionArgs.builder()
/// .type("authenticate-oidc")
/// .authenticateOidc(ListenerDefaultActionAuthenticateOidcArgs.builder()
/// .authorizationEndpoint("https://example.com/authorization_endpoint")
/// .clientId("client_id")
/// .clientSecret("client_secret")
/// .issuer("https://example.com")
/// .tokenEndpoint("https://example.com/token_endpoint")
/// .userInfoEndpoint("https://example.com/user_info_endpoint")
/// .build())
/// .build(),
/// ListenerDefaultActionArgs.builder()
/// .type("forward")
/// .targetGroupArn(frontEndTargetGroup.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// frontEnd:
/// type: aws:lb:LoadBalancer
/// name: front_end
/// frontEndTargetGroup:
/// type: aws:lb:TargetGroup
/// name: front_end
/// frontEndListener:
/// type: aws:lb:Listener
/// name: front_end
/// properties:
/// loadBalancerArn: ${frontEnd.arn}
/// port: '80'
/// protocol: HTTP
/// defaultActions:
/// - type: authenticate-oidc
/// authenticateOidc:
/// authorizationEndpoint: https://example.com/authorization_endpoint
/// clientId: client_id
/// clientSecret: client_secret
/// issuer: https://example.com
/// tokenEndpoint: https://example.com/token_endpoint
/// userInfoEndpoint: https://example.com/user_info_endpoint
/// - type: forward
/// targetGroupArn: ${frontEndTargetGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### JWT Validation Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.lb.Listener("test", {
/// loadBalancerArn: testAwsLb.id,
/// protocol: "HTTPS",
/// port: 443,
/// sslPolicy: "ELBSecurityPolicy-2016-08",
/// certificateArn: testAwsIamServerCertificate.arn,
/// defaultActions: [
/// {
/// type: "jwt-validation",
/// jwtValidation: {
/// issuer: "https://example.com",
/// jwksEndpoint: "https://example.com/.well-known/jwks.json",
/// additionalClaims: [
/// {
/// format: "string-array",
/// name: "claim_name1",
/// values: [
/// "value1",
/// "value2",
/// ],
/// },
/// {
/// format: "single-string",
/// name: "claim_name2",
/// values: ["value1"],
/// },
/// ],
/// },
/// },
/// {
/// targetGroupArn: testAwsLbTargetGroup.id,
/// type: "forward",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.lb.Listener("test",
/// load_balancer_arn=test_aws_lb["id"],
/// protocol="HTTPS",
/// port=443,
/// ssl_policy="ELBSecurityPolicy-2016-08",
/// certificate_arn=test_aws_iam_server_certificate["arn"],
/// default_actions=[
/// {
/// "type": "jwt-validation",
/// "jwt_validation": {
/// "issuer": "https://example.com",
/// "jwks_endpoint": "https://example.com/.well-known/jwks.json",
/// "additional_claims": [
/// {
/// "format": "string-array",
/// "name": "claim_name1",
/// "values": [
/// "value1",
/// "value2",
/// ],
/// },
/// {
/// "format": "single-string",
/// "name": "claim_name2",
/// "values": ["value1"],
/// },
/// ],
/// },
/// },
/// {
/// "target_group_arn": test_aws_lb_target_group["id"],
/// "type": "forward",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.LB.Listener("test", new()
/// {
/// LoadBalancerArn = testAwsLb.Id,
/// Protocol = "HTTPS",
/// Port = 443,
/// SslPolicy = "ELBSecurityPolicy-2016-08",
/// CertificateArn = testAwsIamServerCertificate.Arn,
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// Type = "jwt-validation",
/// JwtValidation = new Aws.LB.Inputs.ListenerDefaultActionJwtValidationArgs
/// {
/// Issuer = "https://example.com",
/// JwksEndpoint = "https://example.com/.well-known/jwks.json",
/// AdditionalClaims = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionJwtValidationAdditionalClaimArgs
/// {
/// Format = "string-array",
/// Name = "claim_name1",
/// Values = new[]
/// {
/// "value1",
/// "value2",
/// },
/// },
/// new Aws.LB.Inputs.ListenerDefaultActionJwtValidationAdditionalClaimArgs
/// {
/// Format = "single-string",
/// Name = "claim_name2",
/// Values = new[]
/// {
/// "value1",
/// },
/// },
/// },
/// },
/// },
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// TargetGroupArn = testAwsLbTargetGroup.Id,
/// Type = "forward",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lb.NewListener(ctx, "test", &lb.ListenerArgs{
/// LoadBalancerArn: pulumi.Any(testAwsLb.Id),
/// Protocol:        pulumi.String("HTTPS"),
/// Port:            pulumi.Int(443),
/// SslPolicy:       pulumi.String("ELBSecurityPolicy-2016-08"),
/// CertificateArn:  pulumi.Any(testAwsIamServerCertificate.Arn),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// Type: pulumi.String("jwt-validation"),
/// JwtValidation: &lb.ListenerDefaultActionJwtValidationArgs{
/// Issuer:       pulumi.String("https://example.com"),
/// JwksEndpoint: pulumi.String("https://example.com/.well-known/jwks.json"),
/// AdditionalClaims: lb.ListenerDefaultActionJwtValidationAdditionalClaimArray{
/// &lb.ListenerDefaultActionJwtValidationAdditionalClaimArgs{
/// Format: pulumi.String("string-array"),
/// Name:   pulumi.String("claim_name1"),
/// Values: pulumi.StringArray{
/// pulumi.String("value1"),
/// pulumi.String("value2"),
/// },
/// },
/// &lb.ListenerDefaultActionJwtValidationAdditionalClaimArgs{
/// Format: pulumi.String("single-string"),
/// Name:   pulumi.String("claim_name2"),
/// Values: pulumi.StringArray{
/// pulumi.String("value1"),
/// },
/// },
/// },
/// },
/// },
/// &lb.ListenerDefaultActionArgs{
/// TargetGroupArn: pulumi.Any(testAwsLbTargetGroup.Id),
/// Type:           pulumi.String("forward"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Listener("test", ListenerArgs.builder()
/// .loadBalancerArn(testAwsLb.id())
/// .protocol("HTTPS")
/// .port(443)
/// .sslPolicy("ELBSecurityPolicy-2016-08")
/// .certificateArn(testAwsIamServerCertificate.arn())
/// .defaultActions(
/// ListenerDefaultActionArgs.builder()
/// .type("jwt-validation")
/// .jwtValidation(ListenerDefaultActionJwtValidationArgs.builder()
/// .issuer("https://example.com")
/// .jwksEndpoint("https://example.com/.well-known/jwks.json")
/// .additionalClaims(
/// ListenerDefaultActionJwtValidationAdditionalClaimArgs.builder()
/// .format("string-array")
/// .name("claim_name1")
/// .values(
/// "value1",
/// "value2")
/// .build(),
/// ListenerDefaultActionJwtValidationAdditionalClaimArgs.builder()
/// .format("single-string")
/// .name("claim_name2")
/// .values("value1")
/// .build())
/// .build())
/// .build(),
/// ListenerDefaultActionArgs.builder()
/// .targetGroupArn(testAwsLbTargetGroup.id())
/// .type("forward")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:lb:Listener
/// properties:
/// loadBalancerArn: ${testAwsLb.id}
/// protocol: HTTPS
/// port: '443'
/// sslPolicy: ELBSecurityPolicy-2016-08
/// certificateArn: ${testAwsIamServerCertificate.arn}
/// defaultActions:
/// - type: jwt-validation
/// jwtValidation:
/// issuer: https://example.com
/// jwksEndpoint: https://example.com/.well-known/jwks.json
/// additionalClaims:
/// - format: string-array
/// name: claim_name1
/// values:
/// - value1
/// - value2
/// - format: single-string
/// name: claim_name2
/// values:
/// - value1
/// - targetGroupArn: ${testAwsLbTargetGroup.id}
/// type: forward
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Gateway Load Balancer Listener
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {
/// loadBalancerType: "gateway",
/// name: "example",
/// subnetMappings: [{
/// subnetId: exampleAwsSubnet.id,
/// }],
/// });
/// const exampleTargetGroup = new aws.lb.TargetGroup("example", {
/// name: "example",
/// port: 6081,
/// protocol: "GENEVE",
/// vpcId: exampleAwsVpc.id,
/// healthCheck: {
/// port: "80",
/// protocol: "HTTP",
/// },
/// });
/// const exampleListener = new aws.lb.Listener("example", {
/// loadBalancerArn: example.id,
/// defaultActions: [{
/// targetGroupArn: exampleTargetGroup.id,
/// type: "forward",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example",
/// load_balancer_type="gateway",
/// name="example",
/// subnet_mappings=[{
/// "subnet_id": example_aws_subnet["id"],
/// }])
/// example_target_group = aws.lb.TargetGroup("example",
/// name="example",
/// port=6081,
/// protocol="GENEVE",
/// vpc_id=example_aws_vpc["id"],
/// health_check={
/// "port": "80",
/// "protocol": "HTTP",
/// })
/// example_listener = aws.lb.Listener("example",
/// load_balancer_arn=example.id,
/// default_actions=[{
/// "target_group_arn": example_target_group.id,
/// "type": "forward",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LB.LoadBalancer("example", new()
/// {
/// LoadBalancerType = "gateway",
/// Name = "example",
/// SubnetMappings = new[]
/// {
/// new Aws.LB.Inputs.LoadBalancerSubnetMappingArgs
/// {
/// SubnetId = exampleAwsSubnet.Id,
/// },
/// },
/// });
///
/// var exampleTargetGroup = new Aws.LB.TargetGroup("example", new()
/// {
/// Name = "example",
/// Port = 6081,
/// Protocol = "GENEVE",
/// VpcId = exampleAwsVpc.Id,
/// HealthCheck = new Aws.LB.Inputs.TargetGroupHealthCheckArgs
/// {
/// Port = "80",
/// Protocol = "HTTP",
/// },
/// });
///
/// var exampleListener = new Aws.LB.Listener("example", new()
/// {
/// LoadBalancerArn = example.Id,
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// TargetGroupArn = exampleTargetGroup.Id,
/// Type = "forward",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// LoadBalancerType: pulumi.String("gateway"),
/// Name:             pulumi.String("example"),
/// SubnetMappings: lb.LoadBalancerSubnetMappingArray{
/// &lb.LoadBalancerSubnetMappingArgs{
/// SubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleTargetGroup, err := lb.NewTargetGroup(ctx, "example", &lb.TargetGroupArgs{
/// Name:     pulumi.String("example"),
/// Port:     pulumi.Int(6081),
/// Protocol: pulumi.String("GENEVE"),
/// VpcId:    pulumi.Any(exampleAwsVpc.Id),
/// HealthCheck: &lb.TargetGroupHealthCheckArgs{
/// Port:     pulumi.String("80"),
/// Protocol: pulumi.String("HTTP"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// LoadBalancerArn: example.ID(),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// TargetGroupArn: exampleTargetGroup.ID(),
/// Type:           pulumi.String("forward"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LoadBalancer("example", LoadBalancerArgs.builder()
/// .loadBalancerType("gateway")
/// .name("example")
/// .subnetMappings(LoadBalancerSubnetMappingArgs.builder()
/// .subnetId(exampleAwsSubnet.id())
/// .build())
/// .build());
///
/// var exampleTargetGroup = new TargetGroup("exampleTargetGroup", TargetGroupArgs.builder()
/// .name("example")
/// .port(6081)
/// .protocol("GENEVE")
/// .vpcId(exampleAwsVpc.id())
/// .healthCheck(TargetGroupHealthCheckArgs.builder()
/// .port("80")
/// .protocol("HTTP")
/// .build())
/// .build());
///
/// var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
/// .loadBalancerArn(example.id())
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .targetGroupArn(exampleTargetGroup.id())
/// .type("forward")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lb:LoadBalancer
/// properties:
/// loadBalancerType: gateway
/// name: example
/// subnetMappings:
/// - subnetId: ${exampleAwsSubnet.id}
/// exampleTargetGroup:
/// type: aws:lb:TargetGroup
/// name: example
/// properties:
/// name: example
/// port: 6081
/// protocol: GENEVE
/// vpcId: ${exampleAwsVpc.id}
/// healthCheck:
/// port: 80
/// protocol: HTTP
/// exampleListener:
/// type: aws:lb:Listener
/// name: example
/// properties:
/// loadBalancerArn: ${example.id}
/// defaultActions:
/// - targetGroupArn: ${exampleTargetGroup.id}
/// type: forward
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Mutual TLS Authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lb.LoadBalancer("example", {loadBalancerType: "application"});
/// const exampleTargetGroup = new aws.lb.TargetGroup("example", {});
/// const exampleListener = new aws.lb.Listener("example", {
/// loadBalancerArn: example.id,
/// defaultActions: [{
/// targetGroupArn: exampleTargetGroup.id,
/// type: "forward",
/// }],
/// mutualAuthentication: {
/// mode: "verify",
/// trustStoreArn: "...",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.LoadBalancer("example", load_balancer_type="application")
/// example_target_group = aws.lb.TargetGroup("example")
/// example_listener = aws.lb.Listener("example",
/// load_balancer_arn=example.id,
/// default_actions=[{
/// "target_group_arn": example_target_group.id,
/// "type": "forward",
/// }],
/// mutual_authentication={
/// "mode": "verify",
/// "trust_store_arn": "...",
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
/// var example = new Aws.LB.LoadBalancer("example", new()
/// {
/// LoadBalancerType = "application",
/// });
///
/// var exampleTargetGroup = new Aws.LB.TargetGroup("example");
///
/// var exampleListener = new Aws.LB.Listener("example", new()
/// {
/// LoadBalancerArn = example.Id,
/// DefaultActions = new[]
/// {
/// new Aws.LB.Inputs.ListenerDefaultActionArgs
/// {
/// TargetGroupArn = exampleTargetGroup.Id,
/// Type = "forward",
/// },
/// },
/// MutualAuthentication = new Aws.LB.Inputs.ListenerMutualAuthenticationArgs
/// {
/// Mode = "verify",
/// TrustStoreArn = "...",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// LoadBalancerType: pulumi.String("application"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTargetGroup, err := lb.NewTargetGroup(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// LoadBalancerArn: example.ID(),
/// DefaultActions: lb.ListenerDefaultActionArray{
/// &lb.ListenerDefaultActionArgs{
/// TargetGroupArn: exampleTargetGroup.ID(),
/// Type:           pulumi.String("forward"),
/// },
/// },
/// MutualAuthentication: &lb.ListenerMutualAuthenticationArgs{
/// Mode:          pulumi.String("verify"),
/// TrustStoreArn: pulumi.String("..."),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LoadBalancer("example", LoadBalancerArgs.builder()
/// .loadBalancerType("application")
/// .build());
///
/// var exampleTargetGroup = new TargetGroup("exampleTargetGroup");
///
/// var exampleListener = new Listener("exampleListener", ListenerArgs.builder()
/// .loadBalancerArn(example.id())
/// .defaultActions(ListenerDefaultActionArgs.builder()
/// .targetGroupArn(exampleTargetGroup.id())
/// .type("forward")
/// .build())
/// .mutualAuthentication(ListenerMutualAuthenticationArgs.builder()
/// .mode("verify")
/// .trustStoreArn("...")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lb:LoadBalancer
/// properties:
/// loadBalancerType: application
/// exampleTargetGroup:
/// type: aws:lb:TargetGroup
/// name: example
/// exampleListener:
/// type: aws:lb:Listener
/// name: example
/// properties:
/// loadBalancerArn: ${example.id}
/// defaultActions:
/// - targetGroupArn: ${exampleTargetGroup.id}
/// type: forward
/// mutualAuthentication:
/// mode: verify
/// trustStoreArn: '...'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the load balancer listener.
///
///
/// Using `pulumi import`, import listeners using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:alb/listener:Listener front_end arn:aws:elasticloadbalancing:us-west-2:187416307283:listener/app/front-end-alb/8e4497da625e2d8a/9ab28ade35828f96
/// ```
class Listener extends CustomResource {
  /// Name of the Application-Layer Protocol Negotiation (ALPN) policy. Can be set if <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is `TLS`. Valid values are `HTTP1Only`, `HTTP2Only`, `HTTP2Optional`, `HTTP2Preferred`, and `None`.
  late final Output<String?> alpnPolicy;

  /// ARN of the listener.
  late final Output<String> arn;

  /// ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS. For adding additional SSL certificates, see the <span pulumi-lang-nodejs="`aws.lb.ListenerCertificate`" pulumi-lang-dotnet="`aws.lb.ListenerCertificate`" pulumi-lang-go="`lb.ListenerCertificate`" pulumi-lang-python="`lb.ListenerCertificate`" pulumi-lang-yaml="`aws.lb.ListenerCertificate`" pulumi-lang-java="`aws.lb.ListenerCertificate`">`aws.lb.ListenerCertificate`</span> resource.
  late final Output<String?> certificateArn;

  /// Configuration block for default actions. See below.
  late final Output<List<ListenerDefaultAction>> defaultActions;

  /// ARN of the load balancer.
  ///
  /// The following arguments are optional:
  late final Output<String> loadBalancerArn;

  /// The mutual authentication configuration information. See below.
  late final Output<ListenerMutualAuthentication> mutualAuthentication;

  /// Port on which the load balancer is listening. Not valid for Gateway Load Balancers.
  late final Output<int?> port;

  /// Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are `HTTP` and `HTTPS`, with a default of `HTTP`. For Network Load Balancers, valid values are `TCP`, `TLS`, `UDP`, `TCP_UDP`, `QUIC`, and `TCP_QUIC`. Not valid to use `UDP` or `TCP_UDP` if dual-stack mode is enabled. Not valid to use `QUIC` or `TCP_QUIC` if security groups are configured or dual-stack mode is enabled. Not valid for Gateway Load Balancers.
  late final Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String> routingHttpRequestXAmznMtlsClientcertHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Issuer` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String>
      routingHttpRequestXAmznMtlsClientcertIssuerHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Leaf` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String> routingHttpRequestXAmznMtlsClientcertLeafHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Serial-Number` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String>
      routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Subject` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String>
      routingHttpRequestXAmznMtlsClientcertSubjectHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Mtls-Clientcert-Validity` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String>
      routingHttpRequestXAmznMtlsClientcertValidityHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Cipher-Suite` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String> routingHttpRequestXAmznTlsCipherSuiteHeaderName;

  /// Enables you to modify the header name of the `X-Amzn-Tls-Version` HTTP request header. Can only be set if protocol is `HTTPS` for Application Load Balancers.
  late final Output<String> routingHttpRequestXAmznTlsVersionHeaderName;

  /// Specifies which headers the browser can expose to the requesting client. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String>
      routingHttpResponseAccessControlAllowCredentialsHeaderValue;

  /// Specifies which headers can be used during the request. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Accept`, `Accept-Language`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, `Pragma`. Dependent on your use-case other headers can be exposed and then set as a value consult the Access-Control-Allow-Headers documentation.
  late final Output<String>
      routingHttpResponseAccessControlAllowHeadersHeaderValue;

  /// Set which HTTP methods are allowed when accessing the server from a different origin. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `GET`, `HEAD`, `POST`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE` or `PATCH`.
  late final Output<String>
      routingHttpResponseAccessControlAllowMethodsHeaderValue;

  /// Specifies which origins are allowed to access the server. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. A valid value is a URI, eg: `https://example.com`.
  late final Output<String>
      routingHttpResponseAccessControlAllowOriginHeaderValue;

  /// Specifies whether the browser should include credentials such as cookies or authentication when making requests. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are `*`, `Cache-Control`, `Content-Language`, `Content-Length`, `Content-Type`, `Expires`, `Last-Modified`, or `Pragma`. Dependent on your use-case other headers can be exposed, consult the Access-Control-Expose-Headers documentation.
  late final Output<String>
      routingHttpResponseAccessControlExposeHeadersHeaderValue;

  /// Specifies how long the results of a preflight request can be cached, in seconds. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`86400`" pulumi-lang-dotnet="`86400`" pulumi-lang-go="`86400`" pulumi-lang-python="`86400`" pulumi-lang-yaml="`86400`" pulumi-lang-java="`86400`">`86400`</span>. This value is browser specific, consult the Access-Control-Max-Age documentation.
  late final Output<String> routingHttpResponseAccessControlMaxAgeHeaderValue;

  /// Specifies restrictions enforced by the browser to help minimize the risk of certain types of security threats. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Values for this are extensive, and can be impactful when set, consult Content-Security-Policy documentation.
  late final Output<String> routingHttpResponseContentSecurityPolicyHeaderValue;

  /// Enables you to allow or remove the HTTP response server header. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> routingHttpResponseServerEnabled;

  /// Informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS. Default values are `max-age=31536000; includeSubDomains; preload` consult the Strict-Transport-Security documentation for further details.
  late final Output<String>
      routingHttpResponseStrictTransportSecurityHeaderValue;

  /// Indicates whether the MIME types advertised in the Content-Type headers should be followed and not be changed. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid value is <span pulumi-lang-nodejs="`nosniff`" pulumi-lang-dotnet="`Nosniff`" pulumi-lang-go="`nosniff`" pulumi-lang-python="`nosniff`" pulumi-lang-yaml="`nosniff`" pulumi-lang-java="`nosniff`">`nosniff`</span>.
  late final Output<String> routingHttpResponseXContentTypeOptionsHeaderValue;

  /// Indicates whether the browser is allowed to render a page in a frame, iframe, embed or object. Can only be set if protocol is `HTTP` or `HTTPS` for Application Load Balancers. Not supported for Network Load Balancer, or with a Gateway Load Balancer. The only valid values are `DENY`, `SAMEORIGIN`, or `ALLOW-FROM https://example.com`.
  late final Output<String> routingHttpResponseXFrameOptionsHeaderValue;

  /// Name of the SSL Policy for the listener. Required if <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is `HTTPS` or `TLS`. Default is `ELBSecurityPolicy-2016-08`.
  late final Output<String> sslPolicy;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note::** When a `Name` key is specified in the map, the AWS Console maps the value to the `Name Tag` column value inside the `Listener Rules` table within a specific load balancer listener page. Otherwise, the value resolves to `Default`.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// TCP idle timeout value in seconds. Can only be set if protocol is `TCP` on Network Load Balancer, or with a Gateway Load Balancer. Not supported for Application Load Balancers. Valid values are between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and <span pulumi-lang-nodejs="`6000`" pulumi-lang-dotnet="`6000`" pulumi-lang-go="`6000`" pulumi-lang-python="`6000`" pulumi-lang-yaml="`6000`" pulumi-lang-java="`6000`">`6000`</span> inclusive. Default: <span pulumi-lang-nodejs="`350`" pulumi-lang-dotnet="`350`" pulumi-lang-go="`350`" pulumi-lang-python="`350`" pulumi-lang-yaml="`350`" pulumi-lang-java="`350`">`350`</span>.
  late final Output<int> tcpIdleTimeoutSeconds;

  Listener(
    String name, {
    ListenerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:alb/listener:Listener',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alpnPolicy = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.certificateArn = Output.createUnknown<String?>();
    this.defaultActions = Output.createUnknown<List<ListenerDefaultAction>>();
    this.loadBalancerArn = Output.createUnknown<String>();
    this.mutualAuthentication =
        Output.createUnknown<ListenerMutualAuthentication>();
    this.port = Output.createUnknown<int?>();
    this.protocol = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.routingHttpRequestXAmznMtlsClientcertHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznMtlsClientcertIssuerHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznMtlsClientcertLeafHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznMtlsClientcertSubjectHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznMtlsClientcertValidityHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznTlsCipherSuiteHeaderName =
        Output.createUnknown<String>();
    this.routingHttpRequestXAmznTlsVersionHeaderName =
        Output.createUnknown<String>();
    this.routingHttpResponseAccessControlAllowCredentialsHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseAccessControlAllowHeadersHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseAccessControlAllowMethodsHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseAccessControlAllowOriginHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseAccessControlExposeHeadersHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseAccessControlMaxAgeHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseContentSecurityPolicyHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseServerEnabled = Output.createUnknown<bool>();
    this.routingHttpResponseStrictTransportSecurityHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseXContentTypeOptionsHeaderValue =
        Output.createUnknown<String>();
    this.routingHttpResponseXFrameOptionsHeaderValue =
        Output.createUnknown<String>();
    this.sslPolicy = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tcpIdleTimeoutSeconds = Output.createUnknown<int>();
  }
}
