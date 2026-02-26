import 'package:pulumi/pulumi.dart';
import 'get_resolver_rules_args.dart';
import 'get_resolver_rules_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.getResolverRules`" pulumi-lang-dotnet="`aws.route53.getResolverRules`" pulumi-lang-go="`route53.getResolverRules`" pulumi-lang-python="`route53_get_resolver_rules`" pulumi-lang-yaml="`aws.route53.getResolverRules`" pulumi-lang-java="`aws.route53.getResolverRules`">`aws.route53.getResolverRules`</span> provides details about a set of Route53 Resolver rules.
///
/// ## Example Usage
///
/// ### Retrieving the default resolver rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRules({
/// ownerId: "Route 53 Resolver",
/// ruleType: "RECURSIVE",
/// shareStatus: "NOT_SHARED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rules(owner_id="Route 53 Resolver",
/// rule_type="RECURSIVE",
/// share_status="NOT_SHARED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverRules.Invoke(new()
/// {
/// OwnerId = "Route 53 Resolver",
/// RuleType = "RECURSIVE",
/// ShareStatus = "NOT_SHARED",
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
/// _, err := route53.GetResolverRules(ctx, &route53.GetResolverRulesArgs{
/// OwnerId:     pulumi.StringRef("Route 53 Resolver"),
/// RuleType:    pulumi.StringRef("RECURSIVE"),
/// ShareStatus: pulumi.StringRef("NOT_SHARED"),
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
/// import com.pulumi.aws.route53.inputs.GetResolverRulesArgs;
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
/// final var example = Route53Functions.getResolverRules(GetResolverRulesArgs.builder()
/// .ownerId("Route 53 Resolver")
/// .ruleType("RECURSIVE")
/// .shareStatus("NOT_SHARED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverRules
/// arguments:
/// ownerId: Route 53 Resolver
/// ruleType: RECURSIVE
/// shareStatus: NOT_SHARED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Retrieving forward rules shared with me
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRules({
/// ruleType: "FORWARD",
/// shareStatus: "SHARED_WITH_ME",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rules(rule_type="FORWARD",
/// share_status="SHARED_WITH_ME")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverRules.Invoke(new()
/// {
/// RuleType = "FORWARD",
/// ShareStatus = "SHARED_WITH_ME",
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
/// _, err := route53.GetResolverRules(ctx, &route53.GetResolverRulesArgs{
/// RuleType:    pulumi.StringRef("FORWARD"),
/// ShareStatus: pulumi.StringRef("SHARED_WITH_ME"),
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
/// import com.pulumi.aws.route53.inputs.GetResolverRulesArgs;
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
/// final var example = Route53Functions.getResolverRules(GetResolverRulesArgs.builder()
/// .ruleType("FORWARD")
/// .shareStatus("SHARED_WITH_ME")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverRules
/// arguments:
/// ruleType: FORWARD
/// shareStatus: SHARED_WITH_ME
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Retrieving rules by name regex
///
/// Resolver rules whose name contains <span pulumi-lang-nodejs="`abc`" pulumi-lang-dotnet="`Abc`" pulumi-lang-go="`abc`" pulumi-lang-python="`abc`" pulumi-lang-yaml="`abc`" pulumi-lang-java="`abc`">`abc`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRules({
/// nameRegex: ".*abc.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rules(name_regex=".*abc.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverRules.Invoke(new()
/// {
/// NameRegex = ".*abc.*",
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
/// _, err := route53.GetResolverRules(ctx, &route53.GetResolverRulesArgs{
/// NameRegex: pulumi.StringRef(".*abc.*"),
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
/// import com.pulumi.aws.route53.inputs.GetResolverRulesArgs;
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
/// final var example = Route53Functions.getResolverRules(GetResolverRulesArgs.builder()
/// .nameRegex(".*abc.*")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverRules
/// arguments:
/// nameRegex: .*abc.*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResolverRulesResult> getResolverRules(
  GetResolverRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverRules:getResolverRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverRulesResult.fromMap(result);
}
