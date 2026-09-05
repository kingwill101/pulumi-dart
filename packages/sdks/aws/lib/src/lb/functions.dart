import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosted_zone_id_args.dart';
import 'get_hosted_zone_id_result.dart';
import 'get_lbs_args.dart';
import 'get_lbs_result.dart';
import 'get_listener_args.dart';
import 'get_listener_result.dart';
import 'get_listener_rule_args.dart';
import 'get_listener_rule_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_target_group_args.dart';
import 'get_target_group_result.dart';
import 'get_trust_store_args.dart';
import 'get_trust_store_result.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing (ELB) in a given region for the purpose of using in an AWS Route53 Alias. Specify the ELB type (`network` or `application`) to return the relevant the associated HostedZoneId. Ref: [ELB service endpoints](https://docs.aws.amazon.com/general/latest/gr/elb.html#elb_region)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.lb.getHostedZoneId({});
/// const www = new aws.route53.Record("www", {
///     aliases: [{
///         name: mainAwsLb.dnsName,
///         zoneId: main.then(main => main.id),
///         evaluateTargetHealth: true,
///     }],
///     zoneId: primary.zoneId,
///     name: "example.com",
///     type: aws.route53.RecordType.A,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.lb.get_hosted_zone_id()
/// www = aws.route53.Record("www",
///     aliases=[{
///         "name": main_aws_lb["dnsName"],
///         "zone_id": main.id,
///         "evaluate_target_health": True,
///     }],
///     zone_id=primary["zoneId"],
///     name="example.com",
///     type=aws.route53.RecordType.A)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.LB.GetHostedZoneId.Invoke();
///
///     var www = new Aws.Route53.Record("www", new()
///     {
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 Name = mainAwsLb.DnsName,
///                 ZoneId = main.Apply(getHostedZoneIdResult => getHostedZoneIdResult.Id),
///                 EvaluateTargetHealth = true,
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "example.com",
///         Type = Aws.Route53.RecordType.A,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := lb.GetHostedZoneId(ctx, &lb.GetHostedZoneIdArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					Name:                 pulumi.Any(mainAwsLb.DnsName),
/// 					ZoneId:               pulumi.String(main.Id),
/// 					EvaluateTargetHealth: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ZoneId: pulumi.Any(primary.ZoneId),
/// 			Name:   pulumi.String("example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_gethostedzoneid" "main" {
/// }
///
/// resource "aws_route53_record" "www" {
///   aliases {
///     name                   = mainAwsLb.dnsName
///     zone_id                = data.aws_lb_gethostedzoneid.main.id
///     evaluate_target_health = true
///   }
///   zone_id = primary.zoneId
///   name    = "example.com"
///   type    = "A"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetHostedZoneIdArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var main = LbFunctions.getHostedZoneId(GetHostedZoneIdArgs.builder()
///             .build());
///
///         var www = new Record("www", RecordArgs.builder()
///             .aliases(RecordAliasArgs.builder()
///                 .name(mainAwsLb.dnsName())
///                 .zoneId(main.id())
///                 .evaluateTargetHealth(true)
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("example.com")
///             .type("A")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   www:
///     type: aws:route53:Record
///     properties:
///       aliases:
///         - name: ${mainAwsLb.dnsName}
///           zoneId: ${main.id}
///           evaluateTargetHealth: true
///       zoneId: ${primary.zoneId}
///       name: example.com
///       type: A
/// variables:
///   main:
///     fn::invoke:
///       function: aws:lb:getHostedZoneId
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_hosted_zone_id_get_hosted_zone_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostedZoneIdResult> getHostedZoneId(
  GetHostedZoneIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult.fromMap(result);
}

pulumi.Output<GetHostedZoneIdResult> getHostedZoneIdOutput(
  GetHostedZoneIdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getHostedZoneId:getHostedZoneId',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostedZoneIdResult.fromMap);
}

/// Use this data source to get a list of Load Balancer ARNs matching the specified criteria. Useful for passing to other
/// resources.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lb.getLbs({
///     tags: {
///         "elbv2.k8s.aws/cluster": "my-cluster",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lb.get_lbs(tags={
///     "elbv2.k8s.aws/cluster": "my-cluster",
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
///     var example = Aws.LB.GetLbs.Invoke(new()
///     {
///         Tags =
///         {
///             { "elbv2.k8s.aws/cluster", "my-cluster" },
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
/// 		_, err := lb.GetLbs(ctx, &lb.GetLbsArgs{
/// 			Tags: map[string]string{
/// 				"elbv2.k8s.aws/cluster": "my-cluster",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_getlbs" "example" {
///   tags = {
///     "elbv2.k8s.aws/cluster" = "my-cluster"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetLbsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = LbFunctions.getLbs(GetLbsArgs.builder()
///             .tags(Map.of("elbv2.k8s.aws/cluster", "my-cluster"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lb:getLbs
///       arguments:
///         tags:
///           elbv2.k8s.aws/cluster: my-cluster
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_lbs_get_lbs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLbsResult> getLbs(
  GetLbsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getLbs:getLbs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbsResult.fromMap(result);
}

pulumi.Output<GetLbsResult> getLbsOutput(
  GetLbsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getLbs:getLbs',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLbsResult.fromMap);
}

/// &gt; **Note:** `aws.alb.Listener` is known as `aws.lb.Listener`. The functionality is identical.
///
/// Provides information about a Load Balancer Listener.
///
/// This data source can prove useful when a module accepts an LB Listener as an input variable and needs to know the LB it is attached to, or other information specific to the listener in question.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const listenerArn = config.require("listenerArn");
/// const listener = aws.lb.getListener({
///     arn: listenerArn,
/// });
/// // get listener from load_balancer_arn and port
/// const selected = aws.lb.getLoadBalancer({
///     name: "default-public",
/// });
/// const selected443 = selected.then(selected => aws.lb.getListener({
///     loadBalancerArn: selected.arn,
///     port: 443,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// listener_arn = config.require("listenerArn")
/// listener = aws.lb.get_listener(arn=listener_arn)
/// # get listener from load_balancer_arn and port
/// selected = aws.lb.get_load_balancer(name="default-public")
/// selected443 = aws.lb.get_listener(load_balancer_arn=selected.arn,
///     port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var listenerArn = config.Require("listenerArn");
///     var listener = Aws.LB.GetListener.Invoke(new()
///     {
///         Arn = listenerArn,
///     });
///
///     // get listener from load_balancer_arn and port
///     var selected = Aws.LB.GetLoadBalancer.Invoke(new()
///     {
///         Name = "default-public",
///     });
///
///     var selected443 = Aws.LB.GetListener.Invoke(new()
///     {
///         LoadBalancerArn = selected.Apply(getLoadBalancerResult => getLoadBalancerResult.Arn),
///         Port = 443,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		listenerArn := cfg.Require("listenerArn")
/// 		_, err := lb.LookupListener(ctx, &lb.LookupListenerArgs{
/// 			Arn: pulumi.StringRef(listenerArn),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// get listener from load_balancer_arn and port
/// 		selected, err := lb.LookupLoadBalancer(ctx, &lb.LookupLoadBalancerArgs{
/// 			Name: pulumi.StringRef("default-public"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lb.LookupListener(ctx, &lb.LookupListenerArgs{
/// 			LoadBalancerArn: pulumi.StringRef(selected.Arn),
/// 			Port:            pulumi.IntRef(443),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_getlistener" "listener" {
///   arn = var.listenerArn
/// }
/// data "aws_lb_getloadbalancer" "selected" {
///   name = "default-public"
/// }
/// data "aws_lb_getlistener" "selected443" {
///   load_balancer_arn = data.aws_lb_getloadbalancer.selected.arn
///   port              = 443
/// }
///
/// # get listener from listener arn
/// variable "listenerArn" {
///   type = string
/// }
/// # get listener from load_balancer_arn and port
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetListenerArgs;
/// import com.pulumi.aws.lb.inputs.GetLoadBalancerArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var config = ctx.config();
///         final var listenerArn = config.require("listenerArn");
///         final var listener = LbFunctions.getListener(GetListenerArgs.builder()
///             .arn(listenerArn)
///             .build());
///
///         // get listener from load_balancer_arn and port
///         final var selected = LbFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .name("default-public")
///             .build());
///
///         final var selected443 = LbFunctions.getListener(GetListenerArgs.builder()
///             .loadBalancerArn(selected.arn())
///             .port(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # get listener from listener arn
///   listenerArn:
///     type: string
/// variables:
///   listener:
///     fn::invoke:
///       function: aws:lb:getListener
///       arguments:
///         arn: ${listenerArn}
///   # get listener from load_balancer_arn and port
///   selected:
///     fn::invoke:
///       function: aws:lb:getLoadBalancer
///       arguments:
///         name: default-public
///   selected443:
///     fn::invoke:
///       function: aws:lb:getListener
///       arguments:
///         loadBalancerArn: ${selected.arn}
///         port: 443
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_listener_get_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenerResult> getListener(
  GetListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListener:getListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerResult.fromMap(result);
}

pulumi.Output<GetListenerResult> getListenerOutput(
  GetListenerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getListener:getListener',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetListenerResult.fromMap);
}

/// Provides information about an AWS Elastic Load Balancing Listener Rule.
///
/// ## Example Usage
///
/// ### Match by Rule ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbRuleArn = config.require("lbRuleArn");
/// const example = aws.lb.getListenerRule({
///     arn: lbRuleArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_rule_arn = config.require("lbRuleArn")
/// example = aws.lb.get_listener_rule(arn=lb_rule_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var lbRuleArn = config.Require("lbRuleArn");
///     var example = Aws.LB.GetListenerRule.Invoke(new()
///     {
///         Arn = lbRuleArn,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		lbRuleArn := cfg.Require("lbRuleArn")
/// 		_, err := lb.LookupListenerRule(ctx, &lb.LookupListenerRuleArgs{
/// 			Arn: pulumi.StringRef(lbRuleArn),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_getlistenerrule" "example" {
///   arn = var.lbRuleArn
/// }
///
/// variable "lbRuleArn" {
///   type = string
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetListenerRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var config = ctx.config();
///         final var lbRuleArn = config.require("lbRuleArn");
///         final var example = LbFunctions.getListenerRule(GetListenerRuleArgs.builder()
///             .arn(lbRuleArn)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   lbRuleArn:
///     type: string
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lb:getListenerRule
///       arguments:
///         arn: ${lbRuleArn}
/// ```
///
///
/// ### Match by Listener ARN and Priority
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbListenerArn = config.require("lbListenerArn");
/// const lbRulePriority = config.requireNumber("lbRulePriority");
/// const example = aws.lb.getListenerRule({
///     listenerArn: lbListenerArn,
///     priority: lbRulePriority,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_listener_arn = config.require("lbListenerArn")
/// lb_rule_priority = config.require_float("lbRulePriority")
/// example = aws.lb.get_listener_rule(listener_arn=lb_listener_arn,
///     priority=int(lb_rule_priority))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var lbListenerArn = config.Require("lbListenerArn");
///     var lbRulePriority = config.RequireDouble("lbRulePriority");
///     var example = Aws.LB.GetListenerRule.Invoke(new()
///     {
///         ListenerArn = lbListenerArn,
///         Priority = lbRulePriority,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		lbListenerArn := cfg.Require("lbListenerArn")
/// 		lbRulePriority := cfg.RequireFloat64("lbRulePriority")
/// 		_, err := lb.LookupListenerRule(ctx, &lb.LookupListenerRuleArgs{
/// 			ListenerArn: pulumi.StringRef(lbListenerArn),
/// 			Priority:    pulumi.IntRef(lbRulePriority),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_getlistenerrule" "example" {
///   listener_arn = var.lbListenerArn
///   priority     = var.lbRulePriority
/// }
///
/// variable "lbListenerArn" {
///   type = string
/// }
/// variable "lbRulePriority" {
///   type = number
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetListenerRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var config = ctx.config();
///         final var lbListenerArn = config.require("lbListenerArn");
///         final var lbRulePriority = config.requireDouble("lbRulePriority");
///         final var example = LbFunctions.getListenerRule(GetListenerRuleArgs.builder()
///             .listenerArn(lbListenerArn)
///             .priority(lbRulePriority)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   lbListenerArn:
///     type: string
///   lbRulePriority:
///     type: number
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lb:getListenerRule
///       arguments:
///         listenerArn: ${lbListenerArn}
///         priority: ${lbRulePriority}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_listener_rule_get_listener_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenerRuleResult> getListenerRule(
  GetListenerRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListenerRule:getListenerRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerRuleResult.fromMap(result);
}

pulumi.Output<GetListenerRuleResult> getListenerRuleOutput(
  GetListenerRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getListenerRule:getListenerRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetListenerRuleResult.fromMap);
}

/// &gt; **Note:** `aws.alb.LoadBalancer` is known as `aws.lb.LoadBalancer`. The functionality is identical.
///
/// Provides information about a Load Balancer.
///
/// This data source can prove useful when a module accepts an LB as an input
/// variable and needs to, for example, determine the security groups associated
/// with it, etc.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbArn = config.get("lbArn") || "";
/// const lbName = config.get("lbName") || "";
/// const test = aws.lb.getLoadBalancer({
///     arn: lbArn,
///     name: lbName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_arn = config.get("lbArn")
/// if lb_arn is None:
///     lb_arn = ""
/// lb_name = config.get("lbName")
/// if lb_name is None:
///     lb_name = ""
/// test = aws.lb.get_load_balancer(arn=lb_arn,
///     name=lb_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var lbArn = config.Get("lbArn") ?? "";
///     var lbName = config.Get("lbName") ?? "";
///     var test = Aws.LB.GetLoadBalancer.Invoke(new()
///     {
///         Arn = lbArn,
///         Name = lbName,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		lbArn := ""
/// 		if param := cfg.Get("lbArn"); param != "" {
/// 			lbArn = param
/// 		}
/// 		lbName := ""
/// 		if param := cfg.Get("lbName"); param != "" {
/// 			lbName = param
/// 		}
/// 		_, err := lb.LookupLoadBalancer(ctx, &lb.LookupLoadBalancerArgs{
/// 			Arn:  pulumi.StringRef(lbArn),
/// 			Name: pulumi.StringRef(lbName),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_getloadbalancer" "test" {
///   arn  = var.lbArn
///   name = var.lbName
/// }
///
/// variable "lbArn" {
///   type    = string
///   default = ""
/// }
/// variable "lbName" {
///   type    = string
///   default = ""
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetLoadBalancerArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var config = ctx.config();
///         final var lbArn = config.get("lbArn").orElse("");
///         final var lbName = config.get("lbName").orElse("");
///         final var test = LbFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .arn(lbArn)
///             .name(lbName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   lbArn:
///     type: string
///     default: ""
///   lbName:
///     type: string
///     default: ""
/// variables:
///   test:
///     fn::invoke:
///       function: aws:lb:getLoadBalancer
///       arguments:
///         arn: ${lbArn}
///         name: ${lbName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_load_balancer_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

pulumi.Output<GetLoadBalancerResult> getLoadBalancerOutput(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getLoadBalancer:getLoadBalancer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadBalancerResult.fromMap);
}

/// &gt; **Note:** `aws.alb.TargetGroup` is known as `aws.lb.TargetGroup`. The functionality is identical.
///
/// Provides information about a Load Balancer Target Group.
///
/// This data source can prove useful when a module accepts an LB Target Group as an
/// input variable and needs to know its attributes. It can also be used to get the ARN of
/// an LB Target Group for use in other resources, given LB Target Group name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbTgArn = config.get("lbTgArn") || "";
/// const lbTgName = config.get("lbTgName") || "";
/// const test = aws.lb.getTargetGroup({
///     arn: lbTgArn,
///     name: lbTgName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_tg_arn = config.get("lbTgArn")
/// if lb_tg_arn is None:
///     lb_tg_arn = ""
/// lb_tg_name = config.get("lbTgName")
/// if lb_tg_name is None:
///     lb_tg_name = ""
/// test = aws.lb.get_target_group(arn=lb_tg_arn,
///     name=lb_tg_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var lbTgArn = config.Get("lbTgArn") ?? "";
///     var lbTgName = config.Get("lbTgName") ?? "";
///     var test = Aws.LB.GetTargetGroup.Invoke(new()
///     {
///         Arn = lbTgArn,
///         Name = lbTgName,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		lbTgArn := ""
/// 		if param := cfg.Get("lbTgArn"); param != "" {
/// 			lbTgArn = param
/// 		}
/// 		lbTgName := ""
/// 		if param := cfg.Get("lbTgName"); param != "" {
/// 			lbTgName = param
/// 		}
/// 		_, err := lb.LookupTargetGroup(ctx, &lb.LookupTargetGroupArgs{
/// 			Arn:  pulumi.StringRef(lbTgArn),
/// 			Name: pulumi.StringRef(lbTgName),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_gettargetgroup" "test" {
///   arn  = var.lbTgArn
///   name = var.lbTgName
/// }
///
/// variable "lbTgArn" {
///   type    = string
///   default = ""
/// }
/// variable "lbTgName" {
///   type    = string
///   default = ""
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetTargetGroupArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var config = ctx.config();
///         final var lbTgArn = config.get("lbTgArn").orElse("");
///         final var lbTgName = config.get("lbTgName").orElse("");
///         final var test = LbFunctions.getTargetGroup(GetTargetGroupArgs.builder()
///             .arn(lbTgArn)
///             .name(lbTgName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   lbTgArn:
///     type: string
///     default: ""
///   lbTgName:
///     type: string
///     default: ""
/// variables:
///   test:
///     fn::invoke:
///       function: aws:lb:getTargetGroup
///       arguments:
///         arn: ${lbTgArn}
///         name: ${lbTgName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_target_group_get_target_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetGroupResult> getTargetGroup(
  GetTargetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getTargetGroup:getTargetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGroupResult.fromMap(result);
}

pulumi.Output<GetTargetGroupResult> getTargetGroupOutput(
  GetTargetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getTargetGroup:getTargetGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetGroupResult.fromMap);
}

/// Provides information about a Load Balancer Trust Store.
///
/// This data source can prove useful when a module accepts an LB Trust Store as an
/// input variable and needs to know its attributes. It can also be used to get the ARN of
/// an LB Trust Store for use in other resources, given LB Trust Store name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbTsArn = config.get("lbTsArn") || "";
/// const lbTsName = config.get("lbTsName") || "";
/// const test = aws.lb.getTrustStore({
///     arn: lbTsArn,
///     name: lbTsName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_ts_arn = config.get("lbTsArn")
/// if lb_ts_arn is None:
///     lb_ts_arn = ""
/// lb_ts_name = config.get("lbTsName")
/// if lb_ts_name is None:
///     lb_ts_name = ""
/// test = aws.lb.get_trust_store(arn=lb_ts_arn,
///     name=lb_ts_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var lbTsArn = config.Get("lbTsArn") ?? "";
///     var lbTsName = config.Get("lbTsName") ?? "";
///     var test = Aws.LB.GetTrustStore.Invoke(new()
///     {
///         Arn = lbTsArn,
///         Name = lbTsName,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		lbTsArn := ""
/// 		if param := cfg.Get("lbTsArn"); param != "" {
/// 			lbTsArn = param
/// 		}
/// 		lbTsName := ""
/// 		if param := cfg.Get("lbTsName"); param != "" {
/// 			lbTsName = param
/// 		}
/// 		_, err := lb.LookupTrustStore(ctx, &lb.LookupTrustStoreArgs{
/// 			Arn:  pulumi.StringRef(lbTsArn),
/// 			Name: pulumi.StringRef(lbTsName),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_lb_gettruststore" "test" {
///   arn  = var.lbTsArn
///   name = var.lbTsName
/// }
///
/// variable "lbTsArn" {
///   type    = string
///   default = ""
/// }
/// variable "lbTsName" {
///   type    = string
///   default = ""
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetTrustStoreArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var config = ctx.config();
///         final var lbTsArn = config.get("lbTsArn").orElse("");
///         final var lbTsName = config.get("lbTsName").orElse("");
///         final var test = LbFunctions.getTrustStore(GetTrustStoreArgs.builder()
///             .arn(lbTsArn)
///             .name(lbTsName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   lbTsArn:
///     type: string
///     default: ""
///   lbTsName:
///     type: string
///     default: ""
/// variables:
///   test:
///     fn::invoke:
///       function: aws:lb:getTrustStore
///       arguments:
///         arn: ${lbTsArn}
///         name: ${lbTsName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lb_get_trust_store_get_trust_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrustStoreResult> getTrustStore(
  GetTrustStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getTrustStore:getTrustStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrustStoreResult.fromMap(result);
}

pulumi.Output<GetTrustStoreResult> getTrustStoreOutput(
  GetTrustStoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lb/getTrustStore:getTrustStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrustStoreResult.fromMap);
}
