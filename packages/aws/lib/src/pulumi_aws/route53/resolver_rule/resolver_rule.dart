import 'package:pulumi/pulumi.dart';
import '../resolver_rule_target_ip/resolver_rule_target_ip.dart';
import 'resolver_rule_args.dart';

/// Provides a Route53 Resolver rule.
///
/// ## Example Usage
///
/// ### System rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sys = new aws.route53.ResolverRule("sys", {
/// domainName: "subdomain.example.com",
/// ruleType: "SYSTEM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sys = aws.route53.ResolverRule("sys",
/// domain_name="subdomain.example.com",
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
/// var sys = new Aws.Route53.ResolverRule("sys", new()
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
/// _, err := route53.NewResolverRule(ctx, "sys", &route53.ResolverRuleArgs{
/// DomainName: pulumi.String("subdomain.example.com"),
/// RuleType:   pulumi.String("SYSTEM"),
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
/// import com.pulumi.aws.route53.ResolverRule;
/// import com.pulumi.aws.route53.ResolverRuleArgs;
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
/// var sys = new ResolverRule("sys", ResolverRuleArgs.builder()
/// .domainName("subdomain.example.com")
/// .ruleType("SYSTEM")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sys:
/// type: aws:route53:ResolverRule
/// properties:
/// domainName: subdomain.example.com
/// ruleType: SYSTEM
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Forward rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fwd = new aws.route53.ResolverRule("fwd", {
/// domainName: "example.com",
/// name: "example",
/// ruleType: "FORWARD",
/// resolverEndpointId: foo.id,
/// targetIps: [{
/// ip: "123.45.67.89",
/// }],
/// tags: {
/// Environment: "Prod",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fwd = aws.route53.ResolverRule("fwd",
/// domain_name="example.com",
/// name="example",
/// rule_type="FORWARD",
/// resolver_endpoint_id=foo["id"],
/// target_ips=[{
/// "ip": "123.45.67.89",
/// }],
/// tags={
/// "Environment": "Prod",
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
/// var fwd = new Aws.Route53.ResolverRule("fwd", new()
/// {
/// DomainName = "example.com",
/// Name = "example",
/// RuleType = "FORWARD",
/// ResolverEndpointId = foo.Id,
/// TargetIps = new[]
/// {
/// new Aws.Route53.Inputs.ResolverRuleTargetIpArgs
/// {
/// Ip = "123.45.67.89",
/// },
/// },
/// Tags =
/// {
/// { "Environment", "Prod" },
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
/// _, err := route53.NewResolverRule(ctx, "fwd", &route53.ResolverRuleArgs{
/// DomainName:         pulumi.String("example.com"),
/// Name:               pulumi.String("example"),
/// RuleType:           pulumi.String("FORWARD"),
/// ResolverEndpointId: pulumi.Any(foo.Id),
/// TargetIps: route53.ResolverRuleTargetIpArray{
/// &route53.ResolverRuleTargetIpArgs{
/// Ip: pulumi.String("123.45.67.89"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("Prod"),
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
/// import com.pulumi.aws.route53.ResolverRule;
/// import com.pulumi.aws.route53.ResolverRuleArgs;
/// import com.pulumi.aws.route53.inputs.ResolverRuleTargetIpArgs;
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
/// var fwd = new ResolverRule("fwd", ResolverRuleArgs.builder()
/// .domainName("example.com")
/// .name("example")
/// .ruleType("FORWARD")
/// .resolverEndpointId(foo.id())
/// .targetIps(ResolverRuleTargetIpArgs.builder()
/// .ip("123.45.67.89")
/// .build())
/// .tags(Map.of("Environment", "Prod"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// fwd:
/// type: aws:route53:ResolverRule
/// properties:
/// domainName: example.com
/// name: example
/// ruleType: FORWARD
/// resolverEndpointId: ${foo.id}
/// targetIps:
/// - ip: 123.45.67.89
/// tags:
/// Environment: Prod
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### IPv6 Forward rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fwd = new aws.route53.ResolverRule("fwd", {
/// domainName: "example.com",
/// name: "example",
/// ruleType: "FORWARD",
/// resolverEndpointId: foo.id,
/// targetIps: [{
/// ipv6: "2600:1f18:1686:2000:4e60:6e3e:258:da36",
/// }],
/// tags: {
/// Environment: "Prod",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fwd = aws.route53.ResolverRule("fwd",
/// domain_name="example.com",
/// name="example",
/// rule_type="FORWARD",
/// resolver_endpoint_id=foo["id"],
/// target_ips=[{
/// "ipv6": "2600:1f18:1686:2000:4e60:6e3e:258:da36",
/// }],
/// tags={
/// "Environment": "Prod",
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
/// var fwd = new Aws.Route53.ResolverRule("fwd", new()
/// {
/// DomainName = "example.com",
/// Name = "example",
/// RuleType = "FORWARD",
/// ResolverEndpointId = foo.Id,
/// TargetIps = new[]
/// {
/// new Aws.Route53.Inputs.ResolverRuleTargetIpArgs
/// {
/// Ipv6 = "2600:1f18:1686:2000:4e60:6e3e:258:da36",
/// },
/// },
/// Tags =
/// {
/// { "Environment", "Prod" },
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
/// _, err := route53.NewResolverRule(ctx, "fwd", &route53.ResolverRuleArgs{
/// DomainName:         pulumi.String("example.com"),
/// Name:               pulumi.String("example"),
/// RuleType:           pulumi.String("FORWARD"),
/// ResolverEndpointId: pulumi.Any(foo.Id),
/// TargetIps: route53.ResolverRuleTargetIpArray{
/// &route53.ResolverRuleTargetIpArgs{
/// Ipv6: pulumi.String("2600:1f18:1686:2000:4e60:6e3e:258:da36"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("Prod"),
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
/// import com.pulumi.aws.route53.ResolverRule;
/// import com.pulumi.aws.route53.ResolverRuleArgs;
/// import com.pulumi.aws.route53.inputs.ResolverRuleTargetIpArgs;
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
/// var fwd = new ResolverRule("fwd", ResolverRuleArgs.builder()
/// .domainName("example.com")
/// .name("example")
/// .ruleType("FORWARD")
/// .resolverEndpointId(foo.id())
/// .targetIps(ResolverRuleTargetIpArgs.builder()
/// .ipv6("2600:1f18:1686:2000:4e60:6e3e:258:da36")
/// .build())
/// .tags(Map.of("Environment", "Prod"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// fwd:
/// type: aws:route53:ResolverRule
/// properties:
/// domainName: example.com
/// name: example
/// ruleType: FORWARD
/// resolverEndpointId: ${foo.id}
/// targetIps:
/// - ipv6: 2600:1f18:1686:2000:4e60:6e3e:258:da36
/// tags:
/// Environment: Prod
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the Route53 Resolver rule.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route53 Resolver rules using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverRule:ResolverRule example rslvr-rr-0123456789abcdef0
/// ```
class ResolverRule extends CustomResource {
  /// ARN (Amazon Resource Name) for the resolver rule.
  late final Output<String> arn;

  /// DNS queries for this domain name are forwarded to the IP addresses that are specified using <span pulumi-lang-nodejs="`targetIp`" pulumi-lang-dotnet="`TargetIp`" pulumi-lang-go="`targetIp`" pulumi-lang-python="`target_ip`" pulumi-lang-yaml="`targetIp`" pulumi-lang-java="`targetIp`">`target_ip`</span>.
  late final Output<String> domainName;

  /// Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  late final Output<String> name;

  /// When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using <span pulumi-lang-nodejs="`targetIp`" pulumi-lang-dotnet="`TargetIp`" pulumi-lang-go="`targetIp`" pulumi-lang-python="`target_ip`" pulumi-lang-yaml="`targetIp`" pulumi-lang-java="`targetIp`">`target_ip`</span>.
  /// This argument should only be specified for `FORWARD` type rules.
  late final Output<String?> resolverEndpointId;

  /// Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  late final Output<String> ruleType;

  /// Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  late final Output<String> shareStatus;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  /// This argument should only be specified for `FORWARD` type rules.
  late final Output<List<ResolverRuleTargetIp>?> targetIps;

  ResolverRule(
    String name, {
    ResolverRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRule:ResolverRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resolverEndpointId = Output.createUnknown<String?>();
    this.ruleType = Output.createUnknown<String>();
    this.shareStatus = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetIps = Output.createUnknown<List<ResolverRuleTargetIp>?>();
  }
}
