import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_network_performance_metric_subscription_args.dart';
import 'vpc_network_performance_metric_subscription_state.dart';

/// Provides a resource to manage an Infrastructure Performance subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcNetworkPerformanceMetricSubscription("example", {
///     source: "us-east-1",
///     destination: "us-west-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcNetworkPerformanceMetricSubscription("example",
///     source="us-east-1",
///     destination="us-west-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcNetworkPerformanceMetricSubscription("example", new()
///     {
///         Source = "us-east-1",
///         Destination = "us-west-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewVpcNetworkPerformanceMetricSubscription(ctx, "example", &ec2.VpcNetworkPerformanceMetricSubscriptionArgs{
/// 			Source:      pulumi.String("us-east-1"),
/// 			Destination: pulumi.String("us-west-1"),
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
/// import com.pulumi.aws.ec2.VpcNetworkPerformanceMetricSubscription;
/// import com.pulumi.aws.ec2.VpcNetworkPerformanceMetricSubscriptionArgs;
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
///         var example = new VpcNetworkPerformanceMetricSubscription("example", VpcNetworkPerformanceMetricSubscriptionArgs.builder()
///             .source("us-east-1")
///             .destination("us-west-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcNetworkPerformanceMetricSubscription
///     properties:
///       source: us-east-1
///       destination: us-west-1
/// ```
class VpcNetworkPerformanceMetricSubscription extends pulumi.CustomResource {
  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  late final pulumi.Output<String> destination;

  /// The metric used for the enabled subscription. Valid values: `aggregate-latency`. Default: `aggregate-latency`.
  late final pulumi.Output<String?> metric;

  /// The data aggregation time for the subscription.
  late final pulumi.Output<String> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  late final pulumi.Output<String> source;

  /// The statistic used for the enabled subscription. Valid values: `p50`. Default: `p50`.
  late final pulumi.Output<String?> statistic;

  /// Creates a new [VpcNetworkPerformanceMetricSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcNetworkPerformanceMetricSubscription]. {@macro pulumi_ec2_vpc_network_performance_metric_subscription_vpc_network_performance_metric_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcNetworkPerformanceMetricSubscription(
    String name, {
    VpcNetworkPerformanceMetricSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcNetworkPerformanceMetricSubscription:VpcNetworkPerformanceMetricSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destination = registerOutput<String>('destination');
    metric = registerOutput<String?>('metric');
    period = registerOutput<String>('period');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    statistic = registerOutput<String?>('statistic');
  }

  /// Gets an existing [VpcNetworkPerformanceMetricSubscription] resource's state with the given [name] and [id].
  static VpcNetworkPerformanceMetricSubscription get(
    String name,
    pulumi.Input<String> id, {
    VpcNetworkPerformanceMetricSubscriptionState? state,
  }) {
    return VpcNetworkPerformanceMetricSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcNetworkPerformanceMetricSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcNetworkPerformanceMetricSubscription:VpcNetworkPerformanceMetricSubscription',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destination = registerOutput<String>('destination');
    metric = registerOutput<String?>('metric');
    period = registerOutput<String>('period');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    statistic = registerOutput<String?>('statistic');
  }
}
