import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_rule_args.dart';
import 'resolver_rule_target_ip.dart';

/// Provides a Route53 Resolver rule.
///
/// ## Example Usage
///
/// ### System rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sys = new aws.route53.ResolverRule("sys", {
///     domainName: "subdomain.example.com",
///     ruleType: "SYSTEM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sys = aws.route53.ResolverRule("sys",
///     domain_name="subdomain.example.com",
///     rule_type="SYSTEM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sys = new Aws.Route53.ResolverRule("sys", new()
///     {
///         DomainName = "subdomain.example.com",
///         RuleType = "SYSTEM",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewResolverRule(ctx, "sys", &route53.ResolverRuleArgs{
/// 			DomainName: pulumi.String("subdomain.example.com"),
/// 			RuleType:   pulumi.String("SYSTEM"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var sys = new ResolverRule("sys", ResolverRuleArgs.builder()
///             .domainName("subdomain.example.com")
///             .ruleType("SYSTEM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sys:
///     type: aws:route53:ResolverRule
///     properties:
///       domainName: subdomain.example.com
///       ruleType: SYSTEM
/// ```
///
///
/// ### Forward rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fwd = new aws.route53.ResolverRule("fwd", {
///     domainName: "example.com",
///     name: "example",
///     ruleType: "FORWARD",
///     resolverEndpointId: foo.id,
///     targetIps: [{
///         ip: "123.45.67.89",
///     }],
///     tags: {
///         Environment: "Prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fwd = aws.route53.ResolverRule("fwd",
///     domain_name="example.com",
///     name="example",
///     rule_type="FORWARD",
///     resolver_endpoint_id=foo["id"],
///     target_ips=[{
///         "ip": "123.45.67.89",
///     }],
///     tags={
///         "Environment": "Prod",
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
///     var fwd = new Aws.Route53.ResolverRule("fwd", new()
///     {
///         DomainName = "example.com",
///         Name = "example",
///         RuleType = "FORWARD",
///         ResolverEndpointId = foo.Id,
///         TargetIps = new[]
///         {
///             new Aws.Route53.Inputs.ResolverRuleTargetIpArgs
///             {
///                 Ip = "123.45.67.89",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewResolverRule(ctx, "fwd", &route53.ResolverRuleArgs{
/// 			DomainName:         pulumi.String("example.com"),
/// 			Name:               pulumi.String("example"),
/// 			RuleType:           pulumi.String("FORWARD"),
/// 			ResolverEndpointId: pulumi.Any(foo.Id),
/// 			TargetIps: route53.ResolverRuleTargetIpArray{
/// 				&route53.ResolverRuleTargetIpArgs{
/// 					Ip: pulumi.String("123.45.67.89"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Prod"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var fwd = new ResolverRule("fwd", ResolverRuleArgs.builder()
///             .domainName("example.com")
///             .name("example")
///             .ruleType("FORWARD")
///             .resolverEndpointId(foo.id())
///             .targetIps(ResolverRuleTargetIpArgs.builder()
///                 .ip("123.45.67.89")
///                 .build())
///             .tags(Map.of("Environment", "Prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fwd:
///     type: aws:route53:ResolverRule
///     properties:
///       domainName: example.com
///       name: example
///       ruleType: FORWARD
///       resolverEndpointId: ${foo.id}
///       targetIps:
///         - ip: 123.45.67.89
///       tags:
///         Environment: Prod
/// ```
///
///
/// ### IPv6 Forward rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fwd = new aws.route53.ResolverRule("fwd", {
///     domainName: "example.com",
///     name: "example",
///     ruleType: "FORWARD",
///     resolverEndpointId: foo.id,
///     targetIps: [{
///         ipv6: "2600:1f18:1686:2000:4e60:6e3e:258:da36",
///     }],
///     tags: {
///         Environment: "Prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// fwd = aws.route53.ResolverRule("fwd",
///     domain_name="example.com",
///     name="example",
///     rule_type="FORWARD",
///     resolver_endpoint_id=foo["id"],
///     target_ips=[{
///         "ipv6": "2600:1f18:1686:2000:4e60:6e3e:258:da36",
///     }],
///     tags={
///         "Environment": "Prod",
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
///     var fwd = new Aws.Route53.ResolverRule("fwd", new()
///     {
///         DomainName = "example.com",
///         Name = "example",
///         RuleType = "FORWARD",
///         ResolverEndpointId = foo.Id,
///         TargetIps = new[]
///         {
///             new Aws.Route53.Inputs.ResolverRuleTargetIpArgs
///             {
///                 Ipv6 = "2600:1f18:1686:2000:4e60:6e3e:258:da36",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewResolverRule(ctx, "fwd", &route53.ResolverRuleArgs{
/// 			DomainName:         pulumi.String("example.com"),
/// 			Name:               pulumi.String("example"),
/// 			RuleType:           pulumi.String("FORWARD"),
/// 			ResolverEndpointId: pulumi.Any(foo.Id),
/// 			TargetIps: route53.ResolverRuleTargetIpArray{
/// 				&route53.ResolverRuleTargetIpArgs{
/// 					Ipv6: pulumi.String("2600:1f18:1686:2000:4e60:6e3e:258:da36"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Prod"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var fwd = new ResolverRule("fwd", ResolverRuleArgs.builder()
///             .domainName("example.com")
///             .name("example")
///             .ruleType("FORWARD")
///             .resolverEndpointId(foo.id())
///             .targetIps(ResolverRuleTargetIpArgs.builder()
///                 .ipv6("2600:1f18:1686:2000:4e60:6e3e:258:da36")
///                 .build())
///             .tags(Map.of("Environment", "Prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fwd:
///     type: aws:route53:ResolverRule
///     properties:
///       domainName: example.com
///       name: example
///       ruleType: FORWARD
///       resolverEndpointId: ${foo.id}
///       targetIps:
///         - ipv6: 2600:1f18:1686:2000:4e60:6e3e:258:da36
///       tags:
///         Environment: Prod
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Route53 Resolver rule.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route53 Resolver rules using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverRule:ResolverRule example rslvr-rr-0123456789abcdef0
/// ```
class ResolverRule extends pulumi.CustomResource {
  /// ARN (Amazon Resource Name) for the resolver rule.
  late final pulumi.Output<String> arn;
  /// DNS queries for this domain name are forwarded to the IP addresses that are specified using `target_ip`.
  late final pulumi.Output<String> domainName;
  /// Friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.
  late final pulumi.Output<String> name;
  /// When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the outbound resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify using `target_ip`.
  /// This argument should only be specified for `FORWARD` type rules.
  late final pulumi.Output<String?> resolverEndpointId;
  /// Rule type. Valid values are `FORWARD`, `SYSTEM` and `RECURSIVE`.
  late final pulumi.Output<String> ruleType;
  /// Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  late final pulumi.Output<String> shareStatus;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block(s) indicating the IPs that you want Resolver to forward DNS queries to (documented below).
  /// This argument should only be specified for `FORWARD` type rules.
  late final pulumi.Output<List<ResolverRuleTargetIp>?> targetIps;

  /// Creates a new [ResolverRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverRule]. {@macro pulumi_route53_resolver_rule_resolver_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverRule(
    String name, {
    ResolverRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRule:ResolverRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resolverEndpointId = registerOutput<String?>('resolverEndpointId');
    this.ruleType = registerOutput<String>('ruleType');
    this.shareStatus = registerOutput<String>('shareStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetIps = registerOutput<List<ResolverRuleTargetIp>?>('targetIps');
  }
}
