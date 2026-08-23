import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_subscription_args.dart';
import 'monitoring_subscription_monitoring_subscription.dart';
import 'monitoring_subscription_state.dart';

/// Provides a CloudFront real-time log configuration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.MonitoringSubscription("example", {
///     distributionId: exampleAwsCloudfrontDistribution.id,
///     monitoringSubscription: {
///         realtimeMetricsSubscriptionConfig: {
///             realtimeMetricsSubscriptionStatus: "Enabled",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.MonitoringSubscription("example",
///     distribution_id=example_aws_cloudfront_distribution["id"],
///     monitoring_subscription={
///         "realtime_metrics_subscription_config": {
///             "realtime_metrics_subscription_status": "Enabled",
///         },
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
///     var example = new Aws.CloudFront.MonitoringSubscription("example", new()
///     {
///         DistributionId = exampleAwsCloudfrontDistribution.Id,
///         MonitoringSubscriptionDetails = new Aws.CloudFront.Inputs.MonitoringSubscriptionMonitoringSubscriptionArgs
///         {
///             RealtimeMetricsSubscriptionConfig = new Aws.CloudFront.Inputs.MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfigArgs
///             {
///                 RealtimeMetricsSubscriptionStatus = "Enabled",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewMonitoringSubscription(ctx, "example", &cloudfront.MonitoringSubscriptionArgs{
/// 			DistributionId: pulumi.Any(exampleAwsCloudfrontDistribution.Id),
/// 			MonitoringSubscription: &cloudfront.MonitoringSubscriptionMonitoringSubscriptionArgs{
/// 				RealtimeMetricsSubscriptionConfig: &cloudfront.MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfigArgs{
/// 					RealtimeMetricsSubscriptionStatus: pulumi.String("Enabled"),
/// 				},
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
/// resource "aws_cloudfront_monitoringsubscription" "example" {
///   distribution_id = exampleAwsCloudfrontDistribution.id
///   monitoring_subscription = {
///     realtime_metrics_subscription_config = {
///       realtime_metrics_subscription_status = "Enabled"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.MonitoringSubscription;
/// import com.pulumi.aws.cloudfront.MonitoringSubscriptionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MonitoringSubscriptionMonitoringSubscriptionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfigArgs;
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
///         var example = new MonitoringSubscription("example", MonitoringSubscriptionArgs.builder()
///             .distributionId(exampleAwsCloudfrontDistribution.id())
///             .monitoringSubscription(MonitoringSubscriptionMonitoringSubscriptionArgs.builder()
///                 .realtimeMetricsSubscriptionConfig(MonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfigArgs.builder()
///                     .realtimeMetricsSubscriptionStatus("Enabled")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:MonitoringSubscription
///     properties:
///       distributionId: ${exampleAwsCloudfrontDistribution.id}
///       monitoringSubscription:
///         realtimeMetricsSubscriptionConfig:
///           realtimeMetricsSubscriptionStatus: Enabled
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront monitoring subscription using the id. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/monitoringSubscription:MonitoringSubscription example E3QYSUHO4VYRGB
/// ```
class MonitoringSubscription extends pulumi.CustomResource {
  /// The ID of the distribution that you are enabling metrics for.
  late final pulumi.Output<String> distributionId;
  /// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
  late final pulumi.Output<MonitoringSubscriptionMonitoringSubscription> monitoringSubscription;

  /// Creates a new [MonitoringSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoringSubscription]. {@macro pulumi_cloudfront_monitoring_subscription_monitoring_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoringSubscription(
    String name, {
    MonitoringSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/monitoringSubscription:MonitoringSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    distributionId = registerOutput<String>('distributionId');
    monitoringSubscription = registerOutput<MonitoringSubscriptionMonitoringSubscription>('monitoringSubscription', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitoringSubscriptionMonitoringSubscription.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [MonitoringSubscription] resource's state with the given [name] and [id].
  static MonitoringSubscription get(
    String name,
    pulumi.Input<String> id, {
    MonitoringSubscriptionState? state,
  }) {
    return MonitoringSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitoringSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/monitoringSubscription:MonitoringSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    distributionId = registerOutput<String>('distributionId');
    monitoringSubscription = registerOutput<MonitoringSubscriptionMonitoringSubscription>('monitoringSubscription', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MonitoringSubscriptionMonitoringSubscription.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
