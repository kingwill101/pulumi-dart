import 'package:pulumi/pulumi.dart';
import 'get_resolver_rule_args.dart';
import 'get_resolver_rule_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.ResolverRule`" pulumi-lang-dotnet="`aws.route53.ResolverRule`" pulumi-lang-go="`route53.ResolverRule`" pulumi-lang-python="`route53.ResolverRule`" pulumi-lang-yaml="`aws.route53.ResolverRule`" pulumi-lang-java="`aws.route53.ResolverRule`">`aws.route53.ResolverRule`</span> provides details about a specific Route53 Resolver rule.
///
/// ## Example Usage
///
/// The following example shows how to get a Route53 Resolver rule based on its associated domain name and rule type.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverRule({
/// domainName: "subdomain.example.com",
/// ruleType: "SYSTEM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_rule(domain_name="subdomain.example.com",
/// rule_type="SYSTEM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverRule.Invoke(new()
/// {
/// DomainName = "subdomain.example.com",
/// RuleType = "SYSTEM",
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
/// _, err := route53.LookupResolverRule(ctx, &route53.LookupResolverRuleArgs{
/// DomainName: pulumi.StringRef("subdomain.example.com"),
/// RuleType:   pulumi.StringRef("SYSTEM"),
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
/// import com.pulumi.aws.route53.inputs.GetResolverRuleArgs;
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
/// final var example = Route53Functions.getResolverRule(GetResolverRuleArgs.builder()
/// .domainName("subdomain.example.com")
/// .ruleType("SYSTEM")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverRule
/// arguments:
/// domainName: subdomain.example.com
/// ruleType: SYSTEM
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResolverRuleResult> getResolverRule(
  GetResolverRuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverRule:getResolverRule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverRuleResult.fromMap(result);
}
