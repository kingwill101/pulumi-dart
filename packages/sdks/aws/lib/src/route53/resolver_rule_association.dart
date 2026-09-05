import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_rule_association_args.dart';
import 'resolver_rule_association_state.dart';

/// Provides a Route53 Resolver rule association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverRuleAssociation("example", {
///     resolverRuleId: sys.id,
///     vpcId: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverRuleAssociation("example",
///     resolver_rule_id=sys["id"],
///     vpc_id=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.ResolverRuleAssociation("example", new()
///     {
///         ResolverRuleId = sys.Id,
///         VpcId = foo.Id,
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
/// 		_, err := route53.NewResolverRuleAssociation(ctx, "example", &route53.ResolverRuleAssociationArgs{
/// 			ResolverRuleId: pulumi.Any(sys.Id),
/// 			VpcId:          pulumi.Any(foo.Id),
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
/// resource "aws_route53_resolverruleassociation" "example" {
///   resolver_rule_id = sys.id
///   vpc_id           = foo.id
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
///         var example = new ResolverRuleAssociation("example", ResolverRuleAssociationArgs.builder()
///             .resolverRuleId(sys.id())
///             .vpcId(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ResolverRuleAssociation
///     properties:
///       resolverRuleId: ${sys.id}
///       vpcId: ${foo.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Route53 Resolver rule association.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route53 Resolver rule associations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverRuleAssociation:ResolverRuleAssociation example rslvr-rrassoc-97242eaf88example
/// ```
class ResolverRuleAssociation extends pulumi.CustomResource {
  /// A name for the association that you're creating between a resolver rule and a VPC.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the resolver rule that you want to associate with the VPC.
  late final pulumi.Output<String> resolverRuleId;
  /// The ID of the VPC that you want to associate the resolver rule with.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ResolverRuleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverRuleAssociation]. {@macro pulumi_route53_resolver_rule_association_resolver_rule_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverRuleAssociation(
    String name, {
    ResolverRuleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRuleAssociation:ResolverRuleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resolverRuleId = registerOutput<String>('resolverRuleId');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ResolverRuleAssociation] resource's state with the given [name] and [id].
  static ResolverRuleAssociation get(
    String name,
    pulumi.Input<String> id, {
    ResolverRuleAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResolverRuleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResolverRuleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRuleAssociation:ResolverRuleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resolverRuleId = registerOutput<String>('resolverRuleId');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [ResolverRuleAssociation] resource.
  ResolverRuleAssociation.reference(String urn)
    : super(
        'aws:route53/resolverRuleAssociation:ResolverRuleAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resolverRuleId = registerOutput<String>('resolverRuleId');
    vpcId = registerOutput<String>('vpcId');
  }
}
