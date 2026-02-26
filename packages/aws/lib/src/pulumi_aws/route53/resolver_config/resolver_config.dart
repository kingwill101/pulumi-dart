import 'package:pulumi/pulumi.dart';
import 'resolver_config_args.dart';

/// Provides a Route 53 Resolver config resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
/// cidrBlock: "10.0.0.0/16",
/// enableDnsSupport: true,
/// enableDnsHostnames: true,
/// });
/// const exampleResolverConfig = new aws.route53.ResolverConfig("example", {
/// resourceId: example.id,
/// autodefinedReverseFlag: "DISABLE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
/// cidr_block="10.0.0.0/16",
/// enable_dns_support=True,
/// enable_dns_hostnames=True)
/// example_resolver_config = aws.route53.ResolverConfig("example",
/// resource_id=example.id,
/// autodefined_reverse_flag="DISABLE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// EnableDnsSupport = true,
/// EnableDnsHostnames = true,
/// });
///
/// var exampleResolverConfig = new Aws.Route53.ResolverConfig("example", new()
/// {
/// ResourceId = example.Id,
/// AutodefinedReverseFlag = "DISABLE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock:          pulumi.String("10.0.0.0/16"),
/// EnableDnsSupport:   pulumi.Bool(true),
/// EnableDnsHostnames: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewResolverConfig(ctx, "example", &route53.ResolverConfigArgs{
/// ResourceId:             example.ID(),
/// AutodefinedReverseFlag: pulumi.String("DISABLE"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.route53.ResolverConfig;
/// import com.pulumi.aws.route53.ResolverConfigArgs;
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
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .enableDnsSupport(true)
/// .enableDnsHostnames(true)
/// .build());
///
/// var exampleResolverConfig = new ResolverConfig("exampleResolverConfig", ResolverConfigArgs.builder()
/// .resourceId(example.id())
/// .autodefinedReverseFlag("DISABLE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// enableDnsSupport: true
/// enableDnsHostnames: true
/// exampleResolverConfig:
/// type: aws:route53:ResolverConfig
/// name: example
/// properties:
/// resourceId: ${example.id}
/// autodefinedReverseFlag: DISABLE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver configs using the Route 53 Resolver config ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverConfig:ResolverConfig example rslvr-rc-715aa20c73a23da7
/// ```
class ResolverConfig extends CustomResource {
  /// Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  late final Output<String> autodefinedReverseFlag;

  /// The AWS account ID of the owner of the VPC that this resolver configuration applies to.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC that the configuration is for.
  late final Output<String> resourceId;

  ResolverConfig(
    String name, {
    ResolverConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverConfig:ResolverConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autodefinedReverseFlag = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceId = Output.createUnknown<String>();
  }
}
