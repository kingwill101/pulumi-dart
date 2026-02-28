import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_dns_sec_config_args.dart';

/// Provides a Route 53 Resolver DNSSEC config resource.
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
/// const exampleResolverDnsSecConfig = new aws.route53.ResolverDnsSecConfig("example", {resourceId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
///     cidr_block="10.0.0.0/16",
///     enable_dns_support=True,
///     enable_dns_hostnames=True)
/// example_resolver_dns_sec_config = aws.route53.ResolverDnsSecConfig("example", resource_id=example.id)
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
///     var exampleResolverDnsSecConfig = new Aws.Route53.ResolverDnsSecConfig("example", new()
///     {
///         ResourceId = example.Id,
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
/// 		_, err = route53.NewResolverDnsSecConfig(ctx, "example", &route53.ResolverDnsSecConfigArgs{
/// 			ResourceId: example.ID(),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.route53.ResolverDnsSecConfig;
/// import com.pulumi.aws.route53.ResolverDnsSecConfigArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .enableDnsSupport(true)
///             .enableDnsHostnames(true)
///             .build());
///
///         var exampleResolverDnsSecConfig = new ResolverDnsSecConfig("exampleResolverDnsSecConfig", ResolverDnsSecConfigArgs.builder()
///             .resourceId(example.id())
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
///   exampleResolverDnsSecConfig:
///     type: aws:route53:ResolverDnsSecConfig
///     name: example
///     properties:
///       resourceId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver DNSSEC configs using the Route 53 Resolver DNSSEC config ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverDnsSecConfig:ResolverDnsSecConfig example rdsc-be1866ecc1683e95
/// ```
class ResolverDnsSecConfig extends pulumi.CustomResource {
  /// The ARN for a configuration for DNSSEC validation.
  late final pulumi.Output<String> arn;
  /// The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.
  late final pulumi.Output<String> resourceId;
  /// The validation status for a DNSSEC configuration. The status can be one of the following: `ENABLING`, `ENABLED`, `DISABLING` and `DISABLED`.
  late final pulumi.Output<String> validationStatus;

  /// Creates a new [ResolverDnsSecConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverDnsSecConfig]. {@macro pulumi_route53_resolver_dns_sec_config_resolver_dns_sec_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverDnsSecConfig(
    String name, {
    ResolverDnsSecConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverDnsSecConfig:ResolverDnsSecConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.validationStatus = registerOutput<String>('validationStatus');
  }
}
