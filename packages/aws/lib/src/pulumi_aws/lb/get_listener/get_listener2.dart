import 'package:pulumi/pulumi.dart';
import 'get_listener_args2.dart';
import 'get_listener_result2.dart';

/// > **Note:** <span pulumi-lang-nodejs="`aws.alb.Listener`" pulumi-lang-dotnet="`aws.alb.Listener`" pulumi-lang-go="`alb.Listener`" pulumi-lang-python="`alb.Listener`" pulumi-lang-yaml="`aws.alb.Listener`" pulumi-lang-java="`aws.alb.Listener`">`aws.alb.Listener`</span> is known as <span pulumi-lang-nodejs="`aws.lb.Listener`" pulumi-lang-dotnet="`aws.lb.Listener`" pulumi-lang-go="`lb.Listener`" pulumi-lang-python="`lb.Listener`" pulumi-lang-yaml="`aws.lb.Listener`" pulumi-lang-java="`aws.lb.Listener`">`aws.lb.Listener`</span>. The functionality is identical.
///
/// Provides information about a Load Balancer Listener.
///
/// This data source can prove useful when a module accepts an LB Listener as an input variable and needs to know the LB it is attached to, or other information specific to the listener in question.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const listenerArn = config.require("listenerArn");
/// const listener = aws.lb.getListener({
/// arn: listenerArn,
/// });
/// // get listener from load_balancer_arn and port
/// const selected = aws.lb.getLoadBalancer({
/// name: "default-public",
/// });
/// const selected443 = selected.then(selected => aws.lb.getListener({
/// loadBalancerArn: selected.arn,
/// port: 443,
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
/// port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var listenerArn = config.Require("listenerArn");
/// var listener = Aws.LB.GetListener.Invoke(new()
/// {
/// Arn = listenerArn,
/// });
///
/// // get listener from load_balancer_arn and port
/// var selected = Aws.LB.GetLoadBalancer.Invoke(new()
/// {
/// Name = "default-public",
/// });
///
/// var selected443 = Aws.LB.GetListener.Invoke(new()
/// {
/// LoadBalancerArn = selected.Apply(getLoadBalancerResult => getLoadBalancerResult.Arn),
/// Port = 443,
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// listenerArn := cfg.Require("listenerArn")
/// _, err := lb.LookupListener(ctx, &lb.LookupListenerArgs{
/// Arn: pulumi.StringRef(listenerArn),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // get listener from load_balancer_arn and port
/// selected, err := lb.LookupLoadBalancer(ctx, &lb.LookupLoadBalancerArgs{
/// Name: pulumi.StringRef("default-public"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lb.LookupListener(ctx, &lb.LookupListenerArgs{
/// LoadBalancerArn: pulumi.StringRef(selected.Arn),
/// Port:            pulumi.IntRef(443),
/// }, nil)
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
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetListenerArgs;
/// import com.pulumi.aws.lb.inputs.GetLoadBalancerArgs;
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
/// final var config = ctx.config();
/// final var listenerArn = config.get("listenerArn");
/// final var listener = LbFunctions.getListener(GetListenerArgs.builder()
/// .arn(listenerArn)
/// .build());
///
/// // get listener from load_balancer_arn and port
/// final var selected = LbFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
/// .name("default-public")
/// .build());
///
/// final var selected443 = LbFunctions.getListener(GetListenerArgs.builder()
/// .loadBalancerArn(selected.arn())
/// .port(443)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// # get listener from listener arn
/// listenerArn:
/// type: string
/// variables:
/// listener:
/// fn::invoke:
/// function: aws:lb:getListener
/// arguments:
/// arn: ${listenerArn}
/// # get listener from load_balancer_arn and port
/// selected:
/// fn::invoke:
/// function: aws:lb:getLoadBalancer
/// arguments:
/// name: default-public
/// selected443:
/// fn::invoke:
/// function: aws:lb:getListener
/// arguments:
/// loadBalancerArn: ${selected.arn}
/// port: 443
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetListenerResult2> getListener2(
  GetListenerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListener:getListener',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListenerResult2.fromMap(result);
}
