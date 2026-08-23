import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_firewall_config_args.dart';
import 'resolver_firewall_config_state.dart';

/// Provides a Route 53 Resolver DNS Firewall config resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
///     cidrBlock: "10.0.0.0/16",
///     enableDnsSupport: true,
///     enableDnsHostnames: true,
/// });
/// const exampleResolverFirewallConfig = new aws.route53.ResolverFirewallConfig("example", {
///     resourceId: example.id,
///     firewallFailOpen: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     enable_dns_support=True,
///     enable_dns_hostnames=True)
/// example_resolver_firewall_config = aws.route53.ResolverFirewallConfig("example",
///     resource_id=example.id,
///     firewall_fail_open="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         EnableDnsSupport = true,
///         EnableDnsHostnames = true,
///     });
///
///     var exampleResolverFirewallConfig = new Aws.Route53.ResolverFirewallConfig("example", new()
///     {
///         ResourceId = example.Id,
///         FirewallFailOpen = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.0.0.0/16"),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewResolverFirewallConfig(ctx, "example", &route53.ResolverFirewallConfigArgs{
/// 			ResourceId:       example.ID().ToIDOutput().ToStringOutput(),
/// 			FirewallFailOpen: pulumi.String("ENABLED"),
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
/// resource "aws_ec2_vpc" "example" {
///   cidr_block           = "10.0.0.0/16"
///   enable_dns_support   = true
///   enable_dns_hostnames = true
/// }
/// resource "aws_route53_resolverfirewallconfig" "example" {
///   resource_id        = aws_ec2_vpc.example.id
///   firewall_fail_open = "ENABLED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.route53.ResolverFirewallConfig;
/// import com.pulumi.aws.route53.ResolverFirewallConfigArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .enableDnsSupport(true)
///             .enableDnsHostnames(true)
///             .build());
///
///         var exampleResolverFirewallConfig = new ResolverFirewallConfig("exampleResolverFirewallConfig", ResolverFirewallConfigArgs.builder()
///             .resourceId(example.id())
///             .firewallFailOpen("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///       enableDnsSupport: true
///       enableDnsHostnames: true
///   exampleResolverFirewallConfig:
///     type: aws:route53:ResolverFirewallConfig
///     name: example
///     properties:
///       resourceId: ${example.id}
///       firewallFailOpen: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall configs using the Route 53 Resolver DNS Firewall config ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallConfig:ResolverFirewallConfig example rdsc-be1866ecc1683e95
/// ```
class ResolverFirewallConfig extends pulumi.CustomResource {
  /// Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> firewallFailOpen;
  /// The AWS account ID of the owner of the VPC that this firewall configuration applies to.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the VPC that the configuration is for.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [ResolverFirewallConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverFirewallConfig]. {@macro pulumi_route53_resolver_firewall_config_resolver_firewall_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverFirewallConfig(
    String name, {
    ResolverFirewallConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallConfig:ResolverFirewallConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    firewallFailOpen = registerOutput<String>('firewallFailOpen');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [ResolverFirewallConfig] resource's state with the given [name] and [id].
  static ResolverFirewallConfig get(
    String name,
    pulumi.Input<String> id, {
    ResolverFirewallConfigState? state,
  }) {
    return ResolverFirewallConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResolverFirewallConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallConfig:ResolverFirewallConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    firewallFailOpen = registerOutput<String>('firewallFailOpen');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
  }
}
