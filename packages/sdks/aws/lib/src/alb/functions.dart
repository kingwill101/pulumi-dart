import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_args.dart';
import 'get_listener_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_target_group_args.dart';
import 'get_target_group_result.dart';

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
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_listener_get_listener_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListenerResult> getListener(
  GetListenerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:alb/getListener:getListener',
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
    'aws:alb/getListener:getListener',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetListenerResult.fromMap);
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
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_load_balancer_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:alb/getLoadBalancer:getLoadBalancer',
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
    'aws:alb/getLoadBalancer:getLoadBalancer',
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
/// [args] Arguments passed to this invoke. {@macro pulumi_alb_get_target_group_get_target_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetGroupResult> getTargetGroup(
  GetTargetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:alb/getTargetGroup:getTargetGroup',
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
    'aws:alb/getTargetGroup:getTargetGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetGroupResult.fromMap);
}
