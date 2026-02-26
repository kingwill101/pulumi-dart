import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_domain_list_args.dart';
import 'get_resolver_firewall_domain_list_result.dart';

/// <span pulumi-lang-nodejs="`aws.route53.ResolverFirewallDomainList`" pulumi-lang-dotnet="`aws.route53.ResolverFirewallDomainList`" pulumi-lang-go="`route53.ResolverFirewallDomainList`" pulumi-lang-python="`route53.ResolverFirewallDomainList`" pulumi-lang-yaml="`aws.route53.ResolverFirewallDomainList`" pulumi-lang-java="`aws.route53.ResolverFirewallDomainList`">`aws.route53.ResolverFirewallDomainList`</span> Retrieves the specified firewall domain list.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall domain list.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall domain list from its ID.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.route53.getResolverFirewallDomainList({
/// firewallDomainListId: "rslvr-fdl-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.get_resolver_firewall_domain_list(firewall_domain_list_id="rslvr-fdl-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Route53.GetResolverFirewallDomainList.Invoke(new()
/// {
/// FirewallDomainListId = "rslvr-fdl-example",
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
/// _, err := route53.LookupResolverFirewallDomainList(ctx, &route53.LookupResolverFirewallDomainListArgs{
/// FirewallDomainListId: "rslvr-fdl-example",
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
/// import com.pulumi.aws.route53.inputs.GetResolverFirewallDomainListArgs;
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
/// final var example = Route53Functions.getResolverFirewallDomainList(GetResolverFirewallDomainListArgs.builder()
/// .firewallDomainListId("rslvr-fdl-example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:route53:getResolverFirewallDomainList
/// arguments:
/// firewallDomainListId: rslvr-fdl-example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResolverFirewallDomainListResult> getResolverFirewallDomainList(
  GetResolverFirewallDomainListArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallDomainList:getResolverFirewallDomainList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallDomainListResult.fromMap(result);
}
