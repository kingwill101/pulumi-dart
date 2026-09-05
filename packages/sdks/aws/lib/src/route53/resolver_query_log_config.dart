import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_query_log_config_args.dart';
import 'resolver_query_log_config_state.dart';

/// Provides a Route 53 Resolver query logging configuration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.ResolverQueryLogConfig("example", {
///     name: "example",
///     destinationArn: exampleAwsS3Bucket.arn,
///     tags: {
///         Environment: "Prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.ResolverQueryLogConfig("example",
///     name="example",
///     destination_arn=example_aws_s3_bucket["arn"],
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
///     var example = new Aws.Route53.ResolverQueryLogConfig("example", new()
///     {
///         Name = "example",
///         DestinationArn = exampleAwsS3Bucket.Arn,
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
/// 		_, err := route53.NewResolverQueryLogConfig(ctx, "example", &route53.ResolverQueryLogConfigArgs{
/// 			Name:           pulumi.String("example"),
/// 			DestinationArn: pulumi.Any(exampleAwsS3Bucket.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53_resolverquerylogconfig" "example" {
///   name            = "example"
///   destination_arn = exampleAwsS3Bucket.arn
///   tags = {
///     "Environment" = "Prod"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.ResolverQueryLogConfig;
/// import com.pulumi.aws.route53.ResolverQueryLogConfigArgs;
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
///         var example = new ResolverQueryLogConfig("example", ResolverQueryLogConfigArgs.builder()
///             .name("example")
///             .destinationArn(exampleAwsS3Bucket.arn())
///             .tags(Map.of("Environment", "Prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:ResolverQueryLogConfig
///     properties:
///       name: example
///       destinationArn: ${exampleAwsS3Bucket.arn}
///       tags:
///         Environment: Prod
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver query logging configurations using the Route 53 Resolver query logging configuration ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverQueryLogConfig:ResolverQueryLogConfig example rqlc-92edc3b1838248bf
/// ```
class ResolverQueryLogConfig extends pulumi.CustomResource {
  /// ARN of the Route 53 Resolver query logging configuration.
  late final pulumi.Output<String> arn;
  /// The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.
  late final pulumi.Output<String> destinationArn;
  /// The name of the Route 53 Resolver query logging configuration.
  late final pulumi.Output<String> name;
  /// The AWS account ID of the account that created the query logging configuration.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account.
  /// Sharing is configured through AWS Resource Access Manager (AWS RAM).
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  late final pulumi.Output<String> shareStatus;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ResolverQueryLogConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverQueryLogConfig]. {@macro pulumi_route53_resolver_query_log_config_resolver_query_log_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverQueryLogConfig(
    String name, {
    ResolverQueryLogConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverQueryLogConfig:ResolverQueryLogConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    destinationArn = registerOutput<String>('destinationArn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    shareStatus = registerOutput<String>('shareStatus');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ResolverQueryLogConfig] resource's state with the given [name] and [id].
  static ResolverQueryLogConfig get(
    String name,
    pulumi.Input<String> id, {
    ResolverQueryLogConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResolverQueryLogConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResolverQueryLogConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverQueryLogConfig:ResolverQueryLogConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationArn = registerOutput<String>('destinationArn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    shareStatus = registerOutput<String>('shareStatus');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ResolverQueryLogConfig] resource.
  ResolverQueryLogConfig.reference(String urn)
    : super(
        'aws:route53/resolverQueryLogConfig:ResolverQueryLogConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    destinationArn = registerOutput<String>('destinationArn');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    shareStatus = registerOutput<String>('shareStatus');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
