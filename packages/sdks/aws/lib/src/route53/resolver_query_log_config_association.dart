import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_query_log_config_association_args.dart';
import 'resolver_query_log_config_association_state.dart';

/// Provides a Route 53 Resolver query logging configuration association resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverQueryLogConfigAssociation("example", {
///     resolverQueryLogConfigId: exampleAwsRoute53ResolverQueryLogConfig.id,
///     resourceId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverQueryLogConfigAssociation("example",
///     resolver_query_log_config_id=example_aws_route53_resolver_query_log_config["id"],
///     resource_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.ResolverQueryLogConfigAssociation("example", new()
///     {
///         ResolverQueryLogConfigId = exampleAwsRoute53ResolverQueryLogConfig.Id,
///         ResourceId = exampleAwsVpc.Id,
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
/// 		_, err := route53.NewResolverQueryLogConfigAssociation(ctx, "example", &route53.ResolverQueryLogConfigAssociationArgs{
/// 			ResolverQueryLogConfigId: pulumi.Any(exampleAwsRoute53ResolverQueryLogConfig.Id),
/// 			ResourceId:               pulumi.Any(exampleAwsVpc.Id),
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
/// resource "aws_route53_resolverquerylogconfigassociation" "example" {
///   resolver_query_log_config_id = exampleAwsRoute53ResolverQueryLogConfig.id
///   resource_id                  = exampleAwsVpc.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.ResolverQueryLogConfigAssociation;
/// import com.pulumi.aws.route53.ResolverQueryLogConfigAssociationArgs;
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
///         var example = new ResolverQueryLogConfigAssociation("example", ResolverQueryLogConfigAssociationArgs.builder()
///             .resolverQueryLogConfigId(exampleAwsRoute53ResolverQueryLogConfig.id())
///             .resourceId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ResolverQueryLogConfigAssociation
///     properties:
///       resolverQueryLogConfigId: ${exampleAwsRoute53ResolverQueryLogConfig.id}
///       resourceId: ${exampleAwsVpc.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver query logging configuration associations using the Route 53 Resolver query logging configuration association ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverQueryLogConfigAssociation:ResolverQueryLogConfigAssociation example rqlca-b320624fef3c4d70
/// ```
class ResolverQueryLogConfigAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  late final pulumi.Output<String> resolverQueryLogConfigId;
  /// The ID of a VPC that you want this query logging configuration to log queries for.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [ResolverQueryLogConfigAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverQueryLogConfigAssociation]. {@macro pulumi_route53_resolver_query_log_config_association_resolver_query_log_config_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverQueryLogConfigAssociation(
    String name, {
    ResolverQueryLogConfigAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverQueryLogConfigAssociation:ResolverQueryLogConfigAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    resolverQueryLogConfigId = registerOutput<String>('resolverQueryLogConfigId');
    resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [ResolverQueryLogConfigAssociation] resource's state with the given [name] and [id].
  static ResolverQueryLogConfigAssociation get(
    String name,
    pulumi.Input<String> id, {
    ResolverQueryLogConfigAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResolverQueryLogConfigAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResolverQueryLogConfigAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverQueryLogConfigAssociation:ResolverQueryLogConfigAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    resolverQueryLogConfigId = registerOutput<String>('resolverQueryLogConfigId');
    resourceId = registerOutput<String>('resourceId');
  }

  /// Creates a typed reference to an existing [ResolverQueryLogConfigAssociation] resource.
  ResolverQueryLogConfigAssociation.reference(String urn)
    : super(
        'aws:route53/resolverQueryLogConfigAssociation:ResolverQueryLogConfigAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    resolverQueryLogConfigId = registerOutput<String>('resolverQueryLogConfigId');
    resourceId = registerOutput<String>('resourceId');
  }
}
