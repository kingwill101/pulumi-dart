import 'package:pulumi/pulumi.dart';
import 'get_query_log_config_args.dart';
import 'get_query_log_config_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.ResolverQueryLogConfig`" pulumi-lang-dotnet="`aws.route53.ResolverQueryLogConfig`" pulumi-lang-go="`route53.ResolverQueryLogConfig`" pulumi-lang-python="`route53.ResolverQueryLogConfig`" pulumi-lang-yaml="`aws.route53.ResolverQueryLogConfig`" pulumi-lang-java="`aws.route53.ResolverQueryLogConfig`">`aws.route53.ResolverQueryLogConfig`</span> provides details about a specific Route53 Resolver Query Logging Configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getQueryLogConfig({
/// resolverQueryLogConfigId: "rqlc-1abc2345ef678g91h",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_query_log_config(resolver_query_log_config_id="rqlc-1abc2345ef678g91h")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetQueryLogConfig.Invoke(new()
/// {
/// ResolverQueryLogConfigId = "rqlc-1abc2345ef678g91h",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.GetQueryLogConfig(ctx, &route53.GetQueryLogConfigArgs{
/// ResolverQueryLogConfigId: pulumi.StringRef("rqlc-1abc2345ef678g91h"),
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetQueryLogConfigArgs;
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
/// final var example = Route53Functions.getQueryLogConfig(GetQueryLogConfigArgs.builder()
/// .resolverQueryLogConfigId("rqlc-1abc2345ef678g91h")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getQueryLogConfig
/// arguments:
/// resolverQueryLogConfigId: rqlc-1abc2345ef678g91h
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getQueryLogConfig({
/// filters: [
/// {
/// name: "Name",
/// values: ["shared-query-log-config"],
/// },
/// {
/// name: "ShareStatus",
/// values: ["SHARED_WITH_ME"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_query_log_config(filters=[
/// {
/// "name": "Name",
/// "values": ["shared-query-log-config"],
/// },
/// {
/// "name": "ShareStatus",
/// "values": ["SHARED_WITH_ME"],
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
/// var example = Aws.Route53.GetQueryLogConfig.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Route53.Inputs.GetQueryLogConfigFilterInputArgs
/// {
/// Name = "Name",
/// Values = new[]
/// {
/// "shared-query-log-config",
/// },
/// },
/// new Aws.Route53.Inputs.GetQueryLogConfigFilterInputArgs
/// {
/// Name = "ShareStatus",
/// Values = new[]
/// {
/// "SHARED_WITH_ME",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.GetQueryLogConfig(ctx, &route53.GetQueryLogConfigArgs{
/// Filters: []route53.GetQueryLogConfigFilter{
/// {
/// Name: "Name",
/// Values: []string{
/// "shared-query-log-config",
/// },
/// },
/// {
/// Name: "ShareStatus",
/// Values: []string{
/// "SHARED_WITH_ME",
/// },
/// },
/// },
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
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetQueryLogConfigArgs;
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
/// final var example = Route53Functions.getQueryLogConfig(GetQueryLogConfigArgs.builder()
/// .filters(
/// GetQueryLogConfigFilterArgs.builder()
/// .name("Name")
/// .values("shared-query-log-config")
/// .build(),
/// GetQueryLogConfigFilterArgs.builder()
/// .name("ShareStatus")
/// .values("SHARED_WITH_ME")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getQueryLogConfig
/// arguments:
/// filters:
/// - name: Name
/// values:
/// - shared-query-log-config
/// - name: ShareStatus
/// values:
/// - SHARED_WITH_ME
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetQueryLogConfigResult> getQueryLogConfig(
  GetQueryLogConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getQueryLogConfig:getQueryLogConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueryLogConfigResult.fromMap(result);
}
