import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_authorization_args.dart';
import 'aggregate_authorization_state.dart';

/// Manages an AWS Config Aggregate Authorization
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cfg.AggregateAuthorization("example", {
///     accountId: "123456789012",
///     authorizedAwsRegion: "eu-west-2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.AggregateAuthorization("example",
///     account_id="123456789012",
///     authorized_aws_region="eu-west-2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cfg.AggregateAuthorization("example", new()
///     {
///         AccountId = "123456789012",
///         AuthorizedAwsRegion = "eu-west-2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewAggregateAuthorization(ctx, "example", &cfg.AggregateAuthorizationArgs{
/// 			AccountId:           pulumi.String("123456789012"),
/// 			AuthorizedAwsRegion: pulumi.String("eu-west-2"),
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
/// resource "aws_cfg_aggregateauthorization" "example" {
///   account_id            = "123456789012"
///   authorized_aws_region = "eu-west-2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cfg.AggregateAuthorization;
/// import com.pulumi.aws.cfg.AggregateAuthorizationArgs;
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
///         var example = new AggregateAuthorization("example", AggregateAuthorizationArgs.builder()
///             .accountId("123456789012")
///             .authorizedAwsRegion("eu-west-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:AggregateAuthorization
///     properties:
///       accountId: '123456789012'
///       authorizedAwsRegion: eu-west-2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Config aggregate authorizations using `account_id:authorized_aws_region`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/aggregateAuthorization:AggregateAuthorization example 123456789012:us-east-1
/// ```
class AggregateAuthorization extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// The ARN of the authorization
  late final pulumi.Output<String> arn;
  /// The region authorized to collect aggregated data.
  late final pulumi.Output<String?> authorizedAwsRegion;
  /// The region authorized to collect aggregated data. Use `authorizedAwsRegion` instead.
  late final pulumi.Output<String?> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AggregateAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregateAuthorization]. {@macro pulumi_cfg_aggregate_authorization_aggregate_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregateAuthorization(
    String name, {
    AggregateAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/aggregateAuthorization:AggregateAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    authorizedAwsRegion = registerOutput<String?>('authorizedAwsRegion');
    region = registerOutput<String?>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AggregateAuthorization] resource's state with the given [name] and [id].
  static AggregateAuthorization get(
    String name,
    pulumi.Input<String> id, {
    AggregateAuthorizationState? state,
  }) {
    return AggregateAuthorization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AggregateAuthorization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/aggregateAuthorization:AggregateAuthorization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    authorizedAwsRegion = registerOutput<String?>('authorizedAwsRegion');
    region = registerOutput<String?>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
