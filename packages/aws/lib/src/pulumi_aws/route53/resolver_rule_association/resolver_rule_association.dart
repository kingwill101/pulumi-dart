import 'package:pulumi/pulumi.dart';
import 'resolver_rule_association_args.dart';

/// Provides a Route53 Resolver rule association.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverRuleAssociation("example", {
/// resolverRuleId: sys.id,
/// vpcId: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverRuleAssociation("example",
/// resolver_rule_id=sys["id"],
/// vpc_id=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53.ResolverRuleAssociation("example", new()
/// {
/// ResolverRuleId = sys.Id,
/// VpcId = foo.Id,
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
/// _, err := route53.NewResolverRuleAssociation(ctx, "example", &route53.ResolverRuleAssociationArgs{
/// ResolverRuleId: pulumi.Any(sys.Id),
/// VpcId:          pulumi.Any(foo.Id),
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
/// import com.pulumi.aws.route53.ResolverRuleAssociation;
/// import com.pulumi.aws.route53.ResolverRuleAssociationArgs;
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
/// var example = new ResolverRuleAssociation("example", ResolverRuleAssociationArgs.builder()
/// .resolverRuleId(sys.id())
/// .vpcId(foo.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53:ResolverRuleAssociation
/// properties:
/// resolverRuleId: ${sys.id}
/// vpcId: ${foo.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the Route53 Resolver rule association.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route53 Resolver rule associations using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverRuleAssociation:ResolverRuleAssociation example rslvr-rrassoc-97242eaf88example
/// ```
class ResolverRuleAssociation extends CustomResource {
  /// A name for the association that you're creating between a resolver rule and a VPC.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the resolver rule that you want to associate with the VPC.
  late final Output<String> resolverRuleId;

  /// The ID of the VPC that you want to associate the resolver rule with.
  late final Output<String> vpcId;

  ResolverRuleAssociation(
    String name, {
    ResolverRuleAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRuleAssociation:ResolverRuleAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resolverRuleId = registerOutput<String>('resolverRuleId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
