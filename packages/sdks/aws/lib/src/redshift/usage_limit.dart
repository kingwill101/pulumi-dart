import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_limit_args.dart';
import 'usage_limit_state.dart';

/// Creates a new Amazon Redshift Usage Limit.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.UsageLimit("example", {
///     clusterIdentifier: exampleAwsRedshiftCluster.id,
///     featureType: "concurrency-scaling",
///     limitType: "time",
///     amount: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.UsageLimit("example",
///     cluster_identifier=example_aws_redshift_cluster["id"],
///     feature_type="concurrency-scaling",
///     limit_type="time",
///     amount=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.UsageLimit("example", new()
///     {
///         ClusterIdentifier = exampleAwsRedshiftCluster.Id,
///         FeatureType = "concurrency-scaling",
///         LimitType = "time",
///         Amount = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewUsageLimit(ctx, "example", &redshift.UsageLimitArgs{
/// 			ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.Id),
/// 			FeatureType:       pulumi.String("concurrency-scaling"),
/// 			LimitType:         pulumi.String("time"),
/// 			Amount:            pulumi.Int(60),
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
/// import com.pulumi.aws.redshift.UsageLimit;
/// import com.pulumi.aws.redshift.UsageLimitArgs;
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
///         var example = new UsageLimit("example", UsageLimitArgs.builder()
///             .clusterIdentifier(exampleAwsRedshiftCluster.id())
///             .featureType("concurrency-scaling")
///             .limitType("time")
///             .amount(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:UsageLimit
///     properties:
///       clusterIdentifier: ${exampleAwsRedshiftCluster.id}
///       featureType: concurrency-scaling
///       limitType: time
///       amount: 60
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift usage limits using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/usageLimit:UsageLimit example example-id
/// ```
class UsageLimit extends pulumi.CustomResource {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  late final pulumi.Output<int> amount;

  /// Amazon Resource Name (ARN) of the Redshift Usage Limit.
  late final pulumi.Output<String> arn;

  /// The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  late final pulumi.Output<String?> breachAction;

  /// The identifier of the cluster that you want to limit usage.
  late final pulumi.Output<String> clusterIdentifier;

  /// The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  late final pulumi.Output<String> featureType;

  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  late final pulumi.Output<String> limitType;

  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  late final pulumi.Output<String?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [UsageLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsageLimit]. {@macro pulumi_redshift_usage_limit_usage_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsageLimit(
    String name, {
    UsageLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:redshift/usageLimit:UsageLimit',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amount = registerOutput<int>('amount');
    arn = registerOutput<String>('arn');
    breachAction = registerOutput<String?>('breachAction');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    featureType = registerOutput<String>('featureType');
    limitType = registerOutput<String>('limitType');
    period = registerOutput<String?>('period');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [UsageLimit] resource's state with the given [name] and [id].
  static UsageLimit get(
    String name,
    pulumi.Input<String> id, {
    UsageLimitState? state,
  }) {
    return UsageLimit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UsageLimit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:redshift/usageLimit:UsageLimit',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amount = registerOutput<int>('amount');
    arn = registerOutput<String>('arn');
    breachAction = registerOutput<String?>('breachAction');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    featureType = registerOutput<String>('featureType');
    limitType = registerOutput<String>('limitType');
    period = registerOutput<String?>('period');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
