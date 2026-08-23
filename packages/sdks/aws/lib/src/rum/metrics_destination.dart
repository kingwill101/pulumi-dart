import 'package:pulumi/pulumi.dart' as pulumi;
import 'metrics_destination_args.dart';
import 'metrics_destination_state.dart';

/// Provides a CloudWatch RUM Metrics Destination resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rum.MetricsDestination("example", {
///     appMonitorName: exampleAwsRumAppMonitor.name,
///     destination: "CloudWatch",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rum.MetricsDestination("example",
///     app_monitor_name=example_aws_rum_app_monitor["name"],
///     destination="CloudWatch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rum.MetricsDestination("example", new()
///     {
///         AppMonitorName = exampleAwsRumAppMonitor.Name,
///         Destination = "CloudWatch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rum"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rum.NewMetricsDestination(ctx, "example", &rum.MetricsDestinationArgs{
/// 			AppMonitorName: pulumi.Any(exampleAwsRumAppMonitor.Name),
/// 			Destination:    pulumi.String("CloudWatch"),
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
/// resource "aws_rum_metricsdestination" "example" {
///   app_monitor_name = exampleAwsRumAppMonitor.name
///   destination      = "CloudWatch"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rum.MetricsDestination;
/// import com.pulumi.aws.rum.MetricsDestinationArgs;
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
///         var example = new MetricsDestination("example", MetricsDestinationArgs.builder()
///             .appMonitorName(exampleAwsRumAppMonitor.name())
///             .destination("CloudWatch")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rum:MetricsDestination
///     properties:
///       appMonitorName: ${exampleAwsRumAppMonitor.name}
///       destination: CloudWatch
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch RUM Metrics Destination using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rum/metricsDestination:MetricsDestination example example
/// ```
class MetricsDestination extends pulumi.CustomResource {
  /// The name of the CloudWatch RUM app monitor that will send the metrics.
  late final pulumi.Output<String> appMonitorName;
  /// Defines the destination to send the metrics to. Valid values are `CloudWatch` and `Evidently`. If you specify `Evidently`, you must also specify the ARN of the CloudWatchEvidently experiment that is to be the destination and an IAM role that has permission to write to the experiment.
  late final pulumi.Output<String> destination;
  /// Use this parameter only if Destination is Evidently. This parameter specifies the ARN of the Evidently experiment that will receive the extended metrics.
  late final pulumi.Output<String?> destinationArn;
  /// This parameter is required if Destination is Evidently. If Destination is CloudWatch, do not use this parameter.
  late final pulumi.Output<String?> iamRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [MetricsDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetricsDestination]. {@macro pulumi_rum_metrics_destination_metrics_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetricsDestination(
    String name, {
    MetricsDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rum/metricsDestination:MetricsDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appMonitorName = registerOutput<String>('appMonitorName');
    destination = registerOutput<String>('destination');
    destinationArn = registerOutput<String?>('destinationArn');
    iamRoleArn = registerOutput<String?>('iamRoleArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [MetricsDestination] resource's state with the given [name] and [id].
  static MetricsDestination get(
    String name,
    pulumi.Input<String> id, {
    MetricsDestinationState? state,
  }) {
    return MetricsDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetricsDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rum/metricsDestination:MetricsDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appMonitorName = registerOutput<String>('appMonitorName');
    destination = registerOutput<String>('destination');
    destinationArn = registerOutput<String?>('destinationArn');
    iamRoleArn = registerOutput<String?>('iamRoleArn');
    region = registerOutput<String>('region');
  }
}
