import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_firewall_domain_list_args.dart';

/// Provides a Route 53 Resolver DNS Firewall domain list resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverFirewallDomainList("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverFirewallDomainList("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.ResolverFirewallDomainList("example", new()
///     {
///         Name = "example",
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
/// 		_, err := route53.NewResolverFirewallDomainList(ctx, "example", &route53.ResolverFirewallDomainListArgs{
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.route53.ResolverFirewallDomainList;
/// import com.pulumi.aws.route53.ResolverFirewallDomainListArgs;
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
///         var example = new ResolverFirewallDomainList("example", ResolverFirewallDomainListArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ResolverFirewallDomainList
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver DNS Firewall domain lists using the Route 53 Resolver DNS Firewall domain list ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallDomainList:ResolverFirewallDomainList example rslvr-fdl-0123456789abcdef
/// ```
class ResolverFirewallDomainList extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the domain list.
  late final pulumi.Output<String> arn;

  /// A array of domains for the firewall domain list.
  late final pulumi.Output<List<String>?> domains;

  /// A name that lets you identify the domain list, to manage and use it.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. f configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ResolverFirewallDomainList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverFirewallDomainList]. {@macro pulumi_route53_resolver_firewall_domain_list_resolver_firewall_domain_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverFirewallDomainList(
    String name, {
    ResolverFirewallDomainListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallDomainList:ResolverFirewallDomainList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domains = registerOutput<List<String>?>('domains');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
